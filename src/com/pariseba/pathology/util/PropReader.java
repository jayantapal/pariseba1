package com.pariseba.pathology.util;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class PropReader {
	InputStream inputStream;
	static Properties prop;
	PropReader(){
	inputStream = this.getClass().getClassLoader().getResourceAsStream("config.properties");	}
	
	public  Properties getProperties()
	{
		try {
		prop = new Properties();
		prop.load(inputStream);
		}catch (IOException ex) {
			ex.printStackTrace();
		} finally {
			if (inputStream != null) {
				try {
					inputStream.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		
		
		return prop;
	}
	
	


}
