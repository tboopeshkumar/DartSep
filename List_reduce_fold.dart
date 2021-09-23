void main() 
{

  var list = [11, 23, 36];

  var sum = 0;

  for(var index = 0; index <list.length; index++) {
    sum += list[index];
  }

  print("sum1 = $sum");

  sum =0;
  for(var element in list){
    sum += element;
  }

  print("sum2 = $sum");

  //% [11, 23, 36] first element (11) provided as initial value

  var result = list.reduce((value, element) => value + element);
  //~   |                     11,   23      =>  11   +  23    -> 34 (next value)
  //~   |                     34    36      =>  34   + 36     -> 70 (result)

  print("sum3 = $result");

  var result2 = list.fold(100, (int value, element) => value + element);
  //~   |                         100,       11      =>  100 + 11    -> 111 (next value)
  //~   |                         111,       23      =>  111 + 23    -> 134 (next value)
  //~   |                         134        36      =>  134 + 36    -> 170 (result)

  print("sum3 = $result2");

  var geniuses = ["Dennis Ritchie", "Alan Kay", "Lars Bak"];

  var str = geniuses.reduce((finalStr, element) => finalStr + ", " + element);

  //~ |  "Dennis Ritchie"              "Alan Kay"   =>  "Dennis Ritchie" + ", " + "Alay Kay"            -> "Dennis Richie, Alan Kay" (next value)
  //~ |  "Dennis Ritchie, Alan Kay"    "Lars Bak"   =>  "Dennis Ritchie, Alan Kay" + ", " + "Lars Bak"  -> "Dennis Richie, Alan Kay, Lars Bak"

  print(str);

  print(geniuses.join(", "));

  var expenses = [
    {"desc": "Zomato", "amount": 300},
    {"desc": "Amazon", "amount": 1500},
    {"desc": "Uber", "amount": 350}
  ];


  var total = expenses.fold(0, (int value, element) => value + (element["amount"] as int));

  print(total);
  
}