package com.example.demo.Domain.User.Entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.*;

@Entity
@Table(name = "users")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class UserEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull
    @Column(length = 100)
    private Long phonenumber;

    @NotBlank
    private String password;

    @Email(message = "example@example.com 형식으로 작성해주세요.")
    @Column(length = 255, nullable = false)
    private String email;

    @NotBlank
    private String username;

    private String nickname;

    private String profileImageUrl;
}
