package nl.utwente.di;

public class Quoter {
	
	public double getBookPrice(String number){
		double result = 0.0;
		if(number.equals("1")){
			result = 10.0;
		}else if(number.equals("2")){
			result = 45.0;
		}else if(number.equals("3")){
			result = 20.0;
		}else if(number.equals("4")){
			result = 35.0;
		}else if(number.equals("5")){
			result = 50.0;
		}
		return result;
	}
}
