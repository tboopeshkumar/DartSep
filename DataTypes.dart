void main() {
  int i = 5;
  double d = 3.14;
  String name = "Lars";
  bool jobDone = false;

  num n = 10;

  print("$i $d $name $jobDone");

  print(n.runtimeType);

  num p = 3.14;
  print(p.runtimeType);

  var x = 5;
  print("$x, ${x.runtimeType}");

  var list = [1, 2, 3];
  print("$list, ${list.runtimeType}");

  var map = {'id': 1, 'name': 'Lars Bak'};
  print(map);

  var set = {1, 1, 1, 2, 1, 1, 2, 2, 3, 4, 5, 3};
  print(set);

  var bi = BigInt.parse(123534535345435464654645653656536563456534645365463456);
  print(bi);
}
