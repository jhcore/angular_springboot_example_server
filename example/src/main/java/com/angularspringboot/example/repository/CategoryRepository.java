package com.angularspringboot.example.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.web.bind.annotation.CrossOrigin;

import com.angularspringboot.example.entity.Category;

@RepositoryRestResource(collectionResourceRel = "category", path="categories")
@CrossOrigin("http://localhost:4200")
public interface CategoryRepository extends JpaRepository<Category, Long> {}
