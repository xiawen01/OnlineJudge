package com.itheima.core.service.impl;
import java.util.List;
import java.util.Map;

import com.itheima.core.po.Problem;
import org.apache.commons.lang3.StringUtils;
import org.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.itheima.common.utils.Page;
import com.itheima.core.dao.ProblemDao;
import com.itheima.core.service.ProblemService;
/**
 * 题目管理
 */
@Service("problemService")
@Transactional
public class ProblemServiceImpl implements ProblemService {
	// 声明DAO属性并注入
	@Autowired
	private ProblemDao problemDao;
	/**
	 * 创建题目
	 */
	@Override
	public int createProblem(Map map) {
	    return this.problemDao.createProblem(map);
	}
	/**
	 * 通过id查询题目
	 */
	@Override
	public Problem getProblemById(Integer id) {
	    Problem problem = problemDao.getProblemById(id);
	    return problem;
	}
	/**
	 * 更新题目
	 */
	@Override
	public int updateProblem(Problem problem) {
	    return problemDao.updateProblem(problem);
	}
	/**
	 * 删除题目
	 */
	@Override
	public int deleteProblem(Integer id) {
	    return problemDao.deleteProblem(id);
	}

	
}
