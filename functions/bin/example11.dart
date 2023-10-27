void main(List<String> args) {
  describeFully('Foo');
  describeFully('Foo', lastName: null);
  describeFully('Foo', lastName: 'Baz');
}

/// (String firstName): it is a positional parametrs that we need to specify it
/// he can't be a null value becase it is not a optional (?) arguments
///
/// {String? lastName = 'Bar'} : it is an optional name parametrs, can be null

void describeFully(
  String firstName, {
  String? lastName = 'Bar',
}) {
  print("$firstName $lastName");
}
