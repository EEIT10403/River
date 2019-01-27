package _21_traveling.controller;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.zip.GZIPInputStream;

import org.json.JSONArray;
import org.json.JSONObject;

public class testjson {
	
	public static void main(String[] args) {

//		String strjson = testjson.readhttp_info("https://maps.googleapis.com/maps/api/place/findplacefromtext/json?input=%E5%8F%B0%E5%8C%97%20%E5%8F%B0%E5%8C%97101&inputtype=textquery&fields=geometry&key=AIzaSyA1O4vNHfOVtr86ZtznzI4ZeqOBQIM7q5Y");
//		
//		JSONObject json = new JSONObject(strjson);
//		JSONArray arraycandidates= (JSONArray)json.getJSONArray("candidates");
//		System.out.println("arraycandidates="+arraycandidates.toString());
//		JSONObject objectgeometry =arraycandidates.getJSONObject(0);
//		System.out.println("objectgeometry="+objectgeometry.toString());
//		JSONObject objgeometry =objectgeometry.getJSONObject("geometry");
//		System.out.println("objgeometry="+objgeometry);
//		JSONObject location =objgeometry.getJSONObject("location");
//		System.out.println(location.toString());
		
		JSONObject test =new JSONObject();
		test.putOpt("sea", "test");
		test.append("sea2","taiwan2");
		System.out.println(test);
	}
	
	  private static String readhttp_info(String httpUrl) {

		    StringBuffer strBuffer = new StringBuffer("");   
		            HttpURLConnection httpURLConnection = null;   
		            InputStream inputStream = null;   
		            BufferedReader rufferedReader = null;   
		            //用於解碼   
		            GZIPInputStream gzin = null;   
		               
		            try {   
		                URL serverUrl = new URL(httpUrl);   
		                httpURLConnection = (HttpURLConnection) serverUrl.openConnection();   
		                //設定請求的頭資訊   
		                httpURLConnection.setRequestProperty("Accept-charset", "utf-8");   
		                httpURLConnection.setRequestProperty("Accept", "text/javascript, application/javascript, application/ecmascript, application/x-ecmascript, */*; q=0.01");   
		                httpURLConnection.setRequestProperty("Accept-Encoding", "gzip, deflate");   
		                httpURLConnection.setRequestProperty("Accept-Language", "zh-CN,en-US;q=0.8,zh;q=0.5,en;q=0.3");   
		                httpURLConnection.setRequestProperty("Connection","keep-alive");   
		                httpURLConnection.setRequestProperty("User-Agent","Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101 Firefox/52.0");   
		                System.out.println("請求url的響應狀態碼:"+httpURLConnection.getResponseCode());   
		                //狀態碼200是請求成功   
		                if (HttpURLConnection.HTTP_OK == httpURLConnection.getResponseCode()) {   
		                    inputStream = httpURLConnection.getInputStream();   
		                    System.out.println("伺服器響應的內容的編碼格式:"+httpURLConnection.getContentEncoding());   
		                    //轉碼   
		                    gzin = new GZIPInputStream(inputStream);
		                    rufferedReader = new BufferedReader(new InputStreamReader(   
		                            gzin,"utf-8"));   
		                    String str = null;   
		                    while ((str = rufferedReader.readLine()) != null) {   
		                        strBuffer.append(str);   
		                        strBuffer.append("\r\n");   
		                    }    
		                    System.out.println(strBuffer);  	             
		               }   
		            }catch(Exception e) {   
		                e.printStackTrace();   
		            }
		            finally{   
		                httpURLConnection.disconnect();   
		                //這裡把相關的流也關閉吧,我這裡就不寫了   
		            }   
		             
		            return strBuffer.toString(); 
		   } 

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
