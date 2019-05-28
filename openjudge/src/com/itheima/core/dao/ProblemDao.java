package com.itheima.core.dao;
import java.util.List;
import com.itheima.core.po.Problem;

/**
 * Problem接口
 */
public interface ProblemDao {
	// 问题数
	public Integer selectProblemListCount(Problem problem);
	
	// 创建问题
	public int createProblem(Problem problem);
	// 通过id查询问题
	public Problem getProblemById(Integer id);
	// 更新问题信息
	public int updateProblem(Problem problem);
	// 删除问题
	int deleteProblem (Integer id);

}
