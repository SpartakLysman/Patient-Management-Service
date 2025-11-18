package com.firstone.pm.patientservice.service;

import com.firstone.pm.patientservice.dto.PatientRequestDTO;
import com.firstone.pm.patientservice.dto.PatientResponseDTO;
import com.firstone.pm.patientservice.exception.EmailAlreadyExistsException;
import com.firstone.pm.patientservice.exception.PatientNotFoundException;
import com.firstone.pm.patientservice.grpc.BillingServiceGrpcClient;
import com.firstone.pm.patientservice.mapper.PatientMapper;
import com.firstone.pm.patientservice.model.Gender;
import com.firstone.pm.patientservice.model.Patient;
import com.firstone.pm.patientservice.repository.PatientRepository;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.List;
import java.util.UUID;

@Service
public class PatientService {

    private final PatientRepository patientRepository;
    private final BillingServiceGrpcClient billingServiceGrpcClient;

    public PatientService(PatientRepository patientRepository, BillingServiceGrpcClient billingServiceGrpcClient) {
        this.patientRepository = patientRepository;
        this.billingServiceGrpcClient = billingServiceGrpcClient;
    }

    public List<PatientResponseDTO> getPatients() {
        List<Patient> patients = patientRepository.findAll();
        List<PatientResponseDTO> patientResponseDTOs = patients.stream()
                .map(PatientMapper::toDTO)
                .toList();
        return patientResponseDTOs;
    }

    public PatientResponseDTO createPatient(PatientRequestDTO patientRequestDTO) {
        if (patientRepository.existsByEmail(patientRequestDTO.getEmail())) {
            throw new EmailAlreadyExistsException(
                    "Email: " + patientRequestDTO.getEmail() + " is already exists"
            );
        }
        Patient newPatient = patientRepository.save(PatientMapper.toModel(patientRequestDTO));

        billingServiceGrpcClient.createBillingAccount(
                newPatient.getId().toString(),
                newPatient.getFirstName(),
                newPatient.getLastName(),
                newPatient.getEmail()
                );

        return PatientMapper.toDTO(newPatient);
    }

    public PatientResponseDTO updatePatient(UUID id,
                                            PatientRequestDTO patientRequestDTO) {
        Patient patient = patientRepository.findById(id)
                .orElseThrow(()-> new PatientNotFoundException("Patient with ID: " + id + " not found")
                );
        if (patientRepository.existsByEmailAndIdNot(patientRequestDTO.getEmail(), id)) {
            throw new EmailAlreadyExistsException(
                    "Email: " + patientRequestDTO.getEmail() + " is already exists"
            );
        }
        patient.setFirstName(patientRequestDTO.getFirstName());
        patient.setLastName(patientRequestDTO.getLastName());
        patient.setGender(Gender.valueOf(patientRequestDTO.getGender().toUpperCase()));
        patient.setEmail(patientRequestDTO.getEmail());
        patient.setAddress(patientRequestDTO.getAddress());
        patient.setDateOfBirth(LocalDate.parse(patientRequestDTO.getDateOfBirth()));

        Patient updatedPatient = patientRepository.save(patient);
        return PatientMapper.toDTO(updatedPatient);
    }

    public void deletePatient(UUID id) {
        patientRepository.deleteById(id);
    }
}
