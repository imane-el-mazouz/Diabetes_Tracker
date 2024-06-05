package com.config.repository.impl;

import com.config.enums.Level;
import com.config.model.Conseil;
import com.config.repository.ConseilRepo;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import java.util.Optional;

@Repository
public class ConseilRepoImpl implements ConseilRepo {

    @PersistenceContext
    private EntityManager entityManager;

    @Override
    public <S extends Conseil> S save(S entity) {
        entityManager.persist(entity);
        return entity;
    }

    @Override
    public <S extends Conseil> Iterable<S> saveAll(Iterable<S> entities) {
        for (S entity : entities) {
            entityManager.persist(entity);
        }
        return entities;
    }

    @Override
    public Optional<Conseil> findById(Long aLong) {
        return Optional.ofNullable(entityManager.find(Conseil.class, aLong));
    }

    @Override
    public boolean existsById(Long aLong) {
        return entityManager.find(Conseil.class, aLong) != null;
    }

    @Override
    public Iterable<Conseil> findAll() {
        return entityManager.createQuery("FROM Conseil", Conseil.class).getResultList();
    }

    @Override
    public Iterable<Conseil> findAllById(Iterable<Long> longs) {
        return null;
    }

    @Override
    public long count() {
        return entityManager.createQuery("SELECT COUNT(c) FROM Conseil c", Long.class).getSingleResult();
    }

    @Override
    public void deleteById(Long aLong) {
        Conseil conseil = entityManager.find(Conseil.class, aLong);
        if (conseil != null) {
            entityManager.remove(conseil);
        }
    }

    @Override
    public void delete(Conseil entity) {
        entityManager.remove(entity);
    }

    @Override
    public void deleteAllById(Iterable<? extends Long> longs) {
        for (Long id : longs) {
            deleteById(id);
        }
    }

    @Override
    public void deleteAll(Iterable<? extends Conseil> entities) {
        for (Conseil entity : entities) {
            delete(entity);
        }
    }

    @Override
    public void deleteAll() {

    }

    @Override
    public Conseil findByLevel(Level level) {
        TypedQuery<Conseil> query = entityManager.createQuery("FROM Conseil WHERE level = :level", Conseil.class);
        query.setParameter("level", level);
        return query.getSingleResult();
    }
}
