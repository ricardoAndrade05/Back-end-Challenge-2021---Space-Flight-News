package com.andradericardo.backendchallenge.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.andradericardo.backendchallenge.domain.Event;

@Repository
public interface EventRepository extends JpaRepository<Event, String> {

}
