package com.example.demo.Domain.User.Service;


import com.example.demo.Domain.User.Dao.JoinDao;
import com.example.demo.Domain.User.Dto.JoinDto;
import com.example.demo.Domain.User.Dto.LoginDto;
import com.example.demo.Domain.User.Dto.ProfileUpdateDto;
import com.example.demo.Domain.User.Entity.UserEntity;
import com.example.demo.Domain.User.Repository.JoinRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.IOException;

@Service
public class UserService {

    @Autowired
    private JoinDao dao;

    @Autowired
    private JoinRepository joinRepository;

    private final BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();

    @Transactional
    public Long joinRegistration(JoinDto dto) throws Exception {
        //dto ->Entity
        String encodedPassword = encoder.encode(dto.getPassword());
        UserEntity sns = UserEntity.builder()
                .id(null)
                .email(dto.getEmail())
                .username(dto.getUsername())
                .password(encodedPassword)
                .phonenumber(dto.getPhonenumber())
                .build();
        joinRepository.save(sns);
        return sns.getId();
    }

    @Transactional
    public UserEntity login(LoginDto dto) {
        UserEntity ue = joinRepository.findByPhonenumber((dto.getPhonenumber()))
                .orElseThrow(() -> new IllegalArgumentException("전화번호를 다시 확인해주세요"));
        if (!encoder.matches(dto.getPassword(), ue.getPassword())) {
            throw new IllegalArgumentException("비밀번호가 일치하지 않습니다.");
        }
        return ue;
    }

    @Transactional
    public void updateProfile(Long userId, ProfileUpdateDto dto) throws IOException {
        var u = joinRepository.findById(userId).orElseThrow();
        }
    }




