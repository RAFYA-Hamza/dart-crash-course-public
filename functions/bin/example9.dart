void main(List<String> args) {
  /// these are all invalid code
  /// sayGoodBye(null, null);
  /// seyGoodBye('bar');
  /// sayGoodBye();

  sayGoodBye('Foo', 'Bar');
}

void sayGoodBye(
  String? person,
  String andOtherPerson,
) {
  print('Goodbye, $person and $andOtherPerson!');
}
