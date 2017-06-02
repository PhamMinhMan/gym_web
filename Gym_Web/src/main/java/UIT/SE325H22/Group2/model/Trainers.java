package UIT.SE325H22.Group2.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "trainers")
public class Trainers extends Base{
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(name = "id")
	private String trainersName;
	@Column(name = "id")
	private String trainersImage;
	@Column(name = "id")
	private String position;
	@Column(name = "id")
	private String facebook;
	@Column(name = "id")
	private String email;
	public String getTrainersName() {
		return trainersName;
	}
	public void setTrainersName(String trainersName) {
		this.trainersName = trainersName;
	}
	public String getTrainersImage() {
		return trainersImage;
	}
	public void setTrainersImage(String trainersImage) {
		this.trainersImage = trainersImage;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getFacebook() {
		return facebook;
	}
	public void setFacebook(String facebook) {
		this.facebook = facebook;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
}
