package com.study.springBoot.jdbc;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface IMyUserDao {
    List<MyUserDTO> list();

}
