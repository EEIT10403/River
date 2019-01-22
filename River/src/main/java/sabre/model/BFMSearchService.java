package sabre.model;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Base64;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.google.gson.Gson;


@Service
@Transactional
public class BFMSearchService {
	
	@Autowired
	private Token token;
	
//	@Transactional(readOnly=true)
	public Token getBFM() throws IOException{
				
		/*
		 * Step 1
		 * 取得ClientID
		 * 
		 */
		String ClientID = "V1:987632:A2U8:AA";// "V1:d6ztddyuw791ocj6:DEVCENTER:EXT";
		String Password = "SDY2KUL";// "rDd0nE8G";

		/*
		 * Step 2
		 * 轉換為Base64String
		 * 
		 */
		String Base_ClientID = Base64.getEncoder().encodeToString(ClientID.getBytes("utf-8"));
		String Base_Password = Base64.getEncoder().encodeToString(Password.getBytes("utf-8"));
		String Base_Compose = Base64.getEncoder().encodeToString((Base_ClientID + ":" + Base_Password).getBytes("utf-8"));

		/*
		 * Step 3
		 * 取得AccessToken
		 */
		// https: //api.sabre.com 正式環境
		// https: //api.test.sabre.com 測試環境
		URL url = new URL("https://api.sabre.com/v2/auth/token");
		StringBuffer tokenresponse = new StringBuffer();

		HttpURLConnection hreq = (HttpURLConnection) url.openConnection();
		hreq.setRequestMethod("POST");
		hreq.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
		hreq.setRequestProperty("Authorization", "Basic " + Base_Compose);
		hreq.setDoOutput(true);

		OutputStream os = hreq.getOutputStream();
		os.write("grant_type=client_credentials".getBytes("utf-8"));
		os.close();

		BufferedReader in = new BufferedReader(new InputStreamReader(hreq.getInputStream()));
		String inputLine;

		while ((inputLine = in.readLine()) != null) {
			tokenresponse.append(inputLine);
		}
		in.close();
		System.out.println("TOKEN JSON :有正常執行");

		Gson gson = new Gson();
		token = gson.fromJson(tokenresponse.toString(), Token.class);

		
		return token;
	}
	
	
	
	

}
