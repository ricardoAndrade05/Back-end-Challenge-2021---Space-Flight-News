package com.andradericardo.backendchallenge.dto;

import java.io.Serializable;

import com.andradericardo.backendchallenge.domain.Article;

public class ArticleDTO implements Serializable {
	private static final long serialVersionUID = 1L;

	private Integer id;
	private Boolean featured;
	private String title;
	private String url;
	private String imageUrl;
	private String newsSite;
	private String summary;
	private String publishedAt;

	public ArticleDTO() {

	}

	public ArticleDTO(Article article) {
		this.id = article.getId();
		this.featured = article.getFeatured();
		this.title = article.getTitle();
		this.url = article.getUrl();
		this.imageUrl = article.getImageUrl();
		this.newsSite = article.getNewsSite();
		this.summary = article.getSummary();
		this.publishedAt = article.getPublishedAt();
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

}
