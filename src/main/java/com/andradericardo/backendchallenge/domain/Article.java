package com.andradericardo.backendchallenge.domain;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Article implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	private Boolean featured;
	private String title;
	private String url;
	private String imageUrl;
	private String newsSite;
	private String summary;
	private String publishedAt;
	
	@OneToMany(mappedBy = "article", cascade = CascadeType.ALL)
	private List<Launcher> launches = new ArrayList<>(); 
	
	@OneToMany(mappedBy = "article", cascade = CascadeType.ALL)
	private List<Event> events = new ArrayList<>(); 

	public Article() {

	}

	public Article(Integer id, Boolean featured, String title, String url, String imageUrl, String newsSite,
			String summary, String publishedAt) {
		super();
		this.id = id;
		this.featured = featured;
		this.title = title;
		this.url = url;
		this.imageUrl = imageUrl;
		this.newsSite = newsSite;
		this.summary = summary;
		this.publishedAt = publishedAt;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Boolean getFeatured() {
		return featured;
	}

	public void setFeatured(Boolean featured) {
		this.featured = featured;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

	public String getNewsSite() {
		return newsSite;
	}

	public void setNewsSite(String newsSite) {
		this.newsSite = newsSite;
	}

	public String getSummary() {
		return summary;
	}

	public void setSummary(String summary) {
		this.summary = summary;
	}

	public String getPublishedAt() {
		return publishedAt;
	}

	public void setPublishedAt(String publishedAt) {
		this.publishedAt = publishedAt;
	}

	public List<Launcher> getLaunches() {
		return launches;
	}

	public void setLaunches(List<Launcher> launches) {
		this.launches = launches;
	}

	public List<Event> getEvents() {
		return events;
	}

	public void setEvents(List<Event> events) {
		this.events = events;
	}

	@Override
	public int hashCode() {
		return Objects.hash(id);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Article other = (Article) obj;
		return Objects.equals(id, other.id);
	}

}
