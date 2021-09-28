//% generator (like async func) does multiple returns
//% async does return when it comes across await
//% generator does return when it comes across yield

//! sync means function is rewritten using switch-case (state machine)
//! sync* means its a generator and not a future

Iterable<int> naturalNumber(int max) sync* {
  for(var i=0;i<=max; i++) {
    yield i;
  }
}

Iterable<int> range(int start, int stopBefore, int skip) sync* {
  while(start < stopBefore) {
    yield start; //~ Returns new value on every call.
    start += skip; //~ Next iteration execution starts from here. 
  }
}

void main() {
  print(naturalNumber(10));
  for(var value in range(2, 13, 2)) {
    print(value);
  }
}

