package com.homefood.Iocale;

import java.util.ResourceBundle;

public class Internationalization {
	
	private ResourceBundle dflLang,enUS,frCA;
	
	public Internationalization() {	}
	public Internationalization(String lang) {setLanguage(lang);}
	
	//Function used to switch language 
	public void setLanguage(String lang) {
		System.out.println("Set Lang:" + lang );
		try {
			if (lang.equalsIgnoreCase("fr")  && frCA == null)
				frCA = ResourceBundle.getBundle("LangResourceBundle_fr_CA");
			else if(lang.equalsIgnoreCase("US") && enUS == null)
				enUS = ResourceBundle.getBundle("LangResourceBundle_en_US");
			else if(dflLang == null)
				dflLang = ResourceBundle.getBundle("LangResourceBundle");
		} catch (Exception e) {
			System.out.println("Error Loading Bundle:[" + e.getMessage() + "]\n" + e.getStackTrace());
		}
	}
	
	//get the translation
	public String getLangTransString(String strValue) {
		return getTrans( "fr", strValue);
	}
	//get the translation
	public String getTrans(String lang,String strValue) {
		String strTrans="";
		try {
			setLanguage(lang);
			
			//get the translation 
			if(lang.equalsIgnoreCase("fr"))
				strTrans = frCA.getString(strValue);
			else if (lang.equalsIgnoreCase("en"))
				strTrans = enUS.getString(strValue);
			else
				strTrans = dflLang.getString(strValue);
		} catch (Exception e) {
			System.out.println("Error Loading Bundle for [" + lang + "] : " + e.getMessage() + "\n" + e.getStackTrace());
		}
		//if string not found then return original string
		if(strTrans.isEmpty()) strTrans = strValue;
		
		//Used for debugging 
		//System.out.println(strValue + ":" + strTrans);
		
		return strTrans;
	}
}
