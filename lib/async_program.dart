Future<void> hello(String name) async {
  print("Hello $name");
}

Future<String> helloStr(String name) async {
  return Future.value("Hello $name");
}
