package _21_traveling.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service
@Transactional
public class TouristAttractionService {
    @Autowired
	private TouristAttractionDAO touristAttractionDAO; 
	
	
	public TouristAttractionBean findByPrimaryKey(Integer id) {
			 return touristAttractionDAO.select(id);
	}

	
	public boolean addTouristAttraction(TouristAttractionBean bean) {
		
		 if(touristAttractionDAO.insert(bean)!=null) {
			 return true;
		 }
		return true;
		
	}
	
	public List<TouristAttractionBean> findbyAddrTA(String address, String touristarea){
		return touristAttractionDAO.findbyAddrTA(address, touristarea);
	}
	
	
}
