package com.itheima.core.po;

/**
 * 用户实体类
 * @author Liwangyang
 * @date 2019-04-23
 */
public class User {
    private static final long serialVersionUID=1L;
    /**  用户id  */
    private Integer id;
    /**  用户姓名  */
    private String username;
    /**  用户密码  */
    private String password;
    private String last_login;
    private String email;
    private String create_time;
    private String admin_type;
    private String reset_password_token;
    private String reset_password_token_expire_time;
    private String auth_token;
    private Integer two_factor_auth;
    private String tfa_token;
    private Integer open_api;
    private String open_api_appkey;
    private  Integer is_disabled;
    private  String problem_permisson;
    private  String session_keys;

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getLast_login() {
        return last_login;
    }

    public void setLast_login(String last_login) {
        this.last_login = last_login;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCreate_time() {
        return create_time;
    }

    public void setCreate_time(String create_time) {
        this.create_time = create_time;
    }

    public String getAdmin_type() {
        return admin_type;
    }

    public void setAdmin_type(String admin_type) {
        this.admin_type = admin_type;
    }

    public String getReset_password_token() {
        return reset_password_token;
    }

    public void setReset_password_token(String reset_password_token) {
        this.reset_password_token = reset_password_token;
    }

    public String getReset_password_token_expire_time() {
        return reset_password_token_expire_time;
    }

    public void setReset_password_token_expire_time(String reset_password_token_expire_time) {
        this.reset_password_token_expire_time = reset_password_token_expire_time;
    }

    public String getAuth_token() {
        return auth_token;
    }

    public void setAuth_token(String auth_token) {
        this.auth_token = auth_token;
    }

    public Integer getTwo_factor_auth() {
        return two_factor_auth;
    }

    public void setTwo_factor_auth(Integer two_factor_auth) {
        this.two_factor_auth = two_factor_auth;
    }

    public String getTfa_token() {
        return tfa_token;
    }

    public void setTfa_token(String tfa_token) {
        this.tfa_token = tfa_token;
    }

    public Integer getOpen_api() {
        return open_api;
    }

    public void setOpen_api(Integer open_api) {
        this.open_api = open_api;
    }

    public String getOpen_api_appkey() {
        return open_api_appkey;
    }

    public void setOpen_api_appkey(String open_api_appkey) {
        this.open_api_appkey = open_api_appkey;
    }

    public Integer getIs_disabled() {
        return is_disabled;
    }

    public void setIs_disabled(Integer is_disabled) {
        this.is_disabled = is_disabled;
    }

    public String getProblem_permisson() {
        return problem_permisson;
    }

    public void setProblem_permisson(String problem_permisson) {
        this.problem_permisson = problem_permisson;
    }

    public String getSession_keys() {
        return session_keys;
    }

    public void setSession_keys(String session_keys) {
        this.session_keys = session_keys;
    }
}
