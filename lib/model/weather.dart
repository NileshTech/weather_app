class Weather {
  final temp;
  final pressure;
  final humidity;

  Weather(
    this.temp,
    this.pressure,
    this.humidity,
  );

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      json["temp"],
      json["pressure"],
      json["humidity"],
    );
  }
}
