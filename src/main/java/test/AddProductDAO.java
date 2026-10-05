package test;

import java.sql.*;

public class AddProductDAO {

    public int insert(ProductBean pb) {

        int k = 0;

        try {

            Connection con = DBConnection.getCon();

            System.out.println("Connection = " + con);

            PreparedStatement ps = con.prepareStatement(
                "INSERT INTO Product60 VALUES (?, ?, ?, ?)"
            );

            ps.setString(1, pb.getCode());
            ps.setString(2, pb.getName());
            ps.setFloat(3, pb.getPrice());
            ps.setInt(4, pb.getQty());

            k = ps.executeUpdate();

            System.out.println("Rows inserted = " + k);

        } catch (Exception e) {

            e.printStackTrace();

        }

        return k;
    }
}