package DBAccess;

import FunctionLayer.BottomCake;
import FunctionLayer.TopCake;
import FunctionLayer.cupcakeException;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BottomMapper {

    public static List<BottomCake> bottomCake()  throws cupcakeException {
        List<BottomCake> bottomCakeList = new ArrayList<>();

        try {
            Connection con = Connector.connection();
            String SQL = "SELECT *  FROM Cupcake.Bottom;";

            PreparedStatement ps = con.prepareStatement(SQL);

            ResultSet rs = ps.executeQuery(SQL);
            while (rs.next()) {

                BottomCake bottomCake = new BottomCake(rs.getInt("bottom_id"),
                        rs.getString("bottom_name"),
                        rs.getInt("bottom_price"));
                bottomCakeList.add(bottomCake);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            throw new cupcakeException(ex.getMessage());
        }
        return bottomCakeList;
    }
}