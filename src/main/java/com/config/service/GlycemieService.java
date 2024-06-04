package com.config.service;

import com.config.model.Glycemie;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.config.repository.GlycemieRepo;
import java.util.List;

@Service
public class GlycemieService {

    private final GlycemieRepo glycemieRepo;

    @Autowired
    public GlycemieService(GlycemieRepo glycemieRepo) {
        this.glycemieRepo = glycemieRepo;
    }

    public List<Glycemie> getAllGlycemies() {
        return (List<Glycemie>) glycemieRepo.findAll();
    }

    public void saveGlycemie(Glycemie glycemie) {
        glycemieRepo.save(glycemie);
    }

    public void deleteGlycemieById(Long id) {
        glycemieRepo.deleteById(id);
    }
}
