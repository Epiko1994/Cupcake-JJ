package PresentationLayer;

import DBAccess.BottomMapper;
import FunctionLayer.BottomCake;
import FunctionLayer.LoginSampleException;
import FunctionLayer.cupcakeException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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

        return "orderpage";
    }
}
