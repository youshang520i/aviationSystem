package top.youshang520i.pojo;


public class F_Flight_Report_Monthly {

  private Integer id;
  private Integer day;
  private Integer flights;
  private Integer passengers;
  private Integer cargo_Weight;
  private Integer rtype;
  private String add_Time;


  public Integer getId() {
    return id;
  }

  public void setId(Integer id) {
    this.id = id;
  }


  public Integer getDay() {
    return day;
  }

  public void setDay(Integer day) {
    this.day = day;
  }


  public Integer getFlights() {
    return flights;
  }

  public void setFlights(Integer flights) {
    this.flights = flights;
  }


  public Integer getPassengers() {
    return passengers;
  }

  public void setPassengers(Integer passengers) {
    this.passengers = passengers;
  }


  public Integer getCargo_Weight() {
    return cargo_Weight;
  }

  public void setCargo_Weight(Integer cargo_Weight) {
    this.cargo_Weight = cargo_Weight;
  }


  public Integer getRtype() {
    return rtype;
  }

  public void setRtype(Integer rtype) {
    this.rtype = rtype;
  }


  public String getAdd_Time() {
    return add_Time;
  }

  public void setAdd_Time(String add_Time) {
    this.add_Time = add_Time;
  }

}
