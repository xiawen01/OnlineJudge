package com.itheima.core.web.controller;

import com.itheima.common.utils.Page;
import com.itheima.core.po.BaseDict;
import com.itheima.core.po.Problem;
import com.itheima.core.po.User;
import com.itheima.core.service.BaseDictService;
import com.itheima.core.service.ProblemService;
import com.itheima.core.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.*;


import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;




/**
 * 客户控制层
 * @author Liwangyang
 * @date 2019-04-27
 */
@Controller
public class ProblemController {
	// 依赖注入
	@Autowired
	private UserService userService;
	@Autowired
	private ProblemService problemService;
	@Autowired
	private BaseDictService baseDictService;

	//什么鬼东西 提取了config配置文件里面的东西
//	@Value("${problem.from.type}")
//	private String FROM_TYPE;
//	@Value("${problem.industry.type}")
//	private String INDUSTRY_TYPE;
//	@Value("${problem.level.type}")
//	private String LEVEL_TYPE;

	/**
	 *  显示题目列表
	 */
	//通过@RequestParam注解，可以获取前台Post的值:pageNo@RequestParam(defaultValue="1",required=true,value="pageNo") Integer pageNo
	@RequestMapping(value = "/problem/showproblem.action",method = RequestMethod.GET)
	public String problemlist(String username,String password, HttpSession session, String title, String difficulty,Model model, HttpServletRequest request) {
		problemService.showProblemByPage(title,difficulty, request, model);
		// 通过账号和密码查询用户
		User user = userService.findUser(username, password);
		if(user != null){
			// 将用户对象添加到Session
			session.setAttribute("USER_SESSION", user);
			return "showproblem2";
		}
		return "showproblem";
	}


//	/**
//	 * 通过id获取客户信息
//	 */
//	@RequestMapping("/problem/getproblemById.action")
//	@ResponseBody
//	public Problem getproblemById(Integer id) {
//		Problem problem = problemService.getproblemById(id);
//		return problem;
//	}
//	/**
//	 * 更新客户
//	 */
//	@RequestMapping("/problem/update.action")
//	@ResponseBody
//	public String problemUpdate(Problem problem) {
//		int rows = problemService.updateproblem(problem);
//		if(rows > 0){
//			return "OK";
//		}else{
//			return "FAIL";
//		}
//	}
//
//	/**
//	 * 删除客户
//	 */
//	@RequestMapping("/problem/delete.action")
//	@ResponseBody
//	public String problemDelete(Integer id) {
//		int rows = problemService.deleteproblem(id);
//		if(rows > 0){
//			return "OK";
//		}else{
//			return "FAIL";
//		}
//	}

	@RequestMapping(value = "/problem/newproblem.action",method = RequestMethod.POST)
	public String newProblem(Integer id, String title, String desc, String indesc, String outdesc, String[] is, String hint, String[]  checkname,
							 Integer time_limit, Integer memory_limit,String typee, Integer vis,String difficulty, String source,
							 String[] iomode,Integer ss,String test_case_id, HttpSession session) throws JSONException {

		User user=(User)session.getAttribute("USER_SESSION");
		Integer created_by_id=user.getId();
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String create_time=sdf.format(date);

		JSONArray iss=new JSONArray(is);
		JSONArray checknamee=new JSONArray(checkname);
		JSONArray iomodee=new JSONArray(iomode);

		Map map= new HashMap();
		map.put("id",id);
		map.put("title",title);
		map.put("desc",desc);
		map.put("indesc",indesc);
		map.put("outdesc",outdesc);
		map.put("iss",iss.toString());
		map.put("hint",hint);
		map.put("checknamee",checknamee.toString());
		map.put("time_limit",time_limit);
		map.put("memory_limit",memory_limit);
		map.put("typee",typee);
		map.put("difficulty",difficulty);
		map.put("source",source);
		map.put("iomodee",iomodee.toString());
		map.put("vis",vis);
		map.put("ss",ss);
		map.put("created_by_id",created_by_id);
		map.put("create_time",create_time);

		map.put("test_case_id",test_case_id);
		int row=problemService.createProblem(map);

		return "man";
	}

//insert into problem(id,title,description,input_description,output_description,samples,hint,languages,create_time,time_limit,memory_limit,
//		visible,difficulty,source,created_by_id,io_mode,share_submission) values(1, '第一个问题', '1213', '4123', '1234', '["1234","1234"]', '1234', '["on","on","on","on","on"]', '2019-06-02 15:00:05', 1000, 256, 1, 'low', '1234', 1, '["on"]', 1)
}