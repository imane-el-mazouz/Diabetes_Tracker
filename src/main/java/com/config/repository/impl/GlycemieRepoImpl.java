package com.config.repository.impl;

import com.config.model.Glycemie;
import com.config.repository.GlycemieRepo;
import org.springframework.stereotype.Component;

import java.util.Optional;

@Component
public class GlycemieRepoImpl implements GlycemieRepo {
    @Override
    public <S extends Glycemie> S save(S entity) {
        return null;
    }

    @Override
    public <S extends Glycemie> Iterable<S> saveAll(Iterable<S> entities) {
        return null;
    }

    @Override
    public Optional<Glycemie> findById(Long aLong) {
        return Optional.empty();
    }

    @Override
    public boolean existsById(Long aLong) {
        return false;
    }

    @Override
    public Iterable<Glycemie> findAll() {
        return null;
    }

    @Override
    public Iterable<Glycemie> findAllById(Iterable<Long> longs) {
        return null;
    }

    @Override
    public long count() {
        return 0;
    }

    @Override
    public void deleteById(Long aLong) {

    }

    @Override
    public void delete(Glycemie entity) {

    }

    @Override
    public void deleteAllById(Iterable<? extends Long> longs) {

    }

    @Override
    public void deleteAll(Iterable<? extends Glycemie> entities) {

    }

    @Override
    public void deleteAll() {

    }
}
