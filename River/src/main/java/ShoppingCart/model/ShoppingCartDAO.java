package ShoppingCart.model;

import java.sql.Blob;
import java.util.List;

public interface ShoppingCartDAO {

	public abstract ShoppingCartBean findByPrimaryKey(int SerialNum);

	public abstract List<ShoppingCartBean> findAll();
	public abstract List<ShoppingCartBean> findbyMember_Id(String Member_Id);
	
	public abstract ShoppingCartBean create(ShoppingCartBean bean);

	public abstract ShoppingCartBean update(ShoppingCartBean bean);

	public abstract boolean remove(int SerialNum);

}