package top.youshang520i.pojo;

public class F_air_route {
  private Long id;
  private String airport_start;
  private String airport_end;
  private String airport_end_spare;
  private Double mileage;
  private java.sql.Timestamp add_time;

  public Long getId() {
    return id;
  }

  public void setId(Long id) {
    this.id = id;
  }

  public String getAirport_start() {
    return airport_start;
  }

  public void setAirport_start(String airport_start) {
    this.airport_start = airport_start;
  }

  public String getAirport_end() {
    return airport_end;
  }

  public void setAirport_end(String airport_end) {
    this.airport_end = airport_end;
  }

  public String getAirport_end_spare() {
    return airport_end_spare;
  }

  public void setAirport_end_spare(String airport_end_spare) {
    this.airport_end_spare = airport_end_spare;
  }

  public Double getMileage() {
    return mileage;
  }

  public void setMileage(Double mileage) {
    this.mileage = mileage;
  }

  public java.sql.Timestamp getAdd_time() {
    return add_time;
  }

  public void setAdd_time(java.sql.Timestamp add_time) {
    this.add_time = add_time;
  }
}
