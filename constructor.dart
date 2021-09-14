//% const constructor

class Point {
  final int x;
  final int y;
  //! constant contructor
  //! returns the same object for same parameters
  const Point(this.x, this.y);
}

void main() {
  var p1 = const Point(1, 1);
  var p2 = const Point(1, 1);
  print(p1 == p2);
}
