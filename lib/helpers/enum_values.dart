class EnumValues<T> {
  final Map<String, T> map;
  EnumValues(this.map);

  T? operator [](String key) => map[key];
}