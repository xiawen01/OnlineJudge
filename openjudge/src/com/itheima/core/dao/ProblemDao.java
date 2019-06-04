package com.itheima.core.dao;
import java.util.List;
import java.util.Map;

import com.itheima.core.po.Problem;
import org.apache.ibatis.annotations.Param;
import org.json.JSONArray;

/**
 * Problem接口
 */
public interface ProblemDao {

	// 创建问题
	public int createProblem(Map map);
	// 通过id查询问题
	public Problem getProblemById(Integer id);
	// 更新问题信息
	public int updateProblem(Problem problem);
	// 删除问题
	int deleteProblem(Integer id);

	//查询问题列表
	public List<Problem> selectProblemList(@Param(value="startPos") Integer startPos,
										   @Param(value="pageSize") Integer pageSize,
										   @Param("title") String title,
										   @Param("difficulty") String difficulty);

	//问题数
	public int selectProblemListCount( @Param("title") String title,
									   @Param("difficulty") String difficulty);
}
