package com.andradericardo.backendchallenge.scheduled;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import com.andradericardo.backendchallenge.services.DBService;

@Component
public class ScheduledTasks {
	
	@Autowired
	DBService dbService;
	
	@Scheduled(cron = "00 00 09 * * *")
	public void executeTasks() {
		dbService.createNewArticlesDataBase();
	}

}
