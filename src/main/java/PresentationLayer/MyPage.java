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
        request.setAttribute("email", email);
        System.out.println("Her skriver vi email ud " + email);
        String userRole = request.getParameter("role");
        System.out.println(userRole);
        if (userRole.equals("admin")) {
            return "adminpage";
        } else {
            return "customerpage";
        }
    }

}
