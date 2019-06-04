package com.itheima.core.service.impl;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.itheima.common.utils.Page;
import com.itheima.core.po.Problem;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.itheima.core.dao.ProblemDao;
import com.itheima.core.service.ProblemService;
import org.springframework.ui.Model;

import javax.servlet.http.HttpServletRequest;

/**
 * 题目管理
 */
@Service("ProblemService")
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

//	@Override
//	public List<Problem> selectProblemList() {
//		return problemDao.selectProblemList();
//	}

	@Override
	public void showProblemByPage(String title, String difficulty, HttpServletRequest request, Model model) {
		String pageNow = request.getParameter("pageNow");
		title = request.getParameter("title");
		difficulty = request.getParameter("difficulty");
		Page page = null;

		List<Problem> problem = new ArrayList<Problem>();
		//查询问题总数
		int totalCount = problemDao.selectProblemListCount(title,difficulty);

		System.out.println("totalCount:"+totalCount);

		if (pageNow != null) {
			page = new Page(totalCount, Integer.parseInt(pageNow));
			problem = this.problemDao.selectProblemList(page.getStartPos(), page.getPageSize(),title,difficulty);
		} else {
			page = new Page(totalCount, 1);
			problem = this.problemDao.selectProblemList(page.getStartPos(), page.getPageSize(),title,difficulty);
		}

		model.addAttribute("problem", problem);
		model.addAttribute("page", page);
	}

}
