package DAO;

import Model.Project;

import java.sql.SQLException;
import java.util.List;

public interface ProjectDAO {
    List<Project> getAllProjects() throws SQLException;

    void addProject(Project var1) throws SQLException;
}
