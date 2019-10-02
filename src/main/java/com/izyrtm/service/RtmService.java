package com.izyrtm.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.izyrtm.mapper.MdmMapper;
import com.izyrtm.mapper.RtmMapper;
import com.izyrtm.vo.MdmVO;
import com.izyrtm.vo.RtmVO;

import org.eclipse.jdt.internal.compiler.batch.Main;
import org.slf4j.Logger; 
import org.slf4j.LoggerFactory;

@Service
public class RtmService {

	@Autowired 
	RtmMapper rtmMapper;
	
	@Autowired 
	MdmMapper mdmMapper;
	
	private static final Logger logger = LoggerFactory.getLogger(Main.class);

	public int insertRtm(RtmVO rtmVO) {
		return rtmMapper.insertRtm(rtmVO);
		
	}
	
	public List<RtmVO> rtmListService(){

		return rtmMapper.rtmList();
	}

	public  List<RtmVO> rtmDetailListService(int seq_no) {
	
		return rtmMapper.rtmDetailList(seq_no);
	}

	public int rtmUpdateService(RtmVO rtmVO) {
		
		return rtmMapper.rtmUpdate(rtmVO);
	}

	public Object rtmDeleteService(int seq_no) {
		
		return rtmMapper.rtmDelete(seq_no);
	}

	public List<MdmVO> mdmListService() {
		
		return mdmMapper.mdmList();
	}
	

	public int insertMdm(MdmVO mdmVO) {
		
		return mdmMapper.insertMdm(mdmVO);
		
	}

	public int updateMdmService(MdmVO mdmVO) {
		
		return mdmMapper.updateMdm(mdmVO);
	}

	public List<MdmVO>  mdmDetailListService(int seq_no) {
		
		return mdmMapper.mdmDetailList(seq_no);
	}

	public Object deleteMdmService(int seq_no) {
		
		return mdmMapper.deleteMdm(seq_no);
	}

}
