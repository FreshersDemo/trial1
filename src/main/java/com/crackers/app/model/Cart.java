package com.crackers.app.model;
public class Cart 
{
	
	private long cartCrackersId;
	private String cartCrackersName;
	private String cartCrackersCategory;
	private double cartCrackersPrice;
	private int cartQuantity;
	private String cartEmailid;
	
	public long getCartCrackersId() 
	{
		return cartCrackersId;
	}

	public void setCartCrackersId(long cartCrackersId) 
	{
		this.cartCrackersId = cartCrackersId;
	}

	public String getCartCrackersName() 
	{
		return cartCrackersName;
	}

	public void setCartCrackersName(String cartCrackersName) 
	{
		this.cartCrackersName = cartCrackersName;
	}

	public double getCartCrackersPrice() 
	{
		return cartCrackersPrice;
	}
	
	public void setCartCrackersPrice(double cartCrackersPrice) 
	{
		this.cartCrackersPrice = cartCrackersPrice;
	}
	public String getCartCrackersCategory() 
	{
		return cartCrackersCategory;
	}

	public void setCartCrackersCategory(String cartCrackersCategory) 
	{
		this.cartCrackersCategory = cartCrackersCategory;
	}
	
	public int getCartQuantity() 
	{
		return cartQuantity;
	}

	public void setCartQuantity(int cartQuantity) 
	{
		this.cartQuantity = cartQuantity;
	}

	
	public String getCartEmailid() {
		return cartEmailid;
	}

	public void setCartEmailid(String cartEmailid) {
		this.cartEmailid = cartEmailid;
	}

	
}