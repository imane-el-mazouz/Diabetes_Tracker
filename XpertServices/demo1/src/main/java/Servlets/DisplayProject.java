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
import java.util.List;

@WebServlet(name = "DisplayProject", value = "/display")
public class DisplayProject extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private ProjectDAO projectDAO;

    public DisplayProject() {
        super();
        this.projectDAO = new ProjectDAOI();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            List<Project> projects;
            projects = projectDAO.getAllProjects();
            System.out.println("Number of projects retrieved: " + projects.size());
            request.setAttribute("projects", projects);
            this.getServletContext().getRequestDispatcher("/WEB-INF/projects.jsp").forward(request, response);
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendRedirect("");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}