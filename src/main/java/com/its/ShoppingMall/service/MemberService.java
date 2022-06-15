package com.its.ShoppingMall.service;

import com.its.ShoppingMall.dto.MemberDTO;
import com.its.ShoppingMall.repository.MemberRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.util.List;

@Service
public class MemberService {
  @Autowired
  private MemberRepository memberRepository;

  public int save(MemberDTO memberDTO) {
    return memberRepository.save(memberDTO);
  }


  public MemberDTO login(MemberDTO memberDTO) {

    return memberRepository.login(memberDTO);
  }


  public String findId1(String memberEmail) {
    return memberRepository.findId1(memberEmail);
  }

  public String findpassword(MemberDTO memberDTO) {
    return memberRepository.findpassword(memberDTO);
  }

  public MemberDTO findById(Long id) {
    return memberRepository.findById(id);
  }

    public int delete(MemberDTO memberDTO) {
      return memberRepository.delete(memberDTO);
    }
}

