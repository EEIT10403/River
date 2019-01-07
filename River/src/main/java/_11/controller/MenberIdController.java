package _11.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

import _11.model.MemberBean;
import _11.model.MemberService;

@Controller
@ResponseBody
public class MenberIdController {
	@Autowired
	private MemberService memberService;
	@RequestMapping(
			value="/_11_memberpages/member.view",
			produces= {"application/json; charset=UTF-8"}
	)
	public String method(@RequestParam(name="member_Id",required=false)String temp) {
		System.out.println("MemberServlet:" + temp);
//接收資料	
//驗證資料
		JsonArray array = new JsonArray();
		if(temp==null || temp.trim().length()==0) {
			JsonObject obj = new JsonObject();
			obj.addProperty("text", "Member_Id是必要欄位");
			obj.addProperty("hasMoreData", false);
			array.add(obj);
		}
//轉換資料
		String member_Id = temp;
		if(temp!=null && temp.trim().length()!=0) {
			try {
				member_Id = String.valueOf(member_Id);
			} catch (NumberFormatException e) {
				e.printStackTrace();
//				JsonObject obj = new JsonObject();
//				obj.addProperty("text", "ID必需是數字");
//				obj.addProperty("hasMoreData", false);
//				array.add(obj);
			}
		}
		if(array!=null && array.size()!=0) {
			return array.toString();
		}
//呼叫model
		
		MemberBean bean = new MemberBean();
		bean.setMember_Id(member_Id);
		List<MemberBean> result = memberService.select(bean);
		System.out.println("result="+result);
		
		if(result==null || result.isEmpty()) {
			JsonObject obj = new JsonObject();
			obj.addProperty("text", "Member_Id不存在");
			obj.addProperty("hasMoreData", false);
			array.add(obj);
		} else {
			JsonObject obj = new JsonObject();
			obj.addProperty("text", "Member_Id存在");
			obj.addProperty("hasMoreData", true);
			array.add(obj);
			
			MemberBean data = result.get(0);
			JsonObject member = new JsonObject();
			member.addProperty("member_Id", data.getMember_Id());
			member.addProperty("email", data.getemail());
			member.addProperty("chinese_Name", data.getChinese_Name());
			member.addProperty("english_Name", data.getEnglish_Name());
			member.addProperty("ID_number", data.getID_number());
			member.addProperty("telephone", data.getTelephone());
			member.addProperty("country", data.getCountry());
			member.addProperty("birthday", data.getBirthday().toString());
			member.addProperty("sex", data.getSex());
			member.addProperty("address", data.getAddress());
			
			array.add(member);
		}
//根據model執行結果顯示View
		return array.toString();
		
	}
}
