package DaytourProduct.model;

import java.util.List;

public interface DayTour_ProductDAO {

	public abstract DayTour_ProductBean findByPrimaryKey(String id);

	public abstract List<DayTour_ProductBean> findAll();

	public abstract DayTour_ProductBean create(DayTour_ProductBean bean);

	public abstract DayTour_ProductBean update(DayTour_ProductBean bean);

	public abstract boolean remove(String id);

}