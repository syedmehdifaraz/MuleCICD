package snippet;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.mule.api.MuleEventContext;
import org.mule.api.MuleMessage;
import org.mule.api.lifecycle.Callable;



public class Comparison implements Callable{

	@Override
	public Object onCall(MuleEventContext eventContext) throws Exception {
		// TODO Auto-generated method stub
		
		MuleMessage message=eventContext.getMessage();
		System.out.println("----------------------Test---------------------"+message.getPayload());
		String payload=message.getPayloadAsString();
		JSONParser parser = new JSONParser();
		JSONObject json = (JSONObject) parser.parse(payload);
		
		System.out.println("Test------2"+json);
		//JSONObject json=(JSONObject) message.getPayload();
		//String jsonString = json.toString();
	//	System.out.println("----------------------Test---------------------"+json);
		/*while(jsonString.equals('3'))
		{
		
		}
		*/
		Object output = null;
		message.setPayload(output);
		return null;
	}

	
}
