String _name = "";
String _id = "";

String inner() {
  return "Hello Agent $_name your id is $_id";
}

void outer(String n, String i) {
  _name = n.split(" ")[1][0] + "." + n.split(" ")[0];
  _id = i;
  print(inner());
}