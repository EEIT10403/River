package _11.model.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import _11.model.MemberBean;
import _11.model.MemberDAO;

@Repository
public class MemberDAOHibernate implements MemberDAO {
	@Autowired
	private SessionFactory sessionFactory;
//	public MemberDAOHibernate(SessionFactory sessionFactory) {
//		this.sessionFactory = sessionFactory;
//	}
	public Session getSession() {
		return this.sessionFactory.getCurrentSession();
	}
	@Override
	public MemberBean findByPrimaryKey(String member_Id) {
		return this.getSession().get(MemberBean.class, member_Id);
	}
	@Override
	public List<MemberBean> findAll() {
		List<MemberBean> find = this.getSession().createQuery("from MemberBean", MemberBean.class)
				.setMaxResults(50).list();
		return find;
	}
	@Override
	public MemberBean create(MemberBean bean) {
		if(bean!=null) {
			MemberBean result = this.getSession().get(MemberBean.class, bean.getMember_Id());
			if(result==null) {
				this.getSession().save(bean);
				return bean;
			}
		}
		return null;
	}
	@Override
	public MemberBean update(String email, String chinese_Name, String English_Name, 
			String ID_number, String Telephone, String Country,java.util.Date Birthday, 
			String Sex, String Address, String member_Id) {
		   	MemberBean result = this.getSession().get(MemberBean.class, member_Id);
			if(result!=null) {
				result.setemail(email);
				result.setChinese_Name(chinese_Name);
				result.setEnglish_Name(English_Name);
				result.setID_number(ID_number);
				result.setTelephone(Telephone);
				result.setCountry(Country);
				result.setBirthday(Birthday);
				result.setSex(Sex);
				result.setAddress(Address);
				
				return result;
			}
			return null;
	}
	@Override
	public boolean remove(String member_Id) {
		MemberBean result = this.getSession().get(MemberBean.class, member_Id);
		if(result!=null) {
			this.getSession().delete(result);
			return true;
		}
		return false;
	}
}
