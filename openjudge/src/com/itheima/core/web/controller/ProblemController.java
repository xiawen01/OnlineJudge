package com.itheima.core.web.controller;
import com.itheima.common.utils.Page;
import com.itheima.core.po.BaseDict;
import com.itheima.core.po.Problem;
import com.itheima.core.service.BaseDictService;
import com.itheima.core.service.ProblemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * 客户控制层
 * @author Liwangyang
 * @date 2019-04-27
 */
@Controller
public class ProblemController {
	@Autowired
	private ProblemService problemService;
	@Autowired
	private BaseDictService baseDictService;

	//什么鬼东西 提取了config配置文件里面的东西
	@Value("${problem.from.type}")
	private String FROM_TYPE;
	@Value("${problem.industry.type}")
	private String INDUSTRY_TYPE;
	@Value("${problem.level.type}")
	private String LEVEL_TYPE;

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

}