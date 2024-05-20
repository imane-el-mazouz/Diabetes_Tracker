package Connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseManager {
    private static final String jdbcURL = "jdbc:mysql://localhost:3306/construction";
    private static final String jdbcUserName = "imane";
    private static final String jdbcPassword = "1234";
    private static final String jdbcDriver = "com.mysql.cj.jdbc.Driver";

    public DatabaseManager() {
    }

    public static Connection getConnection() throws SQLException {
        Connection connection = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/construction", "imane", "1234");
            return connection;
        } catch (SQLException | ClassNotFoundException var2) {
            throw new SQLException("error", var2);
        }
    }
}
