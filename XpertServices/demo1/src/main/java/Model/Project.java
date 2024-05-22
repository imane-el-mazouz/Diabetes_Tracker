package Model;

import java.sql.Date;

public class Project {
    private int id;
    private String nom;
    private String description;
    private Date debut;
    private Date fin;
    private int budget;

    public Project(int id, String nom, String description, Date debut, Date fin, int budget) {
        this.id = id;
        this.nom = nom;
        this.description = description;
        this.debut = debut;
        this.fin = fin;
        this.budget = budget;
    }
    public Project(String nom, String description, Date debut, Date fin, int budget) {
        this.nom = nom;
        this.description = description;
        this.debut = debut;
        this.fin = fin;
        this.budget = budget;
    }

    public int getId() {
        return this.id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Project() {
    }

    public String getNom() {
        return this.nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getDescription() {
        return this.description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Date getDebut() {
        return this.debut;
    }

    public void setDebut(Date debut) {
        this.debut = debut;
    }

    public Date getFin() {
        return this.fin;
    }

    public void setFin(Date fin) {
        this.fin = fin;
    }

    public int getBudget() {
        return this.budget;
    }

    public void setBudget(int budget) {
        this.budget = budget;
    }
}
