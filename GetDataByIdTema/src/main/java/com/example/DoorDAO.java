package com.example;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DoorDAO {

	
	public Doors getById(int id) throws SQLException, ClassNotFoundException {
		Connection con = DBHelper.getConnection();
		String qyerry = "Select * from doors where id = ?";
		PreparedStatement ps = con.prepareStatement(qyerry);
		ps.setInt(1, id);
		
		ResultSet rs = ps.executeQuery();
		while(rs.next()) {
		Doors d = new Doors(rs.getInt("id"),
				rs.getString("material"),
				rs.getDouble("height"),
				rs.getDouble("width"),
				rs.getDate("installationDate"));
		DBHelper.closeConnection();
		return d;
		}
		
		DBHelper.closeConnection();
		 return null;
	}
	
}