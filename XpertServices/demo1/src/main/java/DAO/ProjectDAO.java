package DAO;

import Model.Project;

import java.sql.SQLException;
import java.util.List;

public interface ProjectDAO {
    List<Project> getAllProjects() throws SQLException;
    void addProject(Project project) throws SQLException;
    void deleteProject(int id) throws SQLException;
    Project getProjectById(int id) throws SQLException;
    void updateProject(Project project) throws SQLException;

}
