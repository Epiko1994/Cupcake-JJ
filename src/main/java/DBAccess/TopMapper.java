package DBAccess;

import FunctionLayer.TopCake;
import FunctionLayer.cupcakeException;
import com.sun.corba.se.impl.ior.IORTemplateListImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class TopMapper {


    public static List<TopCake> topCake() throws cupcakeException {

        List<TopCake> topCakeList = new ArrayList<>();

        try {
            Connection con = Connector.connection();
            String SQL = "SELECT * FROM Cupcake.Top;";

            PreparedStatement ps = con.prepareStatement(SQL);

            ResultSet rs = ps.executeQuery(SQL);

            while (rs.next()) {

                TopCake topCake = new TopCake(rs.getInt("top_id"),
                        rs.getString("top_name"),
                        rs.getInt("top_price"));
                topCakeList.add(topCake);
            }


        } catch (ClassNotFoundException | SQLException ex) {
            throw new cupcakeException(ex.getMessage());
        }
        return topCakeList;
    }
}