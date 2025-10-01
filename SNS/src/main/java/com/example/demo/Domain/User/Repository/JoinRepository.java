package com.example.demo.Domain.User.Repository;


import com.example.demo.Domain.User.Entity.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface JoinRepository extends JpaRepository<UserEntity,Long> {
    Optional<UserEntity> findByPhonenumber(Long phonenumber);
}
