public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  
//public final static String e = "1.9999999999999999999999999999" <- test for a number without prime
public void setup(){ 
  for(int i = 2; i < e.length(); i++){
    if(i + 10 >= e.length()){
    System.out.println("No prime number found");
    System.out.println("false");
   break;
  }else if(i+10 <e.length()){
    String digits = e.substring(i,i+10);
    double num = Double.parseDouble(digits);
    if(isPrime(num)){
      System.out.println(num);
      System.out.println("True");
   break;
      }
    }
  }
}
 
public boolean isPrime(double num){
  boolean isPrime = true;
  if(num < 2){
    isPrime = false;
   }else{
    for (int i = 2; i <= Math.sqrt(num); i++){
      if(num%i == 0){
       isPrime = false;
      break;
  }else{
    isPrime = true;
      }
    }  
  }
  return isPrime;
}
