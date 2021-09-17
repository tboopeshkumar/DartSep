//% lists in dart -> basically a linked list
void main() {

  var mixListNum = [1, 11.90];
  var mixListObject = [1, "abc", true];
  var inferredIntList = [1,2,3];
  var dynamicList = [];
  var explicitTypedDoubleList = <double>[];

  print("mixList is ${mixListNum.runtimeType}");
  print("mixListObject is ${mixListObject.runtimeType}");
  print("inferredIntList is ${inferredIntList.runtimeType}");
  print("dynamicList is ${dynamicList.runtimeType}");
  print("explicitTypedDoubleList is ${explicitTypedDoubleList.runtimeType}");

  //* List comprehensions
  var init = 100;
  var l2 = [
    if (init == 100) init,
    for (var i = 0; i< 10; i++)
      if (i % 2 == 0) i * i,
    for(var char = 65; char < 91; char++) String.fromCharCode(char) 
  ];
  print(l2);

  var l3 = [];
  for (var i = 0; i < 10; i++) l3.add(i);
  print(l3);

  var amount = 1;
  var sqr =(int x) => x * x;
  var l4 = [amount, (amount < 0) ? "DR" : "CR", sqr];
  print(l4);
}