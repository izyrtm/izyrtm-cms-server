package com.izyrtm.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.izyrtm.mapper.CommonMapper;
import com.izyrtm.vo.CodeVO;

import org.eclipse.jdt.internal.compiler.batch.Main;

@Service
public class CommonService {

	@Autowired 
	CommonMapper commonMapper;

	public List<CodeVO> CodeListService() {
		
		return commonMapper.groupCodeList();
	}
	

}
