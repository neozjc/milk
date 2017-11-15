package UserTestCase;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import baseTest.SpringTest;
import domain.User;
import service.UserService;

public class UserTestCase extends SpringTest{
	@Autowired  
    private UserService userService; 

    @Test  
    public void selectUserByIdTest(){  
        User user = userService.selectUserById(1);  
        System.out.println(user.getUserName() + ":" + user.getUserPassword());
    }  
}
