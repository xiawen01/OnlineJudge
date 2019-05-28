package com.itheima.core.service;
import com.itheima.common.utils.Page;
import com.itheima.core.po.Problem;

public interface ProblemService {
	public int createProblem(Problem problem);
	
	// 通过id查询客户
	public Problem getProblemById(Integer id);
	// 更新客户
	public int updateProblem(Problem problem);
	// 删除客户
	public int deleteProblem(Integer id);

}
