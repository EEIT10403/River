package allPay.payment.integration.allPayOperator;

import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;
import allPay.payment.integration.errorMsg.ErrorMessage;
import allPay.payment.integration.exception.AllPayException;

public class PaymentVerifyBase{
	protected String confPath = "/AllPay/Payment/Integration/Config/AllpayPayment.xml";
	protected Document doc;
	public PaymentVerifyBase(){
		URL fileURL = this.getClass().getResource("/AllpayPayment.xml");
		System.out.println(fileURL);
		doc = AllPayFunction.xmlParser(fileURL.toString());
		doc.getDocumentElement().normalize();
	}
	
	protected void requireCheck(String FieldName, String objValue, String require){
		if(require.equals("1") && objValue.isEmpty())
			throw new AllPayException(FieldName+"������");
	}
	
	protected void valueCheck(String type, String objValue, Element ele){
		if(objValue.isEmpty())
			return;
		if(type.equals("String")){
			if(ele.getElementsByTagName("pattern") != null){
				Pattern r = Pattern.compile(ele.getElementsByTagName("pattern").item(0).getTextContent().toString());
				Matcher m = r.matcher(objValue);
				if(!m.find()){
					throw new AllPayException(ele.getAttribute("name")+ErrorMessage.COLUMN_RULE_ERROR);
				}
			}
		} else if(type.equals("Opt")){
			List<String> opt = new ArrayList<String>();
			NodeList n = ele.getElementsByTagName("option");
			for(int i=0; i < n.getLength(); i++){
				opt.add(n.item(i).getTextContent().toString());
			}
			if(!opt.contains(objValue)){
				throw new AllPayException(ele.getAttribute("name")+ErrorMessage.COLUMN_RULE_ERROR);
			}
		} else if(type.equals("Int")){
			String mode = ele.getElementsByTagName("mode").item(0).getTextContent();
			String minimum = ele.getElementsByTagName("minimal").item(0).getTextContent();
			String maximum = ele.getElementsByTagName("maximum").item(0).getTextContent();
			if(objValue.isEmpty()){
				throw new AllPayException(ele.getAttribute("name")+ErrorMessage.CANNOT_BE_EMPTY);
			}
			int value = Integer.valueOf(objValue);
			if(mode.equals("GE") && value < Integer.valueOf(minimum)){
				throw new AllPayException(ele.getAttribute("name")+"����p��"+minimum);
			} else if(mode.equals("LE") && value > Integer.valueOf(maximum)){
				throw new AllPayException(ele.getAttribute("name")+"����j��"+maximum);
			} else if(mode.equals("BETWEEN") && value < Integer.valueOf(minimum) && value > Integer.valueOf(maximum)){
				throw new AllPayException(ele.getAttribute("name")+"��������"+minimum+"�M"+maximum+"����");
			} else if(mode.equals("EXCLUDE") && value >= Integer.valueOf(minimum) && value <= Integer.valueOf(maximum)){
				throw new AllPayException(ele.getAttribute("name")+"�����p��"+minimum+"�Τj��"+maximum);
			}
		} else if(type.equals("DepOpt")){
			// TODO
		} 
	}
}
