package com.J3.quizAppApi.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.J3.quizAppApi.dao.QuestionDao;
import com.J3.quizAppApi.entity.Question;

@Service
public class QuizAPIService {

	@Autowired
	QuestionDao dao;
	
	public Question getOneQuestion(int id) {
		Optional<Question> question = dao.findById(id);
		return question.isPresent() ? question.get() : null;
	}
	
}
