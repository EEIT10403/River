package _21_traveling.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import _21_traveling.model.getta.GetLatLngFromJSON;

@WebServlet("/_21_/LoadTALatLng")
public class LoadTALatLng extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	PrintWriter out = response.getWriter();
	response.setCharacterEncoding("UTF-8");
	
	String address = request.getParameter("address");
	

//	System.out.println("address="+address);
	
	String[] addrArray=address.split("\\s+");
//	System.out.println("String[].length="+addrArray.length);
	String addressURL="";
	
	//以空白格切割查詢字串
	for(int x=0;x<addrArray.length;x++) {
		addressURL += "%20"  +addrArray[x];
	}
	System.out.println(addressURL);
	
	
	
	String url ="https://maps.googleapis.com/maps/api/place/findplacefromtext/json?input=%20"
				+addressURL
				+"&inputtype=textquery&fields=geometry&key=AIzaSyA1O4vNHfOVtr86ZtznzI4ZeqOBQIM7q5Y";
	
	String location =GetLatLngFromJSON.readhttp_info(url);
	System.out.println("location="+location);
	
     out.write(location);
     out.close();

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
