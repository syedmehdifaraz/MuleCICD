package app.soap;
import javax.jws.WebMethod;
import javax.jws.WebService;

@WebService

public interface SoapInterface {

	@WebMethod
	String SoapTest(String name);
	
	@WebMethod
	int SoapaddTest(int a, int b);
	
	
}
