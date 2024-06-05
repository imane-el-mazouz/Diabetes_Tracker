package com.config.repository;

import com.config.model.Glycemie;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface GlycemieRepo extends CrudRepository<Glycemie, Long> {
}
