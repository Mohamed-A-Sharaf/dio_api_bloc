class Launches {
  late int flightNumber;
  late int? flightYear;
  late String? launchYear;
  late String? rocketID;
  late String? rocketName;
  late String? rocketType;

  Launches.fromJson(Map<String, dynamic> json) {
    flightNumber = json["flight_number"];
    flightYear = json["flight_number"];
    launchYear = json["launch_year"];
    rocketID = json["rocket_id"];
    rocketName = json["rocket_name"];
    rocketType = json["rocket_type"];
  }
}
