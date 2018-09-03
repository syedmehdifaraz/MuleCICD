package com.cateringservices.rules;

public class menu {
	public String itemName;
	public int itemPrice;
	public int itemQuantity;
	public int itemLoyalPoints;
	public String menuDay;
	public String menuDate;
	
	public String getMenuDate() {
		return menuDate;
	}
	public void setMenuDate(String menuDate) {
		this.menuDate = menuDate;
	}

	public String getMenuDay() {
		return menuDay; }
	public void setMenuDay(String menuDay){
		this.menuDay = menuDay;	}
	public String getItemName() {
		return itemName; }
	public void setItemName(String itemName) {
		this.itemName=itemName; }
	public int getItemPrice() {
		return itemPrice; }
	public void setItemPrice(int itemPrice) {
		this.itemPrice=itemPrice; }
	public int getItemQuantity() {
		return itemQuantity;  }
	public void setItemQuantity(int itemQuantity) {
		this.itemQuantity=itemQuantity;  }
	public int getItemLoyalPoints() {
		return itemLoyalPoints;   }
	public void setItemLoyalPoints(int itemLoyalPoints) {
		this.itemLoyalPoints=itemLoyalPoints; }
}
