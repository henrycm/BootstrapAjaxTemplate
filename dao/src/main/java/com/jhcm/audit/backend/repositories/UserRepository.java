package com.jhcm.audit.backend.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.jhcm.audit.backend.model.User;

public interface UserRepository extends JpaRepository<User, Long> {

	User findByUsername(String username);

}
