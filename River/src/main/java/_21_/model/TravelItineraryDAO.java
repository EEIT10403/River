package _21_.model;

import java.util.List;

public interface TravelItineraryDAO {
public TravelItineraryBean insert(TravelItineraryBean bean);
public TravelItineraryBean select(Integer id);
public TravelItineraryBean delete(Integer id);
public TravelItineraryBean update(TravelItineraryBean bean);
public List<TravelItineraryBean> findAll();
}
