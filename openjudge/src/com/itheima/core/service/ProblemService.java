package com.itheima.core.service;
import com.itheima.common.utils.Page;
import com.itheima.core.po.Problem;
import org.json.JSONArray;
import org.springframework.ui.Model;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;
import java.util.List;

public interface ProblemService {
	public int createProblem(Map map);

	// 通过id查询客户
	public Problem getProblemById(Integer id);
	// 更新客户
	public int updateProblem(Problem problem);
	// 删除客户
	public int deleteProblem(Integer id);

	//查询客户列表
	void showProblemByPage(String title, String difficulty, HttpServletRequest request, Model model);
}
