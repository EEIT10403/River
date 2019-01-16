package _11.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
@Transactional
public class MemberService {
	@Autowired
	private MemberDAO memberDAO = null;
	
	
	public MemberBean Googlelogin(String username) {
		MemberBean bean = memberDAO.findByPrimaryKey(username);
		
		if(bean != null) {
			return bean;
		}
		return null;
	}
	
	public MemberBean longin(String username, String password) {
		MemberBean bean = memberDAO.findByPrimaryKey(username);
		if(bean != null) {
			if(password != null && password.length() !=0 ) {
				byte[] temp = password.getBytes();//使用者輸入
				byte[] pass = bean.getPassword();//資料庫抓出
				if(Arrays.equals(temp, pass));{
					return bean;
				}
			}
		}
		return null;
	}
	public boolean changePassword(String username, String oldPassword, String newPassword) {
		MemberBean bean = this.longin(username, oldPassword);
		if(bean != null) {
			if(newPassword != null && newPassword.length() != 0) {
				byte[] temp = newPassword.getBytes();
				return memberDAO.updatePW(temp, username);
			}
		}
		return false;
		
	}
	
	public MemberBean findById(String member_Id){
		MemberBean result = null;
		MemberBean memberBean=null ;
		
		if(member_Id != null ){
			System.out.println("memberService-select");
		    memberBean = memberDAO.findByPrimaryKey(member_Id);
		}
			
			return memberBean;
	}
	public List<MemberBean> select(MemberBean bean){
		System.out.println("memberService");
		List<MemberBean> result = null;
		if(bean != null && bean.getMember_Id().length() !=0){
			System.out.println("memberService-select");
			MemberBean memberBean = memberDAO.findByPrimaryKey(bean.getMember_Id());
			if(memberBean != null){
				result = new ArrayList<MemberBean>();
				result.add(memberBean);
			}
		}else{
			result = memberDAO.findAll();
		}
		return result;
	}
	public MemberBean insert(MemberBean bean){
		MemberBean result = null;
		if(bean != null){
			result = memberDAO.create(bean);
		}
		return result;
	}
	public MemberBean update(MemberBean bean){
		MemberBean result = null;
		if(bean != null){
			result = memberDAO.update(bean.getemail(), bean.getChinese_Name(), bean.getEnglish_Name(), 
			bean.getID_number(), bean.getTelephone(), bean.getCountry(), bean.getBirthday(), bean.getSex(), 
			bean.getAddress(), bean.getMember_Id());
		}
		return result;
	}
	public boolean delete(MemberBean bean){
		boolean result = false;
		if(bean != null){
			result = memberDAO.remove(bean.getMember_Id());
		}
		return result;
	}
}
