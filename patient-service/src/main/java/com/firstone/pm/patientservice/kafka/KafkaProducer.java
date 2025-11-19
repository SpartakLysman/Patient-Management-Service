package com.firstone.pm.patientservice.kafka;

import com.firstone.pm.patientservice.model.Patient;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.kafka.core.KafkaTemplate;
import org.springframework.stereotype.Service;
import patient.events.PatientEvent;

@Service
public class KafkaProducer {

    private static final Logger log = LoggerFactory.getLogger(KafkaProducer.class);
    private final KafkaTemplate<String, byte[]> kafkaTemplate;

    public KafkaProducer(KafkaTemplate<String, byte[]> kafkaTemplate) {
        this.kafkaTemplate = kafkaTemplate;
    }

    public void sendEvent(Patient patient) {
        PatientEvent event = PatientEvent.newBuilder()
                .setPatientId(patient.getId().toString())
                .setFirstName(patient.getFirstName())
                .setLastName(patient.getLastName())
                .setEmail(patient.getEmail())
                .setEventType("PATIENT_CREATED")
                .build();

        try {
            kafkaTemplate.send("patient", event.toByteArray());
            log.info("PatientCreated event sent for patientId={}", patient.getId());
        } catch (Exception e) {
            // log only simple fields to avoid Jackson self-reference issues
            log.error("Error sending PatientCreated event for patientId={}, firstName={}, lastName={}, email={}",
                    patient.getId(), patient.getFirstName(), patient.getLastName(), patient.getEmail(), e);
        }
    }



}


