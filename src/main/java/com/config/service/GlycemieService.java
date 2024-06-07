package com.config.service;

import com.config.enums.Level;
import com.config.model.Conseil;
import com.config.model.Glycemie;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.config.repository.GlycemieRepo;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;
import java.util.List;

@Service
public class GlycemieService {

    @Autowired
    private GlycemieRepo glycemieRepo;

    @Transactional
    public List<Glycemie> getAllGlycemies() {
        return (List<Glycemie>) glycemieRepo.findAll();
    }

    @Transactional
    public void saveGlycemie(Glycemie glycemie) {
        glycemieRepo.save(glycemie);
    }

    @Transactional
    public void deleteGlycemieById(Long id) {
        glycemieRepo.deleteById(id);
    }

    public Conseil getConseilByLevel(Level level) {
        return null;
    }


    @Transactional
    public List<Glycemie> findHourlyGlycemiaData() {
        LocalDateTime lastHour = LocalDateTime.now().minusHours(1);
        return (List<Glycemie>) glycemieRepo.findAll();
    }
}
