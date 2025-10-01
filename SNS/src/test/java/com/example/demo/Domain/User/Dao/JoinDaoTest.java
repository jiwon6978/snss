package com.example.demo.Domain.User.Dao;

import com.example.demo.Domain.User.Dto.JoinDto;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;


@SpringBootTest
class JoinDaoTest {

    @Autowired
    private JoinDao joinDao;

    @Test
    public void t1() throws Exception{
        joinDao.insert(new JoinDto("010","1234","jiwon","a@a.com"));
    }
}