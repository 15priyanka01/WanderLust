package com.mmt.model.bl;

import java.io.IOException;
import java.sql.SQLException;

public class FlightPaymentBl {
	WalletBlMMT walletBL=new WalletBlMMT();
	public float cartValue(float flightTicketPrice, int seats){
		return flightTicketPrice*seats;
	}
	
	public boolean checkFunds(String userId, float valueAfterPromotion ) throws ClassNotFoundException, SQLException, IOException{
		float amountShort=0;
		amountShort = (float) (valueAfterPromotion - walletBL.walletBalance(userId));
		if(amountShort<0){
			return false;
		}
		return true;
	}
	
	
}
