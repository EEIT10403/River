package sabre.controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.zip.GZIPInputStream;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import sabre.model.BFMSearchService;
import sabre.model.FormBean;
import sabre.model.Token;

@Controller
@SessionAttributes(names= {"formBean"})
public class FormController {
	
	@InitBinder
	public void initBinder(WebDataBinder binder)
	{
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		dateFormat.setLenient(false);
		binder.registerCustomEditor(java.util.Date.class, new CustomDateEditor(dateFormat, true));
	}
	
	@Autowired
	private BFMSearchService bFMSearchService;
	
	
	@RequestMapping(path= {"/form.controller"},method=RequestMethod.POST)
	public String saveForm(FormBean formBean,Model model,BindingResult bindingResult) throws Exception {
		
		System.out.println("起始地 ="+formBean.getZt_country().substring(0,3));
		System.out.println("目的地 ="+formBean.getZt_country02().substring(0,3));
		System.out.println("出發日 ="+formBean.getGodate());
		System.out.println("回程日 ="+formBean.getBackdate());
		System.out.println("人數 ="+formBean.getPeople());
				
		//修改查詢選項
		String city= formBean.getZt_country().substring(0,3);
		String endcity= formBean.getZt_country02().substring(0,3);
		Date godate =formBean.getGodate();
		Date backdate =formBean.getBackdate();
		Integer people =formBean.getPeople();
				
		SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss");
        String godatetime = format1.format(godate.getTime());
        System.out.println("出發時間 ="+godatetime);
               
		SimpleDateFormat format2 = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss");
        String backdatetime = format2.format(backdate.getTime());
        System.out.println("回程時間 ="+backdatetime);
                		
        StringBuffer bfmsearch = new StringBuffer();;
		bfmsearch.append("{\"OTA_AirLowFareSearchRQ\":{\"ResponseType\":\"OTA\",\"ResponseVersion\":\"3.4.0\",\"Target\":\"Production\",\"Version\":\"3.4.0\",\"POS\":{\"Source\":[{\"PseudoCityCode\":\"A2U8\",\"RequestorID\":{\"Type\":\"1\",\"ID\":\"1\",\"CompanyName\":{\"Code\":\"TN\"}}}]},\"OriginDestinationInformation\":[{\"RPH\":\"1\",\"DepartureDateTime\":\""+godatetime+"\",\"OriginLocation\":{\"LocationCode\":\""+city+"\"},\"DestinationLocation\":{\"LocationCode\":\""+endcity+"\"},\"TPA_Extensions\":{\"SegmentType\":{\"Code\":\"O\"}}},{\"RPH\":\"2\",\"DepartureDateTime\":\""+backdatetime+"\",\"OriginLocation\":{\"LocationCode\":\""+endcity+"\"},\"DestinationLocation\":{\"LocationCode\":\""+city+"\"},\"TPA_Extensions\":{\"SegmentType\":{\"Code\":\"O\"}}}],\"TravelPreferences\":{\"ValidInterlineTicket\":true,\"CabinPref\":[{\"Cabin\":\"Y\",\"PreferLevel\":\"Preferred\"}],\"TPA_Extensions\":{\"TripType\":{\"Value\":\"Return\"},\"LongConnectTime\":{\"Min\":780,\"Max\":1200,\"Enable\":true},\"ExcludeCallDirectCarriers\":{\"Enabled\":true}}},\"TravelerInfoSummary\":{\"SeatsRequested\":[1],\"AirTravelerAvail\":[{\"PassengerTypeQuantity\":[{\"Code\":\"ADT\",\"Quantity\":"+people+"}]}]},\"TPA_Extensions\":{\"IntelliSellTransaction\":{\"RequestType\":{\"Name\":\"50ITINS\"}}}}}");
		
        //呼叫model
		Token token = bFMSearchService.getBFM();
		
		/*
		 * Step 4
		 * 依照取得的Token開始查詢BFM
		 */
		
		// https: //api.sabre.com 正式環境
		// https: //api.test.sabre.com 測試環境
		URL url2 = new URL("https://api.sabre.com/v3.4.0/shop/flights?mode=live");
		HttpURLConnection hreq2 = (HttpURLConnection) url2.openConnection();
		hreq2.setRequestMethod("POST");
		hreq2.setRequestProperty("Content-Type", "application/json");
		hreq2.setRequestProperty("Accept-Encoding", "gzip");
		hreq2.setRequestProperty("Authorization", "Bearer " + token.getAccessToken());
		hreq2.setDoOutput(true); 
		
		OutputStream os2 = hreq2.getOutputStream();
							
		os2.write(bfmsearch.toString().getBytes("utf-8"));
		os2.close();
		
		GZIPInputStream zipBFMinformation = null;
		zipBFMinformation = new GZIPInputStream(hreq2.getInputStream());
		InputStreamReader resBFM = new InputStreamReader(zipBFMinformation,"UTF-8");
		BufferedReader in2 = new BufferedReader(resBFM);
		
		String inputLine2;
		StringBuffer BFMjson = new StringBuffer();

		while ((inputLine2 = in2.readLine()) != null) {
			BFMjson.append(inputLine2);
		}
		in2.close();
		System.out.println(BFMjson.toString());
		
		String result = BFMjson.toString();
		System.out.println(result);
		
		model.addAttribute("bean",formBean);
		model.addAttribute("result", result);
		
		return "form.success";
		
		
	}
		
	
	
	
	
	
 
}