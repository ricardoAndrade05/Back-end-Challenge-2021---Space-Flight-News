package com.andradericardo.backendchallenge.services;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Service;

import com.andradericardo.backendchallenge.domain.Article;
import com.andradericardo.backendchallenge.dto.ArticleDTO;
import com.andradericardo.backendchallenge.repositories.ArticleRepository;
import com.andradericardo.backendchallenge.services.exceptions.ArticleNotFoundException;

@Service
public class ArticleService {
	
	@Autowired
	private ArticleRepository repo;

	public Article find(Integer id) {
		Optional<Article> article = repo.findById(id);
		return article.orElseThrow(() -> new ArticleNotFoundException(
				"Artigo não encontrado! Id: " + id));
	}

	public void delete(Integer id) {
		repo.deleteById(id);
	}
	
	public Page<Article> findPage(Integer pagina, Integer linhasPorPagina,String direction,String orderBy){	
		PageRequest pageRequest = PageRequest.of(pagina,linhasPorPagina,Direction.valueOf(direction),orderBy);
		return repo.findAll(pageRequest);
	}

	public Article fromDTO(ArticleDTO articleDTO) {
		Article article = new Article(null, articleDTO.getFeatured(), articleDTO.getTitle(), articleDTO.getUrl(),
				articleDTO.getImageUrl(), articleDTO.getNewsSite(), articleDTO.getSummary(),
				articleDTO.getPublishedAt());
		return article;
	}

	public Article insert(Article article) {
		article.setId(null);
		return repo.save(article);
	}

	public Article update(Article updateArticle) {
		Article oldArticle = find(updateArticle.getId());
		updateData(updateArticle, oldArticle);
		return repo.save(oldArticle);
	}

	private void updateData(Article updateArticle, Article oldArticle) {
		oldArticle.setFeatured(updateArticle.getFeatured());
		oldArticle.setTitle(updateArticle.getTitle());
		oldArticle.setUrl(updateArticle.getUrl());
		oldArticle.setImageUrl(updateArticle.getImageUrl());
		oldArticle.setNewsSite(updateArticle.getNewsSite());
		oldArticle.setSummary(updateArticle.getSummary());
		oldArticle.setPublishedAt(updateArticle.getPublishedAt());
	}

}
