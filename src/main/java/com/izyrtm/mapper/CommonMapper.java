package com.izyrtm.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.izyrtm.service.CommonService;
import com.izyrtm.vo.CodeVO;


public interface CommonMapper {

	List<CodeVO> groupCodeList();
	
}