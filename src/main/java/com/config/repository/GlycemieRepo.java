package com.config.repository;

import com.config.model.Glycemie;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.time.LocalDateTime;
import java.util.List;

@Repository
public interface GlycemieRepo extends CrudRepository<Glycemie, Long> {
    @Query("SELECT g FROM Glycemie g WHERE g.date >= :startDate AND g.date < :endDate")
    List<Glycemie> findHourlyGlycemiaData(@Param("startDate") LocalDateTime startDate, @Param("endDate") LocalDateTime endDate);
}
