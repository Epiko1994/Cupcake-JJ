package FunctionLayer;

import DBAccess.TopMapper;
import DBAccess.UserMapper;

/**
 * The purpose of LogicFacade is to...
 * @author kasper
 */
public class LogicFacade {

    public static User login( String email, String password ) throws LoginSampleException {
        return UserMapper.login( email, password );
    } 

    public static User createUser( String email, String password ) throws LoginSampleException {
        //ny non-admin-bruger(user) for 100kr start saldo.
        User user = new User(email, password, "customer",100.00);
        if(user.getRole().equals("admin")){ user.setSaldo(0); }
        UserMapper.createUser( user );
        return user;
    }


}
