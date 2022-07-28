package com.andradericardo.backendchallenge.services.exceptions;

public class ArticleNotFoundException extends RuntimeException {

	private static final long serialVersionUID = 1L;

	public ArticleNotFoundException(String mensagem) {
		super(mensagem);
	}

	public ArticleNotFoundException(String mensagem, Throwable cause) {
		super(mensagem, cause);
	}

}
