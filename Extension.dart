//! extension DOES NOT add new methods

extension on List {

  //% compile time replacement

  push(value) => this.add(value);
  pop() => this.removeLast();
  shift() => this.removeAt(0);
  unshift(value) => this.insert(0, value);

  //% Check if list contains same elements, even if not in same sequence

  same(List<int> rhs) {
    print("$this, ${this.runtimeType}");

    var l1 = this.toList();
    var l2 = rhs.toList();

    l1.sort();
    l2.sort();

    print("list l1 : $l1");
    print("list l2: $l2");
    for(var i=0;i<l1.length; i++){
      if(l1[i] != l2[i]) return false;
    }
    return true;
  }

}

void main()
{
  var list=[11,23,36];
  
  list.push(43);

  list.unshift(2);

  print(list);

  list.pop();

  list.shift();

  print(list);

  var list1 = [11,2,3];
  var list2 = [2,3,11];
  print(list1.same(list2));
  
}