package _11.model;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
@Transactional
public class MemberService {
	@Autowired
	private MemberDAO memberDAO = null;
	
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
