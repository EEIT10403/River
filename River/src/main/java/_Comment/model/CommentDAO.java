package _Comment.model;

import java.util.List;

public interface CommentDAO {
	
	public abstract List<CommentBean> findByProd_Name(String Prod_Name );
	public abstract List<CommentBean> findByOder_No(String Order_No );
	public abstract CommentBean insertOneComment(CommentBean bean);
	public abstract boolean DeleteOneComment(CommentBean bean);
//	public abstract boolean update(byte[] password, String email,
//			java.util.Date birth, String custid);
}