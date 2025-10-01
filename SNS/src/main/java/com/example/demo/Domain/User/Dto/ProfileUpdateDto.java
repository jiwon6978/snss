package com.example.demo.Domain.User.Dto;


import lombok.Data;
import org.springframework.web.multipart.MultipartFile;

@Data
public class ProfileUpdateDto {

    private MultipartFile profile;    //새 이미지(선택)
    private boolean deleteImage;      //삭제 체크(선택)
    private String nickname;          //닉네임 설정
}
