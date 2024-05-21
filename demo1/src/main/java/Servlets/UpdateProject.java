package Servlets;

import DAO.ProjectDAO;
import DAO.ProjectDAOI;
import Model.Project;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "UpdateProject", value = "/update")
public class UpdateProject extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private ProjectDAO projectDAO;

    public UpdateProject() {
        super();
        this.projectDAO = new ProjectDAOI();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            int id = Integer.parseInt(request.getParameter("id"));
            Project project = projectDAO.getProjectById(id);
            request.setAttribute("project", project);
            request.getRequestDispatcher("/WEB-INF/updateProject.jsp").forward(request, response);
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendRedirect(request.getContextPath() + "/display?error=Could not find project");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            int id = Integer.parseInt(request.getParameter("id"));
            String nom = request.getParameter("nom");
            String description = request.getParameter("description");
            java.sql.Date debut = java.sql.Date.valueOf(request.getParameter("debut"));
            java.sql.Date fin = java.sql.Date.valueOf(request.getParameter("fin"));
            int budget = Integer.parseInt(request.getParameter("budget"));

            Project project = new Project(id, nom, description, debut, fin, budget);
            projectDAO.updateProject(project);
            response.sendRedirect(request.getContextPath() + "/display");
        } catch (SQLException | IllegalArgumentException | NullPointerException e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "Failed to update project.");
            request.getRequestDispatcher("/WEB-INF/projects.jsp").forward(request, response);
        }
    }
}
