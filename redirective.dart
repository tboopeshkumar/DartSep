class Employee {
  int id;
  String name;
  String dept;

  //% redirective constructor
  Employee(id, name) : this.withDept(id, name, ""); //! <- redirect to this ctor

  //! For new hires, dept is not assigned yet
  //% Uses member initializer
  Employee.newJoinee(this.id, this.name) : dept = "";

  //% auto assign fields
  Employee.withDept(this.id, this.name, this.dept);
}

void main() {
  var e1 = Employee(1, "Boopesh");
  var e2 = Employee.withDept(2, "Kumar", "Dev");
  var e3 = Employee.newJoinee(3, "Agan");
}
