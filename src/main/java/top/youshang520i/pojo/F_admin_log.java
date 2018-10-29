package top.youshang520i.pojo;

public class F_admin_log {
  private Long id;
  private String username;
  private String name;
  private Long role_id;
  private String cotent;
  private Long type;
  private java.sql.Timestamp add_time;

  public Long getId() {
    return id;
  }

  public void setId(Long id) {
    this.id = id;
  }

  public String getUsername() {
    return username;
  }

  public void setUsername(String username) {
    this.username = username;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public Long getRole_id() {
    return role_id;
  }

  public void setRole_id(Long role_id) {
    this.role_id = role_id;
  }

  public String getCotent() {
    return cotent;
  }

  public void setCotent(String cotent) {
    this.cotent = cotent;
  }

  public Long getType() {
    return type;
  }

  public void setType(Long type) {
    this.type = type;
  }

  public java.sql.Timestamp getAdd_time() {
    return add_time;
  }

  public void setAdd_time(java.sql.Timestamp add_time) {
    this.add_time = add_time;
  }
}
