package com.J3.quizAppApi.controller;



import javax.websocket.server.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.J3.quizAppApi.entity.Question;
import com.J3.quizAppApi.service.QuizAPIService;

@RestController
public class QuizAPIController {
	
	@Autowired
	QuizAPIService quizApiservice;

	@RequestMapping("/getOneQuestion/{id}")
	Question getOneQuestionByID(@PathVariable(value = "id") int id) {
		return quizApiservice.getOneQuestion(id);
	}
	
}
