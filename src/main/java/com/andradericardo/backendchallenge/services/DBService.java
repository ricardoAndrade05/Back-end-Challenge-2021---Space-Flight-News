package com.andradericardo.backendchallenge.services;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.andradericardo.backendchallenge.domain.Article;
import com.andradericardo.backendchallenge.domain.Event;
import com.andradericardo.backendchallenge.domain.Launcher;
import com.andradericardo.backendchallenge.repositories.ArticleRepository;
import com.andradericardo.backendchallenge.repositories.EventRepository;
import com.andradericardo.backendchallenge.repositories.LauncherRepository;
import com.fasterxml.jackson.annotation.JsonFormat;

@Service
public class DBService {

	@Autowired
	ArticleRepository articleRepository;

	@Autowired
	LauncherRepository launcherRepository;

	@Autowired
	EventRepository eventRepository;

	@JsonFormat(pattern = "dd/MM/yyyy HH:mm")
	private Date instante;
	
	public void instantiateDatabase() {

		List<Article> articles = new ArrayList<>();
		List<Launcher> launches = new ArrayList<>();
		List<Event> events = new ArrayList<>();

		for (int i = 0; i < 96; i++) {

			Article art = new Article(null, true, "Titulo: " + i, "Url: " + i, "Imagem: " + i, "Site: " + i,
					"Sumario: " + i, "Publicado: " + i);

			Launcher lau = new Launcher("Id: " + i, "ProviderLauncher: " + i, art);

			Event evn = new Event("Id: " + i, "ProviderEvent: " + i, art);

			articles.add(art);
			launches.add(lau);
			events.add(evn);
		}

		articleRepository.saveAll(articles);
		launcherRepository.saveAll(launches);
		eventRepository.saveAll(events);
	}
	
	public void createNewArticlesDataBase() {
		
		List<Article> articles = new ArrayList<>();
		List<Launcher> launches = new ArrayList<>();
		List<Event> events = new ArrayList<>();
		
		instante = new Date(System.currentTimeMillis());

		for (int i = 0; i < 5; i++) {

			Article art = new Article(null, true, "Titulo: "+ i + instante.toString(), "Url: "+ i  +instante.toString(), "Imagem: "+ i  +instante.toString(), "Site: "+ i  +instante.toString(),
					"Sumario: "+ i  +instante.toString(), "Publicado: "+ i  +instante.toString());

			Launcher lau = new Launcher("Id: "+ i  + instante.toString(), "ProviderLauncher: "+ i  +instante.toString(), art);

			Event evn = new Event("Id: "+ i  + instante.toString(), "ProviderEvent: " + i + instante.toString(), art);

			articles.add(art);
			launches.add(lau);
			events.add(evn);
		}

		articleRepository.saveAll(articles);
		launcherRepository.saveAll(launches);
		eventRepository.saveAll(events);
		
	}

}
