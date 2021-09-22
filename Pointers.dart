//! STEP 1 - Define a typedef
typedef void Callback(double newBalace);

class ATM {
  double _balance;

  //! STEP 2 - Create a function pointer
  Callback? mobileNumber = null;

  ATM(this._balance);

  void withdraw(double amount) {
    _balance -=  amount;

    //! STEP 3 - Call the callback function
    if(mobileNumber != null) mobileNumber!(_balance);
  }

  //! Receive callback from the caller
  void notifyMe(Callback mobileNumber) {
    this.mobileNumber = mobileNumber;
  }
}

//! STEP 5 - write the callback function 
void myMobile(double amt) {
  print("New balance is $amt");
}

void main() {
  var a = ATM(1000);

  //! STEP 6 - provide callback to the class

  a.notifyMe(myMobile);
  a.withdraw(100);
  a.withdraw(200);
}