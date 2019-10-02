package com.izyrtm.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.izyrtm.service.RtmService;
import com.izyrtm.vo.MdmVO;
import com.izyrtm.vo.RtmVO;

public interface MdmMapper {

	List<MdmVO> mdmList();

	int insertMdm(MdmVO mdmVO);

	int updateMdm(MdmVO mdmVO);

	List<MdmVO> mdmDetailList(int seq_no);

	int deleteMdm(int seq_no);
	
}