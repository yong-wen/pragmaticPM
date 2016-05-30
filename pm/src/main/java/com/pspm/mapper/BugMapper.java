package com.pspm.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.pspm.entity.Bug;

public interface BugMapper {

	void addBug(Bug bug);

	List<Bug> listOpenDefects(@Param("projectId") Integer projectId, @Param("startIndex") Integer startIndex, @Param("pageSize") Integer pageSize);

	Integer cntOpenDefects(@Param("projectId") Integer projectId);

	void updateBugInfo(Bug bug);

}
