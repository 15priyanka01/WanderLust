package com.mmt.model.bl;

import java.io.IOException;
import java.sql.SQLException;

public class HotelPaymentBl {
	WalletBlMMT walletBL=new WalletBlMMT();
	
	public float cartValue(float hotelRoomPrice, int days){
		return hotelRoomPrice*days;
	}
	
	public boolean checkFunds(String userId, double valueAfterPromotion ) throws ClassNotFoundException, SQLException, IOException{
		float amountShort=0;
		amountShort = (float) ( walletBL.walletBalance(userId)-valueAfterPromotion);
		if(amountShort<0){
			return false;
		}
		return true;
	}
}
