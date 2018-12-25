package _21_.model;


public class TouristAttractionService {

	private TouristAttractionDAO touristAttractionDAO; 
	
	
	public TouristAttractionBean findByPrimaryKey(Integer id) {
			 return touristAttractionDAO.select(id);
	}
	

	public TouristAttractionBean findbylocal(String  local) {
		return null;
	}
	public TouristAttractionBean findbyaddress(String address) {
		return null;
	}
	public TouristAttractionBean findbylatlng(Double lat,Double lng) {
		return null;
	}
	
	
	
	
	
	
}
