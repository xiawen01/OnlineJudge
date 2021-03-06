package com.itheima.core.web.controller;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.itheima.core.po.User;
import com.itheima.core.service.UserService;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 用户控制器类
 */
@Controller
public class UserController {
	// 依赖注入
	@Autowired
	private UserService userService;
	/**
	 * 用户登录
	 */
	@RequestMapping(value = "/login.action", method = RequestMethod.POST)
	public String login(String username,String password, Model model,HttpSession session) {
		// 通过账号和密码查询用户
		User user = userService.findUser(username, password);
		if(user != null){		
			// 将用户对象添加到Session
			session.setAttribute("USER_SESSION", user);
			// 跳转到主页面
			//return "customer";
			//return "redirect:customer/list.action";
			return "login2";
		}
		model.addAttribute("msg", "账号或密码错误，请重新输入！");
         // 返回到登录页面
		return "login";
	}

	@RequestMapping(value = "/register.action",method = RequestMethod.POST)
	//@ResponseBody
	public String register(String register_username,String register_password, String register_email,Model model,HttpSession session) {
//		user.setUser_code(usercode);
//		user.setUser_password(password);
		int row = userService.registerUser(register_username,register_password,register_email);
		return "login";
	}

	/**
	 * 管理界面
	 */
	@RequestMapping(value = "/toMan.action")
	public String toMan(HttpSession session) {
		User user=(User)session.getAttribute("USER_SESSION");
		//System.out.println(user.getAdmin_type());
		if(user.getAdmin_type().equals("admin"))
			return "man";
		return "login2";
	}

	/**
	 * 创建问题
	 */
	@RequestMapping(value = "/createproblem.action")
	public String createproblem() {
		return "createproblem";
	}
	
	/**
	 * 退出登录
	 */
	@RequestMapping(value = "/logout.action")
	public String logout(HttpSession session) {
	    // 清除Session
	    session.invalidate();
	    // 重定向到登录页面的跳转方法
	    return "redirect:login.action";
	}
	/**
	 * 向用户登陆页面跳转
	 */
	@RequestMapping(value = "/login.action", method = RequestMethod.GET)
	public String toLogin() {
	    return "login";
	}


}
