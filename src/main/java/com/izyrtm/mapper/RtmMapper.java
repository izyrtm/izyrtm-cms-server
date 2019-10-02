package com.izyrtm.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.izyrtm.service.RtmService;
import com.izyrtm.vo.MdmVO;
import com.izyrtm.vo.RtmVO;

public interface RtmMapper {

	int insertRtm(RtmVO rtmVO);

	List<RtmVO> rtmList();

	List<RtmVO> rtmDetailList(int seq_no);

	int rtmUpdate(RtmVO rtmVO);

	int rtmDelete(int seq_no);
	
	

}