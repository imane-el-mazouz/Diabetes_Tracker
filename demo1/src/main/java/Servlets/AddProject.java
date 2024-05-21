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

@WebServlet(name = "AddProject", value = "/add")
public class AddProject extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private ProjectDAO projectDAO;

    public AddProject() {
        super();
        this.projectDAO = new ProjectDAOI();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, ServletException {
        try {
            int id = Integer.parseInt(request.getParameter("id"));
            String nom = request.getParameter("nom");
            String description = request.getParameter("description");
            java.sql.Date debut = java.sql.Date.valueOf(request.getParameter("debut"));
            java.sql.Date fin = java.sql.Date.valueOf(request.getParameter("fin"));
            int budget = Integer.parseInt(request.getParameter("budget"));

            Project project = new Project(id, nom, description, debut, fin, budget);
            projectDAO.addProject(project);
            response.sendRedirect(request.getContextPath() + "/projects");
        } catch (SQLException | IllegalArgumentException | NullPointerException e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "Failed to add project.");
            request.getRequestDispatcher("").forward(request, response);
        }
    }
}
