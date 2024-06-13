
package com.config.repository.impl;

import com.config.model.Glycemie;
import com.config.repository.GlycemieRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;

@Repository
public class GlycemieRepoImpl {

    @PersistenceContext
    private EntityManager entityManager;

 @Autowired
 private GlycemieRepo glycemieRepo;

    public <S extends Glycemie> S save(S entity) {
        glycemieRepo.save(entity);
        return entity;
    }


    public <S extends Glycemie> Iterable<S> saveAll(Iterable<S> entities) {
        for (S entity : entities) {
            entityManager.persist(entity);
        }
        return entities;
    }


    public Optional<Glycemie> findById(Long aLong) {
        return Optional.ofNullable(entityManager.find(Glycemie.class, aLong));
    }


    public boolean existsById(Long aLong) {
        return entityManager.find(Glycemie.class, aLong) != null;
    }


    public Iterable<Glycemie> findAll() {
        return entityManager.createQuery("FROM Glycemie", Glycemie.class).getResultList();
    }

    public Iterable<Glycemie> findAllById(Iterable<Long> longs) {
        return null;
    }

    public long count() {
        return entityManager.createQuery("SELECT COUNT(g) FROM Glycemie g", Long.class).getSingleResult();
    }

    public void deleteById(Long aLong) {
        Glycemie glycemie = entityManager.find(Glycemie.class, aLong);
        if (glycemie != null) {
            entityManager.remove(glycemie);
        }
    }

    public void delete(Glycemie entity) {
        entityManager.remove(entity);
    }

    public void deleteAllById(Iterable<? extends Long> longs) {
        for (Long id : longs) {
            deleteById(id);
        }
    }


    public void deleteAll(Iterable<? extends Glycemie> entities) {
        for (Glycemie entity : entities) {
            delete(entity);
        }
    }


    public void deleteAll() {

    }



    public List<Glycemie> findHourlyGlycemiaData(LocalDateTime startDate, LocalDateTime endDate) {
        return null;
//        return entityManager.findHourlyGlycemiaData();

    }


    public void findAllByDate(LocalDateTime date) {
        glycemieRepo.findAllByDate(date) ;
        return  ;
    }




}



