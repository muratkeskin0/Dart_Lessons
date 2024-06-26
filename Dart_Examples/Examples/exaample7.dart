void main() {
  var myPc = Map<String, dynamic>();
  myPc["İşlemci"] = "Intel Core i7";
  myPc["Ram"] = "16GB";
  myPc["Ekran Kartı"] = "NVIDIA GeForce RTX 3080";

  var friendPc = Map<String, dynamic>();
  friendPc["İşlemci"] = "Intel Core i5";
  friendPc["Ram"] = "32GB";
  friendPc["Ekran Kartı"] = "NVIDIA GeForce RTX 2040";

  List<Map<String, dynamic>> pcs = [];

  pcs.add(myPc);
  pcs.add(friendPc);

  for (var element in pcs) {
    print(element);
  }
}
