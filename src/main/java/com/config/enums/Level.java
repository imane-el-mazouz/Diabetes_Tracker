package com.config.enums;

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