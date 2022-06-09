package taxi.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class ConnectionUtil {
    private static final String URL
            = "jdbc:postgresql://ec2-3-234-131-8.compute-1.amazonaws.com/daova9vht0o00i";
    private static final String USERNAME = "fvckfjhhyufpyz";
    private static final String PASSWORD
            = "22f57ddf7d71e824405299ba4476fcbf1b34734565bf551a933a7b4681068c12";
    private static final String JDBC_DRIVER = "org.postgresql.Driver";

    static {
        try {
            Class.forName(JDBC_DRIVER);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException("Can't find SQL Driver", e);
        }
    }

    public static Connection getConnection() {
        Properties dbProperties = new Properties();
        dbProperties.setProperty("user", USERNAME);
        dbProperties.setProperty("password", PASSWORD);
        try {
            return DriverManager.getConnection(URL, dbProperties);
        } catch (SQLException e) {
            throw new RuntimeException("Can't create connection to DB ", e);
        }
    }
}
