package com.example.demo.Domain.User.Dto;

import jakarta.validation.constraints.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class JoinDto {


    @NotNull(message = "필수 입력 항목입니다.")
    private Long phonenumber;
    @NotBlank(message = "비밀번호를 입력하세요.")
    private String password;
    @NotBlank(message = "필수 입력 항목입니다.")
    private String username;
    @Email(message = "example@example.com 형식으로 입력하세요.")
    private String email;
}
