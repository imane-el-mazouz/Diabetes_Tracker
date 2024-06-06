package com.config.repository;

import com.config.model.Glycemie;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.time.LocalDateTime;
import java.util.List;

@Repository
public interface GlycemieRepo extends CrudRepository<Glycemie, Long> {
    List<Glycemie> findHourlyGlycemiaData(LocalDateTime lastHour);
}
