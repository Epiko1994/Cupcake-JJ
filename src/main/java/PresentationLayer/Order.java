package PresentationLayer;

import DBAccess.TopMapper;
import FunctionLayer.LoginSampleException;
import FunctionLayer.TopCake;
import FunctionLayer.cupcakeException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class Order extends Command {
    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginSampleException {

  /*
        TopCake topCake = (TopCake) TopMapper.topCake();


        try {
            List<TopCake> topCakeList = TopMapper.topCake();
            request.setAttribute("toplist",topCakeList);
            request.getServletContext().getRequestDispatcher("/orderpage.jsp").forward(request,response);
        } catch (cupcakeException e) {
            e.printStackTrace();
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

*/
        return "#";
    }


}