/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 */
import java.sql.*;
import javax.swing.*;

public class Connect {

    Connection con = null;

    public static Connection ConnectDB() {

        try {

            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hms_db", "gautam", "123");
            
            return con;

        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, e);
            return null;
        }
    }
}
