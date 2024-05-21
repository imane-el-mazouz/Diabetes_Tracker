package Connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseManager {
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/construction";
    private static final String JDBC_USERNAME = "imane";
    private static final String JDBC_PASSWORD = "1234";
    private static final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";

    public static Connection getConnection() throws SQLException {
        try {
            Class.forName(JDBC_DRIVER);
            return DriverManager.getConnection(JDBC_URL, JDBC_USERNAME, JDBC_PASSWORD);
        } catch (ClassNotFoundException e) {
            throw new SQLException("Échec du chargement du driver JDBC", e);
        } catch (SQLException e) {
            System.err.println("Erreur lors de l'établissement de la connexion : " + e.getMessage());
            throw e;
        }
    }
}
