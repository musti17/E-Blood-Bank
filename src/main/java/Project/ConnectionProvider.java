





package Project;
import java.sql.*;

public class ConnectionProvider {
	
	public static Connection getCon()
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://node419202-e-blood-bank.j.layershift.co.uk:3306/bloodbank","root","QTIscl38478");
			return con;
		}
		catch(Exception e)
		{
			System.out.print(e);
			return null;
		}
	}

}
