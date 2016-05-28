package com.pspm.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.pspm.entity.Module;
import com.pspm.entity.PmUser;

public interface ProjectMapper {

	/**
	 * 获取项目的模块信息
	 * @param projectId
	 * @return
	 */
	List<Module> getTopModulesByProjId(@Param("projectId") Integer projectId);

	/**
	 * 查询模块负责人
	 * @param moduleId
	 * @return
	 */
	PmUser getModuleOwnerByMId(@Param("moduleId") Integer moduleId);

}
