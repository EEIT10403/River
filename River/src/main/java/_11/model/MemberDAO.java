package _11.model;

import java.util.List;


public interface MemberDAO  {
	public abstract MemberBean findByPrimaryKey(String Member_Id);
	
	public abstract List<MemberBean> findAll();
	
	public abstract MemberBean create(MemberBean bean);
	
	public abstract MemberBean update(String email, String Chinese_Name, String English_Name, 
			String ID_number, String Telephone, String Country, java.util.Date Birthday, String Sex, 
			String Address, String Member_Id);
	
	public abstract boolean remove (String Member_Id);
}
