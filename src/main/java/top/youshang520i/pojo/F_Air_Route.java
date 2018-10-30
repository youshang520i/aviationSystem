package top.youshang520i.pojo;


public class F_Air_Route {

  private Integer id;
  private String airport_Start;
  private String airport_End;
  private String airport_End_Spare;
  private double mileage;
  private String add_Time;


  public Integer getId() {
    return id;
  }

  public void setId(Integer id) {
    this.id = id;
  }


  public String getAirport_Start() {
    return airport_Start;
  }

  public void setAirport_Start(String airport_Start) {
    this.airport_Start = airport_Start;
  }


  public String getAirport_End() {
    return airport_End;
  }

  public void setAirport_End(String airport_End) {
    this.airport_End = airport_End;
  }


  public String getAirport_End_Spare() {
    return airport_End_Spare;
  }

  public void setAirport_End_Spare(String airport_End_Spare) {
    this.airport_End_Spare = airport_End_Spare;
  }


  public double getMileage() {
    return mileage;
  }

  public void setMileage(double mileage) {
    this.mileage = mileage;
  }


  public String getAdd_Time() {
    return add_Time;
  }

  public void setAdd_Time(String add_Time) {
    this.add_Time = add_Time;
  }

}
