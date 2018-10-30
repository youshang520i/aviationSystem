package top.youshang520i.pojo;

import org.springframework.stereotype.Service;

@Service("fadmin")
public class F_Admin {

  private Integer id;
  private String code;
  private String username;
  private String password;
  private String name;
  private Integer sex;
  private Integer age;
  private String post;
  private String qq;
  private String tel;
  private String email;
  private String other;
  private Integer role_Id;
  private Integer state;
  private String add_Time;
  private String login_Time;
  private String remark;


  public Integer getId() {
    return id;
  }

  public void setId(Integer id) {
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


  public Integer getSex() {
    return sex;
  }

  public void setSex(Integer sex) {
    this.sex = sex;
  }


  public Integer getAge() {
    return age;
  }

  public void setAge(Integer age) {
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


  public Integer getRole_Id() {
    return role_Id;
  }

  public void setRole_Id(Integer role_Id) {
    this.role_Id = role_Id;
  }


  public Integer getState() {
    return state;
  }

  public void setState(Integer state) {
    this.state = state;
  }


  public String getAdd_Time() {
    return add_Time;
  }

  public void setAdd_Time(String add_Time) {
    this.add_Time = add_Time;
  }


  public String getLogin_Time() {
    return login_Time;
  }

  public void setLogin_Time(String login_Time) {
    this.login_Time = login_Time;
  }


  public String getRemark() {
    return remark;
  }

  public void setRemark(String remark) {
    this.remark = remark;
  }


  @Override
  public String toString() {
    return "F_Admin{" +
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
            ", role_Id=" + role_Id +
            ", state=" + state +
            ", add_Time='" + add_Time + '\'' +
            ", login_Time='" + login_Time + '\'' +
            ", remark='" + remark + '\'' +
            '}';
  }
}
