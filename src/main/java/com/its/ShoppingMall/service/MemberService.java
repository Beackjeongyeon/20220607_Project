package com.its.ShoppingMall.service;

import com.its.ShoppingMall.dto.MemberDTO;
import com.its.ShoppingMall.repository.MemberRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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

    public List<MemberDTO> findId(MemberDTO memberDTO) {
      return memberRepository.findId(memberDTO);

    }
}
