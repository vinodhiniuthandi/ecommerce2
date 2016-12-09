package com.niit.HomeControl;

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.niit.backend.DAO.CartDao;
import com.niit.backend.DAO.CategoryDao;
import com.niit.backend.DAO.ProductDao;
import com.niit.backend.DAO.SupplierDao;
import com.niit.backend.DAO.UserDao;
import com.niit.backend.model.Cart;
import com.niit.backend.model.Category;
import com.niit.backend.model.Product;
import com.niit.backend.model.Supplier;
import com.niit.backend.model.User;


@Controller
@SessionAttributes("email")
public class LoginandHomeControl {
	
	@Autowired
	private CategoryDao categoryDao;
	@Autowired
	private SupplierDao supplierDao;
@Autowired
	private ProductDao productDao;
	
	@Autowired
	private Category category;
	
	@Autowired
	private Supplier supplier;
	
	@Autowired
	private Product product;
	
	@Autowired
	private HttpSession session;
	
	@Autowired
	private UserDao userDao;
	
	//@Autowired
	//private User user;
	
	@SuppressWarnings("unused")
	@Autowired
	private Cart cart;
	@Autowired
	CartDao cartDao;
	
	
/*
	
	@RequestMapping("/login")
	public ModelAndView login(Model mod,@ModelAttribute(value="email")String email,
			@ModelAttribute(value="password")String password)
	

	
	{	
		
		ModelAndView mv = new ModelAndView("login");
	
		
		
		user=null;
	
		user = userDao.isvalidUser(email, password);
		if( user == null){
			mod.addAttribute("login", "true");
			
			mv.addObject("errormessage","Pls Enter Valid Email & Password ");
		
			
		
		}else{
			if (user.getRole().equals("ROLE_ADMIN")){
			 mv = new ModelAndView("admin");
			 mod.addAttribute("adminhello",true);
			// mod.addAttribute("loginclicked","true");
			    session.setAttribute("Adminname", user.getName());
				session.setAttribute("categoryList", categoryDao.list());
				session.setAttribute("supplierList", supplierDao.list());
				session.setAttribute("productList", productDao.list());
				
				session.setAttribute("category", category);
				session.setAttribute("product", product);
				session.setAttribute("supplier", supplier);
				
			}else if(user.getRole().equals("ROLE_USER")){
		        mv = new ModelAndView("listedItem");
		        mod.addAttribute("isLoggedInUser", "true");	
		      //  session.setAttribute("cartList", cartDao.list(password));
		        session.setAttribute("productList", productDao.list());
				session.setAttribute("username",user.getName());
				session.setAttribute("email", user.getEmail());

			}
		}
		
		return mv;

}
	
	/*
	@RequestMapping("/logout1")
	
	public String logout(Model mod){
			
	mod.addAttribute("msg","successfully logged out");
			
	 mod.addAttribute("ch1","true");
	      
	 return "index";
	}*/

	
	 @RequestMapping("/aftersuccess")
	 public String aftersuccess(Model mod){
		 mod.addAttribute("aaa","true");
		 return "login";
	 }
		    
	@RequestMapping("/logout")
	public ModelAndView logout(HttpServletRequest request,Model mod){
		 mod.addAttribute("aa","true");
		 mod.addAttribute("isLoggedInUser","true");
		
		ModelAndView mv = new ModelAndView("/login");
		session.invalidate();
		session = request.getSession(true);
		session.setAttribute("category",category);
		session.setAttribute("categoryList",categoryDao.list());
		session.setAttribute("productList", productDao.list());
		mv.addObject("errormessage1", "successfully LoggedOut");
		mv.addObject("logout","true");
		
		return mv;
	}
	
	@RequestMapping("/afterlogin")
	String loginProcess(Principal p,Model model)
		
	
	
	
	{
		
		
String email=p.getName();
		
		
		User user = userDao.get(email);
		model.addAttribute("email", email);
	
		long count = cartDao.getCount(email);
		model.addAttribute("numberOfProduct", count);
		
		
		user=userDao.get(email);
	
		if (user.getRole().equals("ROLE_ADMIN")){
			 model.addAttribute("adminhello",true);
			// mod.addAttribute("loginclicked","true");
			    session.setAttribute("Adminname", user.getName());
				session.setAttribute("categoryList", categoryDao.list());
				session.setAttribute("supplierList", supplierDao.list());
				session.setAttribute("productList", productDao.list());
				
				session.setAttribute("category", category);
				session.setAttribute("product", product);
				session.setAttribute("supplier", supplier);
				return"admin";
			}else if(user.getRole().equals("ROLE_USER")){
		     
		        model.addAttribute("isLoggedInUser", "true");	
		      //  session.setAttribute("cartList", cartDao.list(password));
		        session.setAttribute("productList", productDao.list());
				session.setAttribute("username",user.getName());
				session.setAttribute("email", user.getEmail());
                return "listedItem";
			}
		return "login";
		}
	
	
	
}