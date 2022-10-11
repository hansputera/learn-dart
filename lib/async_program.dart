Future<void> hello(String name) async {
  print(await helloStr(name));
}

Future<String> helloStr(String name) async {
  return Future.value("Hello $name");
}
