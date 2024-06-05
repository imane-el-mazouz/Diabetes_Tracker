package com.config.service;


import com.config.model.Conseil;
import com.config.enums.Level;
import com.config.repository.ConseilRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class ConseilService {

    @Autowired
    private ConseilRepo conseilRepo;

    @Transactional
    public Conseil getConseilByLevel(Level level) {
        return conseilRepo.findByLevel(level);
    }

    @Transactional
    public void saveConseil(Conseil conseil) {
        conseilRepo.save(conseil);
    }

    public java.lang.Object getAllConseils() {
        return null;
    }

    public void deleteConseilById(java.lang.Long id) {
    }
}
