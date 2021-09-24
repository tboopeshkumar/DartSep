 class Node<T> {
   T value;
   Node<T>? next;
   Node(this.value);
 }

 class LinkedList<T> {
   Node? head;
   Node? tail;

   void add(T value) {
     var newNode = Node<T>(value);
     if(head == null) 
      head = newNode;
     else
      tail!.next = newNode;
      tail = newNode; 
   }

   void printForward() {
     for(var pointer = head; pointer != null; pointer = pointer.next) {
       print(pointer.value);
     }
   }
 }

 void main() {
   var llist = LinkedList<int>();
   llist.add(10);
   llist.add(20);
   llist.add(30);
   llist.printForward();

   var llistString = LinkedList<String>();
   llistString.add("Test1");
   llistString.add("Test2");
   llistString.add("Test3");
   llistString.printForward();
   print(llistString.runtimeType);
 }