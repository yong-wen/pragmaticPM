package com.pspm.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.pspm.entity.Bug;

public interface BugMapper {

	void addBug(Bug bug);

	List<Bug> listOpenDefects(@Param("projectId") Integer projectId, @Param("startIndex") Integer startIndex, @Param("pageSize") Integer pageSize);

	Integer cntOpenDefects(@Param("projectId") Integer projectId);

	void updateBugInfo(Bug bug);

	Bug getBugById(@Param("bugId") Integer bugId);

	/**
	 * 有多少个未解决的bug
	 * @param projectId
	 * @return
	 */
	Integer cntUnresolvedBugs(Integer projectId);

	/**
	 * 按模块统计
	 * @param projectId
	 * @param moduleId
	 * @return
	 */
	Integer cntUnresolvedInModule(@Param("projectId") Integer projectId, @Param("moduleId") Integer moduleId);

	/**
	 * 统计未完成的我提出的bug
	 * @param projectId
	 * @param userId
	 * @return
	 */
	Integer cntUnresolvedByCreator(@Param("projectId") Integer projectId, @Param("userId") String userId);

	/**
	 * 列出分配给我的bug
	 * @param userId
	 * @param rowCnt
	 * @return
	 */
	List<Bug> listBugAssignedToMe(@Param("projectId") Integer projectId, @Param("userId") String userId, @Param("rowCnt") Integer rowCnt);
	
	/**
	 * 统计分配给我的bug
	 * @param projectId
	 * @param userId
	 * @return
	 */
	Integer cntAssignToMe(@Param("projectId") Integer projectId, @Param("userId") String userId);

}
