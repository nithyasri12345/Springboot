package com.example.stdmanage.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.stdmanage.model.User;

public interface UserRepo extends JpaRepository<User, Integer> {
	 User findByUsernameAndPassword(String username, String password);
	 boolean existsByUsername(String username);

}