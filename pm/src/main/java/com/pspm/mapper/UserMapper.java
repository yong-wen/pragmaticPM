package com.pspm.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.pspm.entity.PmUser;

public interface UserMapper {

	PmUser loginUser(@Param("userId") String userId, @Param("pwd") String pwd);

	PmUser getUserById(@Param("userId") String userId);

	List<PmUser> getAllUsers();
}
