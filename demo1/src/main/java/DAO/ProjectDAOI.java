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
            System.out.println(resultSet);
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String nom = resultSet.getString("nom");
                String description = resultSet.getString("description");
                java.sql.Date debut = resultSet.getDate("debut");
                java.sql.Date fin = resultSet.getDate("fin");
                int budget = resultSet.getInt("budget");

                Project project = new Project(id, nom, description, debut, fin, budget);
                projects.add(project);
                System.out.println(id);
                System.out.println(project.getNom());
            }
        }
        System.out.println(projects.get(0).getNom());
        return projects;
    }

    @Override
    public void addProject(Project project) throws SQLException {
        String sql = "INSERT INTO projects (id ,nom, description, debut, fin, budget) VALUES (?, ?, ?, ?, ? , ?)";

        try (Connection connection = DatabaseManager.getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setInt(1, project.getId());
            statement.setString(2, project.getNom());
            statement.setString(3, project.getDescription());
            statement.setDate(4, project.getDebut());
            statement.setDate(5, project.getFin());
            statement.setInt(6, project.getBudget());
            statement.executeUpdate();
        }
    }
    @Override
    public void deleteProject(int id) throws SQLException {
        String sql = "DELETE FROM projects WHERE id = ?";

        try (Connection connection = DatabaseManager.getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setInt(1, id);
            statement.executeUpdate();
        }
    }

    @Override
    public Project getProjectById(int id) throws SQLException {
        String sql = "SELECT * FROM projects WHERE id = ?";
        Project project = null;

        try (Connection connection = DatabaseManager.getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setInt(1, id);
            try (ResultSet resultSet = statement.executeQuery()) {
                if (resultSet.next()) {
                    String nom = resultSet.getString("nom");
                    String description = resultSet.getString("description");
                    java.sql.Date debut = resultSet.getDate("debut");
                    java.sql.Date fin = resultSet.getDate("fin");
                    int budget = resultSet.getInt("budget");

                    project = new Project(id, nom, description, debut, fin, budget);
                }
            }
        }
        return project;
    }

    @Override
    public void updateProject(Project project) throws SQLException {
        String sql = "UPDATE projects SET nom = ?, description = ?, debut = ?, fin = ?, budget = ? WHERE id = ?";

        try (Connection connection = DatabaseManager.getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, project.getNom());
            statement.setString(2, project.getDescription());
            statement.setDate(3, project.getDebut());
            statement.setDate(4, project.getFin());
            statement.setInt(5, project.getBudget());
            statement.setInt(6, project.getId());
            statement.executeUpdate();
        }
    }
}

