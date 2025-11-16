package com.firstone.pm.patientservice.service;

import com.firstone.pm.patientservice.dto.PatientResponseDTO;
import com.firstone.pm.patientservice.mapper.PatientMapper;
import com.firstone.pm.patientservice.model.Patient;
import com.firstone.pm.patientservice.repository.PatientRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PatientService {

    private final PatientRepository patientRepository;

    public PatientService(PatientRepository patientRepository) {
        this.patientRepository = patientRepository;
    }

    public List<PatientResponseDTO> getPatients() {
        List<Patient> patients = patientRepository.findAll();
        List<PatientResponseDTO> patientResponseDTOs = patients.stream()
                .map(PatientMapper::toDTO)
                .toList();
        return patientResponseDTOs;
    }

}
