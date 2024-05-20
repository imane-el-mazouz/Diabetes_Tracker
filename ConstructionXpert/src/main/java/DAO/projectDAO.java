package DAO;

import Model.Project;

import java.sql.SQLException;
import java.util.List;

public interface projectDAO {
    List<Project> getAllProjects() throws SQLException;
    void addProject(Project project) throws SQLException;
}
