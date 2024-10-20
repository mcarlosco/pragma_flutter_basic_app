enum Urgency {
  normal,
  urgent;

  static Urgency from(bool urgent) => urgent ? Urgency.urgent : Urgency.normal;
}
