package com.config.service;

import com.config.model.Glycemie;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.config.repository.GlycemieRepo;
import org.springframework.transaction.annotation.Transactional;

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
}
