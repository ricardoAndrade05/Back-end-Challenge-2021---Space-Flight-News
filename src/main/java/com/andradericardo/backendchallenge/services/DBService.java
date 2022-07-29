package com.andradericardo.backendchallenge.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.andradericardo.backendchallenge.domain.Article;
import com.andradericardo.backendchallenge.domain.Event;
import com.andradericardo.backendchallenge.domain.Launcher;
import com.andradericardo.backendchallenge.repositories.ArticleRepository;
import com.andradericardo.backendchallenge.repositories.EventRepository;
import com.andradericardo.backendchallenge.repositories.LauncherRepository;

@Service
public class DBService {
	
	@Autowired
	ArticleRepository articleRepository;
	
	@Autowired
	LauncherRepository launcherRepository;
	
	@Autowired
	EventRepository eventRepository;
	
	
	public void instantiateDatabase() {
		
		List<Article> articles = new ArrayList<>();
		List<Launcher> launches = new ArrayList<>();
		List<Event> events = new ArrayList<>();
		
		/*
		 * for (int i = 0; i < 96; i++) { Article art = new Article(null, true,
		 * "Titulo: "+ i, "Url: "+ i, "Imagem: "+ i, "Site: "+ i, "Sumario: "+ i,
		 * "Publicado: "+ i); articles.add(art); }
		 */
		
		Article art = new Article(null, true, "Titulo: 01" , "Url: 01", "Imagem: 01", "Site: 01", "Sumario: 01", "Publicado: 01");
		Launcher lau = new Launcher("Id 1", "Provider 01", art);
		Event evn = new Event("Id 1", "Provider 01", art);
		
		art.getLaunches().add(lau);
		art.getEvents().add(evn);
		
		
		articles.add(art);
		launches.add(lau);
		events.add(evn);
		
		
		articleRepository.saveAll(articles);
		launcherRepository.saveAll(launches);
		eventRepository.saveAll(events);
		
	}

}
