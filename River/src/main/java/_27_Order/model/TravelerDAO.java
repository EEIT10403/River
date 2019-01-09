package _27_Order.model;

import java.util.List;

public interface TravelerDAO {

//	public abstract TravelerBean findByPrimaryKey(String id);

//	public abstract List<TravelerBean> findAll();
	
	public abstract List<TravelerBean> findTravelerByOrder_No(String Order_No);

	public abstract TravelerBean create(TravelerBean bean);

	public abstract TravelerBean update(TravelerBean bean);

	public abstract boolean removeByOrder_No(TravelerBean bean);
	
	public abstract boolean removeOneData(String Id);

}