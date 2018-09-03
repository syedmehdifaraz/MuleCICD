package app.soap;
import javax.jws.WebService;

@WebService

public class SoapClass implements SoapInterface {

	@Override
	public String SoapTest(String name) {
		// TODO Auto-generated method stub
		//Business Logic will be written over here
		
		return "Hello"+ name + "Testing SoapWebservice";
		
}

	@Override
	public int SoapaddTest(int a, int b) {
		// TODO Auto-generated method stub
		return a+b;
	}
}