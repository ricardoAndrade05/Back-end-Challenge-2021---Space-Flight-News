package com.andradericardo.backendchallenge.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.andradericardo.backendchallenge.domain.Article;

@Repository
public interface ArticleRepository extends JpaRepository<Article, Integer> {

}
