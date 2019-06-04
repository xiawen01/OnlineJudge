package com.itheima.core.po;
import org.json.JSONArray;

import java.io.Serializable;
import java.util.Date;
/**
 * 问题持久化类
 */
public class Problem{
	private static final long serialVersionUID = 1L;
	private Integer id;     ///< 题目id
	private String title;   ///< 题目名称
	private String description;
	private String input_description;
	private String output_description;
	private String samples;
	private String test_case_id;
	private String test_case_score;
	private String hint;
	private String language;
	private String template;
	private String create_time;
	private String last_update_time;
	private Integer time_limit;
	private Integer memory_limit;
	private Integer spj;
	private String spj_language;
	private String spj_code;
	private String spj_version;
	private String rule_type;
	private Integer visible;
	private String difficulty;  ///< 题目等级
	private String source;
	private Integer submission_number;  ///< 提交次数
	private Integer accepted_number;    ///< 通过次数
	private Integer created_by_id;
	private String _id;
	private String statistic_info;
	private Integer total_score;
	private Integer contest_id;
	private Integer is_public;
	private Integer spj_compile_ok;
	private String io_mode;
	private Integer share_submission;

	public static long getSerialVersionUID() {
		return serialVersionUID;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getInput_description() {
		return input_description;
	}

	public void setInput_description(String input_description) {
		this.input_description = input_description;
	}

	public String getOutput_description() {
		return output_description;
	}

	public void setOutput_description(String output_description) {
		this.output_description = output_description;
	}

	public String getSamples() {
		return samples;
	}

	public void setSamples(String samples) {
		this.samples = samples;
	}

	public String getTest_case_id() {
		return test_case_id;
	}

	public void setTest_case_id(String test_case_id) {
		this.test_case_id = test_case_id;
	}

	public String getTest_case_score() {
		return test_case_score;
	}

	public void setTest_case_score(String test_case_score) {
		this.test_case_score = test_case_score;
	}

	public String getHint() {
		return hint;
	}

	public void setHint(String hint) {
		this.hint = hint;
	}

	public String getLanguage() {
		return language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}

	public String getTemplate() {
		return template;
	}

	public void setTemplate(String template) {
		this.template = template;
	}

	public String getCreate_time() {
		return create_time;
	}

	public void setCreate_time(String create_time) {
		this.create_time = create_time;
	}

	public String getLast_update_time() {
		return last_update_time;
	}

	public void setLast_update_time(String last_update_time) {
		this.last_update_time = last_update_time;
	}

	public Integer getTime_limit() {
		return time_limit;
	}

	public void setTime_limit(Integer time_limit) {
		this.time_limit = time_limit;
	}

	public Integer getMemory_limit() {
		return memory_limit;
	}

	public void setMemory_limit(Integer memory_limit) {
		this.memory_limit = memory_limit;
	}

	public Integer getSpj() {
		return spj;
	}

	public void setSpj(Integer spj) {
		this.spj = spj;
	}

	public String getSpj_language() {
		return spj_language;
	}

	public void setSpj_language(String spj_language) {
		this.spj_language = spj_language;
	}

	public String getSpj_code() {
		return spj_code;
	}

	public void setSpj_code(String spj_code) {
		this.spj_code = spj_code;
	}

	public String getSpj_version() {
		return spj_version;
	}

	public void setSpj_version(String spj_version) {
		this.spj_version = spj_version;
	}

	public String getRule_type() {
		return rule_type;
	}

	public void setRule_type(String rule_type) {
		this.rule_type = rule_type;
	}

	public Integer getVisible() {
		return visible;
	}

	public void setVisible(Integer visible) {
		this.visible = visible;
	}

	public String getDifficulty() {
		return difficulty;
	}

	public void setDifficulty(String difficulty) {
		this.difficulty = difficulty;
	}

	public String getSource() {
		return source;
	}

	public void setSource(String source) {
		this.source = source;
	}

	public Integer getSubmission_number() {
		return submission_number;
	}

	public void setSubmission_number(Integer submission_number) {
		this.submission_number = submission_number;
	}

	public Integer getAccepted_number() {
		return accepted_number;
	}

	public void setAccepted_number(Integer accepted_number) {
		this.accepted_number = accepted_number;
	}

	public Integer getCreated_by_id() {
		return created_by_id;
	}

	public void setCreated_by_id(Integer created_by_id) {
		this.created_by_id = created_by_id;
	}

	public String get_id() {
		return _id;
	}

	public void set_id(String _id) {
		this._id = _id;
	}

	public String getStatistic_info() {
		return statistic_info;
	}

	public void setStatistic_info(String statistic_info) {
		this.statistic_info = statistic_info;
	}

	public Integer getTotal_score() {
		return total_score;
	}

	public void setTotal_score(Integer total_score) {
		this.total_score = total_score;
	}

	public Integer getContest_id() {
		return contest_id;
	}

	public void setContest_id(Integer contest_id) {
		this.contest_id = contest_id;
	}

	public Integer getIs_public() {
		return is_public;
	}

	public void setIs_public(Integer is_public) {
		this.is_public = is_public;
	}

	public Integer getSpj_compile_ok() {
		return spj_compile_ok;
	}

	public void setSpj_compile_ok(Integer spj_compile_ok) {
		this.spj_compile_ok = spj_compile_ok;
	}

	public String getIo_mode() {
		return io_mode;
	}

	public void setIo_mode(String io_mode) {
		this.io_mode = io_mode;
	}

	public Integer getShare_submission() {
		return share_submission;
	}

	public void setShare_submission(Integer share_submission) {
		this.share_submission = share_submission;
	}
}
