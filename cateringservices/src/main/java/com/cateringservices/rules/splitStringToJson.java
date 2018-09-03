package com.cateringservices.rules;

import java.util.regex.Pattern;
import org.json.*;
import org.mule.api.MuleEventContext;
import org.mule.api.lifecycle.Callable;

public class splitStringToJson implements Callable {
	JSONObject addItem(String itemName, String price, String loyaltyPoints) {
		JSONObject item = new JSONObject();
		item.put("itemName", itemName.trim());
		item.put("itemPrice", Integer.parseInt(price.trim()));
		item.put("itemLoyaltyPoints", Integer.parseInt(loyaltyPoints.trim()));
		return item;
	}
	@Override
	public Object onCall(MuleEventContext eventContext) throws Exception {
		String [] inputMenu = eventContext.getMessage().getPayloadAsString().split(Pattern.quote("+"));
		String [] menuItems = inputMenu[0].split(Pattern.quote("*"));
		JSONObject jsonResponse = new JSONObject();
		JSONArray Items = new JSONArray();
		for(int i=0;i<menuItems.length;i++) {
			String [] itemDetails = menuItems[i].split(Pattern.quote(","));
			//System.out.println("<<<Inner Json OBject>>>"+itemDetails);
			Items.put(addItem(itemDetails[0], itemDetails[1], itemDetails[2]));
		}
		Items.put(addItem("Coke", "3", "3"));
		Items.put(addItem("Diet Coke", "4", "3"));
		Items.put(addItem("Water", "1", "4"));
		Items.put(addItem("Tomato Ketchup", "1", "1"));
		Items.put(addItem("Sambal","1","1"));
		Items.put(addItem("Mayonnaise","1","1"));
		
		jsonResponse.put("Items", Items);
		jsonResponse.put("Day", inputMenu[1]);
		//System.out.println("JSON Response in Java >>>>"+jsonResponse);
		return jsonResponse;
	}
		
}
