void main(List<String> args) {
  print('late fullName is being initialized');
  late final fullName = getFullName();
  final resolvedFullName = fullName;
  print('resoledFullName = $resolvedFullName');

}

String getFullName() {
  print('getFulName() is called');
  return 'RAFYA Hamza';
}
