package _21_.model;

import java.util.List;

public interface TouristAttractionDAO {
	public TouristAttractionBean select(Integer id);
	public TouristAttractionBean insert(TouristAttractionBean bean);
	public TouristAttractionBean update(TouristAttractionBean bean);
	public TouristAttractionBean delete(Integer id);
	public List<TouristAttractionBean> findbytouristarea(String  touristarea) ;
	public List<TouristAttractionBean> findbyaddress(String address);
	public List<TouristAttractionBean> findbylatlng(Double lat,Double lng) ;
}
