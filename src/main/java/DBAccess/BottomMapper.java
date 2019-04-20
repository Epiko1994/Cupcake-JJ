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
        List<BottomCake> bottomCakeList = new ArrayList<BottomCake>();

        try {
            Connection con = Connector.connection();
            String SQL = "SELECT *  FROM Cupcake.Bottom;";

            PreparedStatement ps = con.prepareStatement(SQL);

            ResultSet rs = ps.executeQuery(SQL);
            while (rs.next()) {

                BottomCake bottomCake = new BottomCake(rs.getInt("top_id"),
                        rs.getString("top_name"),
                        rs.getInt("top_price"));
                bottomCakeList.add(bottomCake);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            throw new cupcakeException(ex.getMessage());
        }
        return bottomCakeList;
    }
}
