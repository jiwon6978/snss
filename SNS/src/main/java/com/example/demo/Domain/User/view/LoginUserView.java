package com.example.demo.Domain.User.view;


import com.example.demo.Domain.User.Entity.UserEntity;
import lombok.Value;

@Value
public class LoginUserView {
    Long id;
    String username;
    String email;
    String nickname;
    String profileImageUrl;

    public static LoginUserView from(UserEntity u){
        return new LoginUserView(u.getId(),u.getUsername(),u.getEmail(),u.getNickname(),u.getProfileImageUrl());
    }
}
