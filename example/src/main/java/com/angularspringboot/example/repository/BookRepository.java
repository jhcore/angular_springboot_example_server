package com.angularspringboot.example.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.web.bind.annotation.CrossOrigin;

import com.angularspringboot.example.entity.Book;

@RepositoryRestResource(collectionResourceRel = "book", path="books")
@CrossOrigin("http://localhost:4200")
public interface BookRepository extends JpaRepository<Book, Long> {}
