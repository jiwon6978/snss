package com.example.demo.Domain.User.Dao;


import com.example.demo.Domain.User.Dto.JoinDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@Repository
public class JoinDao {

    @Autowired
    private DataSource dataSource;

    public int insert (JoinDto dto) throws SQLException {
        Connection conn = dataSource.getConnection();
        PreparedStatement pstmt = conn.prepareStatement("insert into users value(null,?,?,?,?)");
        pstmt.setString(1,dto.getEmail());
        pstmt.setString(2,dto.getUsername());
        pstmt.setString(3, dto.getPassword());
        pstmt.setLong(4,dto.getPhonenumber());
        int result = pstmt.executeUpdate();
        return result;
    }
}
