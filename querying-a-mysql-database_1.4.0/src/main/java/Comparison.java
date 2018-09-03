import org.mule.api.MuleEventContext;
import org.mule.api.MuleMessage;
import org.mule.api.lifecycle.Callable;

import com.mulesoft.weave.reader.json.JsonObject;

public class Comparison implements Callable{

	@Override
	public Object onCall(MuleEventContext eventContext) throws Exception {
		// TODO Auto-generated method stub
		
		MuleMessage message=eventContext.getMessage();
		JsonObject json=(JsonObject) message.getPayload();
		String jsonString = json.toString();
		while(jsonString.equals('3'))
		{
			for(jsonString=0, jsonString.Wind<=20,jsonString++)
			{
				
			}
		}
		
		Object output = null;
		message.setPayload(output);
		return null;
	}

	
}
