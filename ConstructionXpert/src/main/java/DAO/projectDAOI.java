package DAO;

import Connection.DatabaseManager;
import Model.Project;
import Model.Resource;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
public class projectDAOI implements projectDAO {
    @Override
    public List<Project> getAllProjects() throws SQLException {
        List<Project> projects = new ArrayList<>();

        try (Connection connection = DatabaseManager.getConnection();
             PreparedStatement statement = connection.prepareStatement("SELECT * FROM projects");
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

        } catch (SQLException e) {
            throw e;
        }

        return projects;
    }




    @Override
    public void addProject(Project project) throws SQLException {
        try (Connection connection = DatabaseManager.getConnection()) {
            PreparedStatement statement = connection.prepareStatement(
                    "INSERT INTO projects (id, nom, description, debut, fin, budget) " +
                            "VALUES (?, ?, ?, ?, ?, ?)");
            statement.setInt(1, project.getId());
            statement.setString(2, project.getNom());
            statement.setString(3, project.getDescription());
            statement.setDate(4, project.getDebut());
            statement.setDate(5, project.getFin());
            statement.setInt(6, project.getBudget());
            statement.executeUpdate();

        } catch (SQLException e) {
            throw e;
        }
    }
}
