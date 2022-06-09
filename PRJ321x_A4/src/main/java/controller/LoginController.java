package controller;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller; 
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import bean.User;
import dao.UserJDBCTemplate;

import org.springframework.ui.ModelMap;

@Controller
public class LoginController {
	@RequestMapping(value = "/", method = RequestMethod.GET) 
	public ModelAndView home() {
		return new ModelAndView("home", "command", new User()); 
	}

	
	@RequestMapping(value = "/login", method = RequestMethod.GET) 
	public ModelAndView login() {
		return new ModelAndView("login", "command", new User()); 
	}

	
	//@SuppressWarnings("unused")
	@RequestMapping(value = "/doLogin", method = RequestMethod.POST)
	public String doLogin(@ModelAttribute("LoginWeb2") User user, 

			ModelMap model) { 

		String mail = user.getUsername();
		String pass = user.getPassword();
		String nm = user.getName();

		ApplicationContext context = new ClassPathXmlApplicationContext("Beans.xml");
		UserJDBCTemplate userJDBCTemplate = (UserJDBCTemplate) context.getBean("userJDBCTemplate");
		User userDb = userJDBCTemplate.getUser(mail);

		
		if (userDb == null) {
			model.addAttribute("error", "Your email is wrong.");			
			return "login";
		}
		else if (!userDb.getPassword().equals(pass)) {
			model.addAttribute("error", "Your password is wrong.");
			model.addAttribute("mail", userDb.getUsername());
			return "login";
		}
		else {
			model.addAttribute("username", userDb.getName());
			return "index";
		}
					
	}
}
