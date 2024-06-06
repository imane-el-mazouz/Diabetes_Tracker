package com.config.service;

import com.config.enums.Level;
import com.config.model.Medicament;
import com.config.repository.MedicamentRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Collections;
import java.util.List;

@Service
public class MedicamentService {

    @Autowired
    private MedicamentRepo medicamentRepo;

    public List<Medicament> getMedicamentsByLevel(Level level) {
        List<Medicament> medicaments = medicamentRepo.findByLevel(level);
        return medicaments != null ? medicaments : Collections.emptyList();
    }

    public List<Medicament> getDefaultMedicamentsByLevel(Level level) {
        switch (level) {
            case NORMAL:
                return List.of(
                        new Medicament(null, "Vitamin C", "Support immune function.", Level.NORMAL),
                        new Medicament(null, "Multivitamin", "General health maintenance.", Level.NORMAL)
                );
            case HYPOGLYCEMIA:
                return List.of(
                        new Medicament(null, "Glucose Tablets", "Immediate blood sugar raise.", Level.HYPOGLYCEMIA),
                        new Medicament(null, "Orange Juice", "Natural sugar source.", Level.HYPOGLYCEMIA)
                );
            case HYPERGLYCEMIA:
                return List.of(
                        new Medicament(null, "Insulin", "Lower blood sugar levels.", Level.HYPERGLYCEMIA),
                        new Medicament(null, "Metformin", "Control high blood sugar.", Level.HYPERGLYCEMIA)
                );
            default:
                throw new IllegalArgumentException("Unsupported level: " + level);
        }
    }
}
