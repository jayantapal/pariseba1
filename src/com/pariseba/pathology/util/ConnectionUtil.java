
package com.pariseba.pathology.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Properties;


public class ConnectionUtil {

    public static Connection getConnection(){
    	
    	Properties prop=new PropReader().getProperties();
 
    	String driverName=prop.getProperty("db.drivername");
    	String url=prop.getProperty("db.dburl");
    	String userName=prop.getProperty("db.username");
    	String password=prop.getProperty("db.password");
      Connection conn = null;
        try {
            Class.forName(driverName);
            conn = DriverManager.getConnection(url,userName, password);
        }catch(Exception e){
        e.printStackTrace();}
    return conn;
    }
    
    
    public static void main(String[] args) {
    	getConnection();
    	System.out.println("Connected...");
	}
   

}
