package net.javaguides.login.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import net.javaguides.login.bean.LoginBean;

public class LoginDao {
	
    public String accNo;
	public String accName;
	public String accBalance;
	public String accbal;
	public String accname;
	public String accno;
    

	public boolean validate(LoginBean loginBean) throws ClassNotFoundException {
        boolean status = false;
        accNo = loginBean.getaccNo();
        Class.forName("com.mysql.jdbc.Driver");

        try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "");

            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection
            .prepareStatement("select * from account where accNo = ? and password = ? ")) {
            preparedStatement.setString(1, loginBean.getaccNo());
            preparedStatement.setString(2, loginBean.getPassword());

            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            status = rs.next();
            accName = null;
            accName = rs.getString(2);
            accBalance = rs.getString(4);
            accname = accName;
            accbal = accBalance;
            
            
        } catch (SQLException e) {
            // process sql exception
            printSQLException(e);
        }
       
        return status;
    }
	

    private void printSQLException(SQLException ex) {
        for (Throwable e: ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}
