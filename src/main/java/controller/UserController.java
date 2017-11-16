package controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import domain.User;
import service.UserService;

@Controller  
public class UserController {  

    @Resource  
    private UserService userService;  
    @RequestMapping("/")    
    public ModelAndView getIndex(){      
        ModelAndView mav = new ModelAndView("index");   
        User user = userService.selectUserById(1);  
        mav.addObject("user", user);   
        return mav;    
    }    
    
    @ResponseBody
    @RequestMapping("/user")   
    public List<User> getUser() {
    	 User user = userService.selectUserById(1);  
    	 List<User> userList = new ArrayList<User>();
    	 userList.add(user);
    	return userList;
    }
    
}  