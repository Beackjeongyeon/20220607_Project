package com.its.ShoppingMall.repository;

import com.its.ShoppingMall.dto.MemberDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class MemberRepository {
    @Autowired
    private SqlSessionTemplate Sql;
    public int save(MemberDTO memberDTO) {
        return Sql.insert("member.save",memberDTO);

    }

    public MemberDTO login(MemberDTO memberDTO) {
        return Sql.selectOne("member.login", memberDTO);
    }


    public MemberDTO findId1(String memberEmail) {
            System.out.println(memberEmail);
         return Sql.selectOne("member.findId",memberEmail);


    }
}

