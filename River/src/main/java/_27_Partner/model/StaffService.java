package _27_Partner.model;

import java.util.Arrays;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
@Transactional
public class StaffService {
	@Autowired
	private StaffDAO staffDAO;
	public StaffService(StaffDAO staffDAO) {
		this.staffDAO = staffDAO;
	}
	public StaffBean login(String staff_Id, String password) {
		StaffBean bean = staffDAO.findByPrimaryKey(staff_Id);
		if(bean!=null) {
			if(password!=null && password.length()!=0) {
				byte[] temp = password.getBytes();	//使用者輸入
				byte[] pass = bean.getPassword();	//資料庫抓出
				if(Arrays.equals(temp, pass)) {
					return bean;
				}
			}
		}
		return null;
	}
//	public boolean changePassword(String username, String oldPassword, String newPassword) {
//		CustomerBean bean = this.login(username, oldPassword);
//		if(bean!=null) {
//			if (newPassword!=null && newPassword.length()!=0) {
//				byte[] temp = newPassword.getBytes();
//				return customerDao.update(
//						temp, bean.getEmail(), bean.getBirth(), username);
//			}
//		}
//		return false;
//	}
}
