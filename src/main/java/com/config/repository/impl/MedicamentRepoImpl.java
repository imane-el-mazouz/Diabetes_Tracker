package com.config.repository.impl;

import com.config.enums.Level;
import com.config.model.Medicament;
import com.config.repository.MedicamentRepo;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;
import java.util.Optional;


@Repository
public class MedicamentRepoImpl implements MedicamentRepo {

    @PersistenceContext
    private EntityManager entityManager;

    @Override
    public <S extends Medicament> S save(S entity) {
        entityManager.persist(entity);
        return entity;
    }

    @Override
    public <S extends Medicament> Iterable<S> saveAll(Iterable<S> entities) {
        for (S entity : entities) {
            entityManager.persist(entity);
        }
        return entities;
    }

    @Override
    public Optional<Medicament> findById(Long aLong) {
        return Optional.ofNullable(entityManager.find(Medicament.class, aLong));
    }

    @Override
    public boolean existsById(Long aLong) {
        return entityManager.find(Medicament.class, aLong) != null;
    }

    @Override
    public Iterable<Medicament> findAll() {
        return entityManager.createQuery("FROM Medicament", Medicament.class).getResultList();
    }

    @Override
    public Iterable<Medicament> findAllById(Iterable<Long> longs) {
        return null;
    }

    @Override
    public long count() {
        return entityManager.createQuery("SELECT COUNT(m) FROM Medicament m", Long.class).getSingleResult();
    }

    @Override
    public void deleteById(Long aLong) {
        Medicament medicament = entityManager.find(Medicament.class, aLong);
        if (medicament != null) {
            entityManager.remove(medicament);
        }
    }

    @Override
    public void delete(Medicament entity) {
        entityManager.remove(entity);
    }

    @Override
    public void deleteAllById(Iterable<? extends Long> longs) {
        for (Long id : longs) {
            deleteById(id);
        }
    }

    @Override
    public void deleteAll(Iterable<? extends Medicament> entities) {
        for (Medicament entity : entities) {
            delete(entity);
        }
    }

    @Override
    public void deleteAll() {
        entityManager.createQuery("DELETE FROM Medicament").executeUpdate();
    }

    @Override
    public List<Medicament> findByLevel(Level level) {
        return null;
    }
}
