package PresentationLayer;

import FunctionLayer.LogicFacade;
import FunctionLayer.LoginSampleException;
import FunctionLayer.User;
import com.mysql.cj.Session;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.nio.file.spi.FileSystemProvider;

public class MyPage extends Command{

    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginSampleException {
        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("user");
        String email = user.getEmail();
        double saldo = user.getSaldo();
        request.setAttribute("email", email);
        request.setAttribute("saldo",saldo);
        String userRole = request.getParameter("role");
        if (userRole.equals("admin")) {
            return "adminpage";
        } else {
            return "customerpage";
        }
    }

}
