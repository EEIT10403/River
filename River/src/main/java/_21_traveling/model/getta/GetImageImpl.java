package _21_traveling.model.getta;

import _21_traveling.model.TouristAttractionBean;
import _21_traveling.model.TouristAttractionDAO;
import _21_traveling.model.dao.TouristAttractionDAOHibernate;

public class GetImageImpl {
	
	public GetImageImpl() {
	}	

	public TouristAttractionBean getTAImage(int taId) {
		TouristAttractionBean ta = null;
		try {
			TouristAttractionDAO dao = new TouristAttractionDAOHibernate();
			ta = dao.select(taId);
			;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ta;
	}
}
