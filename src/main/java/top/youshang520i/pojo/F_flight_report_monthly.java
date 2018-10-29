package top.youshang520i.pojo;

public class F_flight_report_monthly {
  private Long id;
  private Long day;
  private Long flights;
  private Long passengers;
  private Long cargo_weight;
  private Long rtype;
  private java.sql.Timestamp add_time;

  public Long getId() {
    return id;
  }

  public void setId(Long id) {
    this.id = id;
  }

  public Long getDay() {
    return day;
  }

  public void setDay(Long day) {
    this.day = day;
  }

  public Long getFlights() {
    return flights;
  }

  public void setFlights(Long flights) {
    this.flights = flights;
  }

  public Long getPassengers() {
    return passengers;
  }

  public void setPassengers(Long passengers) {
    this.passengers = passengers;
  }

  public Long getCargo_weight() {
    return cargo_weight;
  }

  public void setCargo_weight(Long cargo_weight) {
    this.cargo_weight = cargo_weight;
  }

  public Long getRtype() {
    return rtype;
  }

  public void setRtype(Long rtype) {
    this.rtype = rtype;
  }

  public java.sql.Timestamp getAdd_time() {
    return add_time;
  }

  public void setAdd_time(java.sql.Timestamp add_time) {
    this.add_time = add_time;
  }
}
