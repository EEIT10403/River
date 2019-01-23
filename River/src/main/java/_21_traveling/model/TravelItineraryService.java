package _21_traveling.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import _21_traveling.model.dao.TravelItineraryDAOHibernate;



@Service
@Transactional
public class TravelItineraryService {
@Autowired
TravelItineraryDAOHibernate dao; 
public TravelItineraryBean findByPrimaryKey(Integer id) {
	 return dao.select(id);
}


public TravelItineraryBean addTravelItinerary(TravelItineraryBean bean) {
	TravelItineraryBean tibean=dao.insert(bean);
if(tibean!=null) {
	 return tibean;
}
return null;

}
	
public TravelItineraryBean update(TravelItineraryBean bean) {
    return dao.update(bean);	

}	


public List<TravelItineraryBean> findbyMemberId(Integer memberId) {

	
	return dao.findbyMemberId(memberId);

}



} 
