package com.andradericardo.backendchallenge.resources;

import java.net.URI;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import com.andradericardo.backendchallenge.domain.Article;
import com.andradericardo.backendchallenge.dto.ArticleDTO;
import com.andradericardo.backendchallenge.services.ArticleService;


@RestController
@RequestMapping(value="")
public class ArticleResource {
	
	@Autowired
	ArticleService service;
	
	@RequestMapping(method = RequestMethod.GET)
	public ResponseEntity<String> find() {
		return ResponseEntity.ok().body("Back-end Challenge 2021 🏅 - Space Flight News");
		
	}
	
	@RequestMapping(value ="/articles/{id}",method = RequestMethod.GET)
	public ResponseEntity<Article> find(@PathVariable Integer id ) {
		Article article = service.find(id);
		return ResponseEntity.ok().body(article);
		
	}
	
	@RequestMapping(value = "/articles", method = RequestMethod.GET)
	public ResponseEntity<Page<ArticleDTO>> findPage(
			@RequestParam(value ="page" ,defaultValue="0") Integer page,
			@RequestParam(value ="linesPerPage" ,defaultValue="24") Integer linesPerPage,
			@RequestParam(value ="direction" ,defaultValue="ASC") String direction,
			@RequestParam(value ="orderBy" ,defaultValue="id") String orderBy) {
		Page<Article> articles = service.findPage(page,linesPerPage,direction,orderBy);
		Page<ArticleDTO> ArticlesDTO = articles.map(article -> new ArticleDTO(article));
		return ResponseEntity.ok().body(ArticlesDTO);
	}
	
	@RequestMapping(value = "/articles",method = RequestMethod.POST)
	public ResponseEntity<Void> insert(@RequestBody ArticleDTO articleDTO){
		Article article = service.fromDTO(articleDTO);
		article = service.insert(article);
		service.addLaunchersInArticle(articleDTO.getLaunches(),article);
		service.addEventsInArticle(articleDTO.getEvents(),article);
		URI uri = ServletUriComponentsBuilder.fromCurrentRequest()
				.path("/{id}").buildAndExpand(article.getId()).toUri();
		return ResponseEntity.created(uri).build();
	}
	
	@RequestMapping(value="/articles/{id}", method = RequestMethod.PUT)
	public ResponseEntity<Void> update(@RequestBody ArticleDTO articleDTO,@PathVariable Integer id){
		service.find(id);
		Article article = service.fromDTO(articleDTO);
		article.setId(id);
		service.addLaunchersInArticle(articleDTO.getLaunches(),article);
		service.addEventsInArticle(articleDTO.getEvents(),article);
		article = service.update(article);
		return ResponseEntity.noContent().build();	
	}
	

	@RequestMapping(value ="/articles/{id}",method = RequestMethod.DELETE)
	public ResponseEntity<Void> delete(@PathVariable Integer id ){
		service.delete(id);
		return ResponseEntity.noContent().build();
	}
}
