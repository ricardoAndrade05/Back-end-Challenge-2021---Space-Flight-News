package com.andradericardo.backendchallenge.resources;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.andradericardo.backendchallenge.domain.Article;
import com.andradericardo.backendchallenge.services.ArticleService;


@RestController
@RequestMapping(value="/articles")
public class ArticleResource {
	
	@Autowired
	ArticleService service;
	
	@RequestMapping(method = RequestMethod.GET)
	public ResponseEntity<String> find() {
		return ResponseEntity.ok().body("Back-end Challenge 2021 🏅 - Space Flight News");
		
	}
	
//	@RequestMapping(value = "/page", method = RequestMethod.GET)
//	public ResponseEntity<Page<ArticleDTO>> findPage(
//			@RequestParam(value ="page" ,defaultValue="0") Integer page,
//			@RequestParam(value ="linesPerPage" ,defaultValue="24") Integer linesPerPage,
//			@RequestParam(value ="direction" ,defaultValue="ASC") String direction,
//			@RequestParam(value ="orderBy" ,defaultValue="nome") String orderBy) {
//		return ResponseEntity.ok().body(null);
//	}
	
	@RequestMapping(value ="/{id}",method = RequestMethod.GET)
	public ResponseEntity<Article> find(@PathVariable Integer id ) {
		Article article = service.find(id);
		return ResponseEntity.ok().body(article);
		
	}
	
//	@RequestMapping(method = RequestMethod.POST)
//	public ResponseEntity<Void> insert(@Valid @RequestBody ArticleDTO articleDTO){
//		Article article = service.fromDTO(articleDTO);
//		article = service.insert(article);
//		URI uri = ServletUriComponentsBuilder.fromCurrentRequest()
//				.path("/{id}").buildAndExpand(article.getId()).toUri();
//		return ResponseEntity.created(uri).build();
//	}
	
//	@RequestMapping(value="/{id}", method = RequestMethod.PUT)
//	public ResponseEntity<Void> update(@Valid @RequestBody ArticleDTO articleDTO,@PathVariable Integer id){
//		Article article = service.fromDTO(articleDTO);
//		article.setId(id);
//		article = service.update(article);
//		return ResponseEntity.noContent().build();
//	}
	

//	@RequestMapping(value ="/{id}",method = RequestMethod.DELETE)
//	public ResponseEntity<Void> delete(@PathVariable Integer id ){
//		service.delete(id);
//		return ResponseEntity.noContent().build();
//	}
}
