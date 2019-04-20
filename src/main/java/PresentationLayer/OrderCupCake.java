package PresentationLayer;

import DBAccess.TopMapper;
import DBAccess.BottomMapper;
import FunctionLayer.BottomCake;
import FunctionLayer.LoginSampleException;
import FunctionLayer.TopCake;
import FunctionLayer.cupcakeException;
import FunctionLayer.cupcakeException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.List;

public class OrderCupCake extends Command {
    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginSampleException {
        try {
            List<BottomCake> bottomCakeList = BottomMapper.bottomCake();
            request.setAttribute("bottomlist", bottomCakeList);
        } catch (cupcakeException e) {
            e.printStackTrace();
        }

        try {
            List<TopCake> topCakeList = TopMapper.topCake();
            request.setAttribute("toplist",topCakeList);
        } catch (cupcakeException e) {
            e.printStackTrace();
        }


        return "orderpage";
    }
}
