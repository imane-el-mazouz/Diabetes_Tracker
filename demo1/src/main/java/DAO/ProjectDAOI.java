package DAO;

import Connection.DatabaseManager;
import Model.Project;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProjectDAOI implements ProjectDAO {
    @Override
    public List<Project> getAllProjects() throws SQLException {
        List<Project> projects = new ArrayList<>();
        String sql = "SELECT * FROM projects";

        try (Connection connection = DatabaseManager.getConnection();
             PreparedStatement statement = connection.prepareStatement(sql);
             ResultSet resultSet = statement.executeQuery()) {

            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String nom = resultSet.getString("nom");
                String description = resultSet.getString("description");
                java.sql.Date debut = resultSet.getDate("debut");
                java.sql.Date fin = resultSet.getDate("fin");
                int budget = resultSet.getInt("budget");

                Project project = new Project(id, nom, description, debut, fin, budget);
                projects.add(project);
            }
        }
        return projects;
    }

    @Override
    public void addProject(Project project) throws SQLException {
        String sql = "INSERT INTO projects (nom, description, debut, fin, budget) VALUES (?, ?, ?, ?, ?)";

        try (Connection connection = DatabaseManager.getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, project.getNom());
            statement.setString(2, project.getDescription());
            statement.setDate(3, project.getDebut());
            statement.setDate(4, project.getFin());
            statement.setInt(5, project.getBudget());
            statement.executeUpdate();
        }
    }
}
