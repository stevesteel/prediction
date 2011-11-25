package com.avricot.prediction.model.candidat;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import org.bson.types.ObjectId;
import org.codehaus.jackson.annotate.JsonIgnore;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

import com.avricot.prediction.model.report.Region;

@Document(collection = "candidat")
public class Candidat {
	@Id
	private ObjectId id;
	private String schemeUrl;
	private String tendancy;
	private String description;
	private Date birthday;
	private String siteUrl;
	private String partiFullName;
	private String parti;
	private CandidatName candidatName;
	private String displayName;
	private List<String> nicknames = new ArrayList<String>();
	private HashMap<Region, Integer> geoReport = new HashMap<Region, Integer>();

	public Candidat() {
	}

	public Candidat(CandidatName name) {
		this.candidatName = name;
		this.id = new ObjectId();
	}

	public String getId() {
		return id.toStringMongod();
	}

	@JsonIgnore
	public ObjectId getObjectId() {
		return id;
	}

	public void setObjectId(ObjectId id) {
		this.id = id;
	}

	@JsonIgnore
	public List<String> getNicknames() {
		return nicknames;
	}

	public CandidatName getCandidatName() {
		return candidatName;
	}

	public void setCandidatName(CandidatName name) {
		this.candidatName = name;
	}

	public void setNicknames(List<String> nicknames) {
		this.nicknames = nicknames;
	}

	public HashMap<Region, Integer> getGeoReport() {
		return geoReport;
	}

	public void setGeoReport(HashMap<Region, Integer> geoLocReport) {
		this.geoReport = geoLocReport;
	}

	public String getDisplayName() {
		return displayName;
	}

	public void setDisplayName(String displayName) {
		this.displayName = displayName;
	}

	public String getSiteUrl() {
		return siteUrl;
	}

	public void setSiteUrl(String siteUrl) {
		this.siteUrl = siteUrl;
	}

	public String getPartiFullName() {
		return partiFullName;
	}

	public void setPartiFullName(String partiFullName) {
		this.partiFullName = partiFullName;
	}

	public String getParti() {
		return parti;
	}

	public void setParti(String parti) {
		this.parti = parti;
	}

	public String getSchemeUrl() {
		return schemeUrl;
	}

	public void setSchemeUrl(String schemeUrl) {
		this.schemeUrl = schemeUrl;
	}

	public String getTendancy() {
		return tendancy;
	}

	public void setTendancy(String tendancy) {
		this.tendancy = tendancy;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public static enum CandidatName {
		SARKOZY, HOLLANDE, LEPEN, BOUTIN, NIHOUS, MELENCHON, JOLY, LEPAGE, BAYROU, CHEVENEMENT, DUPONT_AIGNAN, VILLEPIN, MORIN, ARTHAUD, POUTOU;
	}

}