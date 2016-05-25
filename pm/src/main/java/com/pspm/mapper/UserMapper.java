package com.pspm.mapper;

import org.apache.ibatis.annotations.Param;

import com.pspm.entity.PmUser;

public interface UserMapper {

	PmUser loginUser(@Param("userId") String userId, @Param("pwd") String pwd);

}
