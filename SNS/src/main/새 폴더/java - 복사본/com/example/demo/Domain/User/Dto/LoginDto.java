package com.example.demo.Domain.User.Dto;


import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor

public class LoginDto {
    @NotNull(message = "전화번호를 입력해주세요.")
    private Long phonenumber;
    @NotBlank(message = "비밀번호를 입력하세요.")
    private String password;
}
