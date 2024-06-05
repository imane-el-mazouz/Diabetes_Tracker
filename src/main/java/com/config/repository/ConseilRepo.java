package com.config.repository;

import com.config.enums.Level;
import com.config.model.Conseil;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ConseilRepo extends CrudRepository<Conseil, Long> {
    Conseil findByLevel(Level level);
}
