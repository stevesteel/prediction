package com.avricot.prediction.model.tweet;

import java.util.Date;

import org.bson.types.ObjectId;
import org.codehaus.jackson.annotate.JsonIgnore;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.index.Indexed;
import org.springframework.data.mongodb.core.mapping.Document;

import com.avricot.prediction.model.candidat.Candidat.CandidatName;
import com.avricot.prediction.report.Polarity;

@Document(collection = "tweet")
public class Tweet {
	@Id
	private ObjectId id;
	@Indexed
	private String value;
	@Indexed
	private CandidatName candidatName;
	private String userId;
	private Date date;
	private Polarity polarity;
	private float score;
	private boolean checked = false; // True when manually checked.

	private Geolocation geolocation;

	public void setId(ObjectId id) {
		this.id = id;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public CandidatName getCandidatName() {
		return candidatName;
	}

	public void setCandidatName(CandidatName candidat) {
		this.candidatName = candidat;
	}

	public boolean isChecked() {
		return checked;
	}

	public void setChecked(boolean checked) {
		this.checked = checked;
	}

	public Polarity getPolarity() {
		return polarity;
	}

	public void setPolarity(Polarity polarity) {
		this.polarity = polarity;
	}

	public float getScore() {
		return score;
	}

	public void setScore(float score) {
		this.score = score;
	}

	public String getId() {
		return id.toStringMongod();
	}

	@JsonIgnore
	public ObjectId getObjectId() {
		return id;
	}

	public Geolocation getGeolocation() {
		return geolocation;
	}

	public void setGeolocation(Geolocation geolocation) {
		this.geolocation = geolocation;
	}

	public static class Geolocation {
		private double lat;
		private double lng;

		public Geolocation() {
		}

		public Geolocation(double lat, double lng) {
			super();
			this.lat = lat;
			this.lng = lng;
		}

		public double getLat() {
			return lat;
		}

		public void setLat(double lat) {
			this.lat = lat;
		}

		public double getLng() {
			return lng;
		}

		public void setLng(double lng) {
			this.lng = lng;
		}
	}
}
