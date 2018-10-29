package top.youshang520i.pojo;

import org.springframework.stereotype.Service;

@Service("fadmin")
public class F_admin {
  private Long id;
  private String code;
  private String username;
  private String password;
  private String name;
  private Long sex;
  private Long age;
  private String post;
  private String qq;
  private String tel;
  private String email;
  private String other;
  private Long role_id;
  private Long state;
  private java.sql.Timestamp add_time;
  private java.sql.Timestamp login_time;
  private String remark;

  public Long getId() {
    return id;
  }


  public void setId(Long id) {
    this.id = id;
  }

  public String getCode() {
    return code;
  }

  public void setCode(String code) {
    this.code = code;
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

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public Long getSex() {
    return sex;
  }

  public void setSex(Long sex) {
    this.sex = sex;
  }

  public Long getAge() {
    return age;
  }

  public void setAge(Long age) {
    this.age = age;
  }

  public String getPost() {
    return post;
  }

  public void setPost(String post) {
    this.post = post;
  }

  public String getQq() {
    return qq;
  }

  public void setQq(String qq) {
    this.qq = qq;
  }

  public String getTel() {
    return tel;
  }

  public void setTel(String tel) {
    this.tel = tel;
  }

  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }

  public String getOther() {
    return other;
  }

  public void setOther(String other) {
    this.other = other;
  }

  public Long getRole_id() {
    return role_id;
  }

  public void setRole_id(Long role_id) {
    this.role_id = role_id;
  }

  public Long getState() {
    return state;
  }

  public void setState(Long state) {
    this.state = state;
  }

  public java.sql.Timestamp getAdd_time() {
    return add_time;
  }

  public void setAdd_time(java.sql.Timestamp add_time) {
    this.add_time = add_time;
  }

  public java.sql.Timestamp getLogin_time() {
    return login_time;
  }

  public void setLogin_time(java.sql.Timestamp login_time) {
    this.login_time = login_time;
  }

  public String getRemark() {
    return remark;
  }

  public void setRemark(String remark) {
    this.remark = remark;
  }

  @Override
  public String toString() {
    return "F_admin{" +
            "id=" + id +
            ", code='" + code + '\'' +
            ", username='" + username + '\'' +
            ", password='" + password + '\'' +
            ", name='" + name + '\'' +
            ", sex=" + sex +
            ", age=" + age +
            ", post='" + post + '\'' +
            ", qq='" + qq + '\'' +
            ", tel='" + tel + '\'' +
            ", email='" + email + '\'' +
            ", other='" + other + '\'' +
            ", role_id=" + role_id +
            ", state=" + state +
            ", add_time=" + add_time +
            ", login_time=" + login_time +
            ", remark='" + remark + '\'' +
            '}';
  }
}
