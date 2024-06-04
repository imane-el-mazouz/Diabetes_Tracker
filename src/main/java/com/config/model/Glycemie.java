package com.config.model;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Table(name = "glycemie")
public class Glycemie {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "date")
    private LocalDateTime date;

    @Enumerated(EnumType.STRING)
    @Column(name = "level")
    private Level level;

    public enum Level {
        NORMAL(70, 140),
        HYPOGLYCEMIA(Double.NEGATIVE_INFINITY, 70),
        HYPERGLYCEMIA(140, Double.POSITIVE_INFINITY);

        private final double minLevel;
        private final double maxLevel;

        Level(double minLevel, double maxLevel) {
            this.minLevel = minLevel;
            this.maxLevel = maxLevel;
        }

        public double getMinLevel() {
            return minLevel;
        }

        public double getMaxLevel() {
            return maxLevel;
        }

        public static Level fromValue(double value) {
            for (Level level : Level.values()) {
                if (value >= level.minLevel && value < level.maxLevel) {
                    return level;
                }
            }
            throw new IllegalArgumentException("Invalid glycemic level: " + value);
        }
    }

    public Glycemie() {
    }

    public Glycemie(Long id, LocalDateTime date, double levelValue) {
        this.id = id;
        this.date = date;
        this.level = Level.fromValue(levelValue);
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

    public void setLevel(double levelValue) {
        this.level = Level.fromValue(levelValue);
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getId() {
        return id;
    }
}
