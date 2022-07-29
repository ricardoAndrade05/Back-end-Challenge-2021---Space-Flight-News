package com.andradericardo.backendchallenge.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.andradericardo.backendchallenge.domain.Launcher;

@Repository
public interface LauncherRepository extends JpaRepository<Launcher, String> {

}
