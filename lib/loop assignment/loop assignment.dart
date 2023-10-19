void main(){
  /// sum of 1st 10 natural numbers
  int sum=0;
  for(int i=1; i<=10; i++){
    sum=sum+i;
  }
  print('sum of 1st 10 natural numbers is $sum');

  int sumeven=0, sumodd=0;
  for(int j=1; j<=10; j++){
    if (j%2==0){
      sumeven=sumeven+j;
    }else{
      sumodd=sumodd+j;
    }
  }
  print('sum of even numbers 1 to 10-->$sumodd');
  print('sum of odd numbers 1 to 10--> $sumeven');

  int number=5;
  for(int l=1;l<=10;l++){
    print('$number*$l=${number* l}');}

}
