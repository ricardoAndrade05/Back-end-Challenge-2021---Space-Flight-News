package com.andradericardo.backendchallenge.services;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.andradericardo.backendchallenge.domain.Article;
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

}
