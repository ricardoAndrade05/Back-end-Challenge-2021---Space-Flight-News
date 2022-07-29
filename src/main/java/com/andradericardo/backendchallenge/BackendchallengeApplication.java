package com.andradericardo.backendchallenge;

import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;

@SpringBootApplication
@EnableScheduling
public class BackendchallengeApplication implements CommandLineRunner {

	public static void main(String[] args) {
		SpringApplication.run(BackendchallengeApplication.class, args);
	}
	
	@Override
	public void run(String... args) throws Exception {

	}
}
