package com.ssafy.xtreme.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(HttpStatus.NOT_FOUND)
public class XtremeNotFoundException extends RuntimeException {
	
	private static final long serialVersionUID = 1L;

	public XtremeNotFoundException(String msg) {
		super(msg);
	}
}
