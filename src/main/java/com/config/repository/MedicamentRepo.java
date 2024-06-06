package com.config.repository;

import com.config.enums.Level;
import com.config.model.Medicament;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MedicamentRepo extends CrudRepository<Medicament, Long> {
    List<Medicament> findByLevel(Level level);
}
