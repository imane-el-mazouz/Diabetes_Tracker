
package com.config.repository.impl;

import com.config.model.Glycemie;
import com.config.repository.GlycemieRepo;
import org.springframework.stereotype.Repository;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;

@Repository
public class GlycemieRepoImpl implements GlycemieRepo {

    @PersistenceContext
    private EntityManager entityManager;

    @Override
    public <S extends Glycemie> S save(S entity) {
        entityManager.persist(entity);
        return entity;
    }

    @Override
    public <S extends Glycemie> Iterable<S> saveAll(Iterable<S> entities) {
        for (S entity : entities) {
            entityManager.persist(entity);
        }
        return entities;
    }

    @Override
    public Optional<Glycemie> findById(Long aLong) {
        return Optional.ofNullable(entityManager.find(Glycemie.class, aLong));
    }

    @Override
    public boolean existsById(Long aLong) {
        return entityManager.find(Glycemie.class, aLong) != null;
    }

    @Override
    public Iterable<Glycemie> findAll() {
        return entityManager.createQuery("FROM Glycemie", Glycemie.class).getResultList();
    }

    @Override
    public Iterable<Glycemie> findAllById(Iterable<Long> longs) {
        return null;
    }

    @Override
    public long count() {
        return entityManager.createQuery("SELECT COUNT(g) FROM Glycemie g", Long.class).getSingleResult();
    }

    @Override
    public void deleteById(Long aLong) {
        Glycemie glycemie = entityManager.find(Glycemie.class, aLong);
        if (glycemie != null) {
            entityManager.remove(glycemie);
        }
    }

    @Override
    public void delete(Glycemie entity) {
        entityManager.remove(entity);
    }

    @Override
    public void deleteAllById(Iterable<? extends Long> longs) {
        for (Long id : longs) {
            deleteById(id);
        }
    }

    @Override
    public void deleteAll(Iterable<? extends Glycemie> entities) {
        for (Glycemie entity : entities) {
            delete(entity);
        }
    }

    @Override
    public void deleteAll() {

    }


    @Override
    public List<Glycemie> findHourlyGlycemiaData(LocalDateTime startDate, LocalDateTime endDate) {
        return null;
//        return entityManager.findHourlyGlycemiaData();

    }

    @Override
    public List<Glycemie> findAllByDate(LocalDateTime date) {
        return null;
    }
}
