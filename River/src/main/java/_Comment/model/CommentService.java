package _Comment.model;

import java.util.Arrays;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
@Transactional
public class CommentService {
	@Autowired
	private CommentDAO commentDAO;
	public CommentService(CommentDAO commentDAO) {
		this.commentDAO = commentDAO;
	}
	public List<CommentBean> findByProd_Name(String Prod_Name) {
		return commentDAO.findByProd_Name(Prod_Name);
	}
	
	public CommentBean insertOneComment(CommentBean bean) {
		return commentDAO.insertOneComment(bean);
	}
	
	public boolean DeleteOneComment(CommentBean bean) {
		
		boolean result = false;
		if(bean!=null) {
			result = commentDAO.DeleteOneComment(bean);
		}
		return result;
	
	}
}
