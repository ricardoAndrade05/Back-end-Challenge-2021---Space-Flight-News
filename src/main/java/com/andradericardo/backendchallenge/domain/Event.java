package com.andradericardo.backendchallenge.domain;

import java.io.Serializable;
import java.util.Objects;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class Event implements Serializable {
	private static final long serialVersionUID = 1L;
	
	@Id
	private String id;
	private String provider;
	
	@JsonIgnore
	@ManyToOne
	@JoinColumn(name="article_id")
	private Article article;

	public Event() {

	}

	public Event(String id, String provider, Article article) {
		super();
		this.id = id;
		this.provider = provider;
		this.article = article;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getProvider() {
		return provider;
	}

	public void setProvider(String provider) {
		this.provider = provider;
	}

	@Override
	public int hashCode() {
		return Objects.hash(id, provider);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Event other = (Event) obj;
		return Objects.equals(id, other.id) && Objects.equals(provider, other.provider);
	}

}
