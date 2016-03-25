

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class RoomDB {

	// private Book b = new Book();
	
	public RoomDB() {
//		connect();
	}

	private Connection con = null;

	private Connection connect() {

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			// con = DriverManager.getConnection("jdbc:oracle:thin:sys as
			// sysdba/oracle@localhost:1521:orcl");
			con = DriverManager.getConnection("jdbc:oracle:thin:ora1/ora1@localhost:1521:orcl");

		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();

		}
		return con;
	}
	
	
	public Room getRoom(int _roomnum, String direction) {

		Room r = null;
//		Statement stmt = null;
		
		PreparedStatement pstmt = null;
		
		ResultSet rs = null;
		String sql = "select r.roomnum, r.name, r.wherecango, r.money, nr.newroomnum, "
				+ "nr.newroomvisited from room r "
				+ " join newroom nr on r.roomnum = nr.newroomnum"
				+ " where nr.roomnum = ? and nr.directionchoice = ? ";

		try {
			
				connect();
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, _roomnum);
				pstmt.setString(2, direction);
				
				
				
				System.out.println(sql);
				System.out.println("roomnum = " + _roomnum);
				System.out.println("direction = " + direction);

				
				
				double money = 0;
				String newRoomVisited ="";
				int newRoomNum = 0;
				int count = 0;

//		String sql = "select user from dual";	
			
			rs = pstmt.executeQuery();
			
			System.out.println("after query");
			
			
			
			while (rs.next()) {
				r = new Room(rs.getInt("roomnum"), rs.getString("name"), rs.getString("wherecango"),
						 rs.getDouble("money"));
				System.out.println("after new room");
				
				newRoomNum = rs.getInt("newroomnum");
				newRoomVisited = rs.getString("newroomvisited");
				if (newRoomVisited.equalsIgnoreCase("1")) {
					r.setMoney(0);
				}
			}
			
			
			
			sql = "update newroom set newroomvisited = ? where newroomnum = ? ";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, "1");
			pstmt.setInt(2, newRoomNum);
			count = pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
			// } catch (ClassNotFoundException e) {
			// e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return r;
	}

	
	
	
	
	



	public ArrayList<String> getCustomers() {

		//	Book b = null;
			
			String customername = "";
			ArrayList<String> customers = new ArrayList<String>();
			
			
			Statement stmt = null;
			ResultSet rs = null;
			String sql = "select firstname, lastname from bankcust where rownum <= 5";

			try {
				connect();
				stmt = con.createStatement();
				rs = stmt.executeQuery(sql);
				while (rs.next()) {
					customername = (rs.getString("lastname") + "," + rs.getString("firstname"));
                    customers.add(customername);
					// System.out.println(rs.getString(1));
					// System.out.println(rs.getString(2));
					// System.out.println(rs.getString(3));
					// System.out.println(rs.getString(4));
					// System.out.println(rs.getDouble(5) + "\n");

				}
			} catch (SQLException e) {
				e.printStackTrace();
				// } catch (ClassNotFoundException e) {
				// e.printStackTrace();
			} finally {
				try {
					rs.close();
					stmt.close();
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}

			return customers;
		}

	
}

