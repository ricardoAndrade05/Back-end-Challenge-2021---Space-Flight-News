package com.andradericardo.backendchallenge.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.andradericardo.backendchallenge.domain.Article;
import com.andradericardo.backendchallenge.repositories.ArticleRepository;

@Service
public class DBService {
	
	@Autowired
	ArticleRepository articleRepository;
	
	
	public void instantiateDatabase() {
		
		List<Article> articles = new ArrayList<>();
		
		for (int i = 0; i < 96; i++) {
			Article art = new Article(null, true, "Titulo: "+ i, "Url: "+ i, "Imagem: "+ i, "Site: "+ i, "Sumario: "+ i, "Publicado: "+ i);
			articles.add(art);
		}
		articleRepository.saveAll(articles);
		
	}

}
