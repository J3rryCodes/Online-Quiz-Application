package com.J3.quizAppApi.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.J3.quizAppApi.entity.Question;

@Repository
public interface QuestionDao extends CrudRepository<Question, Integer>{

}
