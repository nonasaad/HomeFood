package com.homefood.Iocale;
import java.util.Locale;
import java.util.ResourceBundle;

public class Internationalization {
	
	private ResourceBundle bundleLang;
	
	public Internationalization() {
		//get the default language 
		Locale locale = Locale.getDefault();
		setLanguage(locale.getLanguage(),locale.getCountry());
	}
	
	//Function used to switch language 
	public void setLanguage(String lang,String country) {
		System.out.println("Set Lang:" + lang );
		try {
			Locale locale = new Locale(lang, country);
			if (locale.getLanguage() == "fr")
				bundleLang = ResourceBundle.getBundle("LangResourceBundle_fr_CA",locale);
			else if(locale.getCountry() == "US")
				bundleLang = ResourceBundle.getBundle("LangResourceBundle_en_US",locale);
			else
				bundleLang = ResourceBundle.getBundle("LangResourceBundle",locale);
		} catch (Exception e) {
			System.out.println("Error Loading Bundle:" + e.getMessage());
		}
	}
	
	//get the translation
	public String getLangTransString(String strValue) {
		String strTrans="";
		try {
			//get the translation 
			strTrans = bundleLang.getString(strValue);
		} catch (Exception e) {
			System.out.println("Error Loading Bundle:" + e.getMessage());
		}
		//if string not found then return original string
		if(strTrans.isEmpty()) strTrans = strValue;
		
		//Used for debugging 
		System.out.println(strValue + ":" + strTrans);
		
		return strTrans;
	}
}
