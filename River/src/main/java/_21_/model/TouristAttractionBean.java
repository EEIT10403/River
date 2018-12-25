package _21_.model;

import java.sql.Blob;
import java.util.Arrays;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;



@Entity
@Table(name="TAttr")
public class TouristAttractionBean {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer id;
	private String  touristarea;
	private String address;
	private Double lat;  
	private Double lng;
	private Blob img;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getTouristarea() {
		return touristarea;
	}
	public void setTouristarea(String touristarea) {
		this.touristarea = touristarea;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Double getLat() {
		return lat;
	}
	public void setLat(Double lat) {
		this.lat = lat;
	}
	public Double getLng() {
		return lng;
	}
	public void setLng(Double lng) {
		this.lng = lng;
	}
	public Blob getImg() {
		return img;
	}
	public void setImg(Blob img) {
		this.img = img;
	}
	@Override
	public String toString() {
		return "TouristAttractionBean [id=" + id + ", touristarea=" + touristarea + ", address=" + address + ", lat="
				+ lat + ", lng=" + lng + ", img=" + img + "]";
	}

	
	
	
		
}
