package com.config.model;

import com.config.enums.Level;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Table(name = "glycemie")
public class Glycemie {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private LocalDateTime date;

    @Enumerated(EnumType.STRING)
    private Level level;

    public Glycemie() {
    }

    public Glycemie(LocalDateTime date, Level level) {
        this.date = date;
        this.level = level;
    }

    public Glycemie(Long id, LocalDateTime date, Level level) {
        this.id = id;
        this.date = date;
        this.level = level;
    }

    public LocalDateTime getDate() {
        return date;
    }

    public void setDate(LocalDateTime date) {
        this.date = date;
    }

    public Level getLevel() {
        return level;
    }

    public void setLevel(Level level) {
        this.level = level;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getId() {
        return id;
    }
}
