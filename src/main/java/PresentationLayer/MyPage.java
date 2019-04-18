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
        String email = request.getParameter( "email" );
        String password = request.getParameter( "password" );
        HttpSession session = request.getSession(false);
        User user =  LogicFacade.login( email, password );
        session.setAttribute( "user", user );
        session.setAttribute( "role", user.getRole() );

        return  user.getRole() + "page";
    }



}
