package DBAccess;

import FunctionLayer.Cupcake;
import FunctionLayer.cupcakeException;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class CupcakeMapper {

    public Cupcake cupcake (String top, String bottom) throws cupcakeException {
        try {
            Connection con = Connector.connection();
            String SQL = "SELECT top_id,top_name,bottom_id,bottom_name FROM Cupcake.Top, Cupcake.Bottom;"
                    + "WHERE top=? AND bottom=?";
            PreparedStatement ps = con.prepareStatement( SQL );
            ps.setString( 1, top);
            ps.setString( 2, bottom);
            ResultSet rs = ps.executeQuery();
            if ( rs.next() ) {

                return cupcake(top,bottom);
            } else {
                throw new cupcakeException( "Cupcake error" );
            }
        } catch ( ClassNotFoundException | SQLException ex ) {
            throw new cupcakeException(ex.getMessage());
        }
    }


}
