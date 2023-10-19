class Bank
{
  int blnc = 0;
  void savings(int savingsamount)
  {
    print("My current savings is $savingsamount");
  }
  void deposit(int depamnt,{int? minblnc})
  {
    if (minblnc != null)
    {
      blnc = minblnc+ depamnt;
      print("Balance after deposit is $blnc");
    }
    else if (minblnc == null)
    {
      blnc = depamnt;
      print("Balance after deposit is $blnc");
    }
    else if(depamnt == 0)
    {
      blnc = minblnc;
      print("Balance after deposit is $blnc");
    }
  }
  void withdraw(int amnt)
  {
    if(blnc != 0)
    {
      blnc = blnc - amnt;
      print("Balance after withdrawal is $blnc");
    }
    else
    {
      print("Insufficient balance");
    }
  }
  void balancecheck()
  {
    if(blnc != 0)
    {
      print("Your current account balance is $blnc");
    }
    else
    {
      print("Your account balance is 0");
    }
  }
}
class SBI extends Bank
{
  double rateofinterest = 7;
}
class SBIkakkanad extends SBI
{
  String name = "Jithin";
  int accno = 898552355556;
  String ifsc = "SBI0328868";
  int minblnc = 3000;
}
void main()
{
  SBIkakkanad obj = SBIkakkanad();
  print("SBI kakkanad Account details");
  print("Account holder name ${obj.name}");
  print("Account number ${obj.accno}");
  print("IFSC ${obj.ifsc}");
  print("ROI at SBI ${obj.rateofinterest}");
  obj.savings(100000);
  obj.deposit(1000, minblnc: obj.minblnc);
  obj.withdraw(2000);
  obj.balancecheck();
}