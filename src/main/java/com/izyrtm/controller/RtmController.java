package com.izyrtm.controller;

import java.util.List;
import java.io.*;
import java.lang.*;
import java.sql.*;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.izyrtm.service.CommonService;
import com.izyrtm.service.RtmService;
import com.izyrtm.vo.CodeVO;
import com.izyrtm.vo.MdmVO;
import com.izyrtm.vo.RtmVO;

@Controller
public class RtmController {
	
	@Autowired
	RtmService rtmService;
	
	@Autowired
	CommonService cmnService;
	
	//private static final Log logger = LogFactory.getLog(RtmController.class);
	
	@RequestMapping("/header")
	public String header() {
		return "header";
	}

	@RequestMapping("/footer")
	public String footer() {
		return "footer";
	}
	
	@RequestMapping("/sideBar")
	public String sideBar() {
		return "sideBar";
	}

	/*
	@RequestMapping("/rtmInsert")
	public String rtmInsert() {
		return "rtmInsert";
	}
	*/
	
	// 공통 코드 조회 후 넘김
	@RequestMapping("/rtmInsert")
	public String groupCodeList(Model model, HttpServletRequest request) {
		
		model.addAttribute("codeList", cmnService.CodeListService());
	
		return "rtmInsert";
		
	}
	
	@RequestMapping("/main")
	public String main() {
		return "main";
	}
	
	
	@RequestMapping("/mdmInsert")
	public String mdmInsert() {
		return "mdmInsert";
	}
	
	@RequestMapping("/opensource")
	public String opensource() {
		return "opensource";
	}
	
	
	// title 입력
	@RequestMapping("/insertRTM")
	public String insertRtmList(HttpServletRequest request) {
		/* insert.jsp의 form name값을 받아온다 */
		String bot_key = request.getParameter("bot_key");
		String bot_token = request.getParameter("bot_token");
		String bot_type = request.getParameter("bot_type");
		String bot_title = request.getParameter("bot_title");
		String topic_name = request.getParameter("topic_name");
		String user_list = request.getParameter("user_list");
		String use_yn = request.getParameter("use_yn");
		
		
		RtmVO rtmVO = new RtmVO();
		rtmVO.setBot_key(bot_key);
		rtmVO.setBot_token(bot_token);
		rtmVO.setBot_type(bot_type);
		rtmVO.setBot_title(bot_title);
		rtmVO.setTopic_name(topic_name);
		rtmVO.setUser_list(user_list);
		rtmVO.setUse_yn(use_yn);
		
		rtmService.insertRtm(rtmVO);
		return "redirect:/rtmList";
	}
	
	// title list 조회
	@RequestMapping("/rtmList")
	public String rtmListService(Model model, HttpServletRequest request) {
		
		model.addAttribute("list", rtmService.rtmListService());
		
		
		System.out.println("rtmList 메뉴");
		System.out.println(rtmService.rtmListService());
		
		return "rtmList";
		
	}
	
	// 1건 조회 
	@RequestMapping("/detailList/{seq_no}")
	public String rtmDetailList(@PathVariable int seq_no, Model model, HttpServletRequest request) {
		
		// ModelAndView mv = new ModelAndView();
		
		model.addAttribute("detailList", rtmService.rtmDetailListService(seq_no));
		
		//Model mw = new Model(rtmService.rtmDetailListService(seq_no));
		
		// List<CodeVO> cmnCode = cmnService.CodeListService();
		
		// List<RtmVO> rtmList = rtmService.rtmDetailListService(seq_no);
		// List<CodeVO> cmnCode = cmnService.CodeListService();
		
		
		//model.addAttribute("detailList", cmnCode);
		
		// mv.addObject("detailList", rtmList);
		// mv.addObject("codeList", cmnCode);
		
		// model.addAttribute("codeList", cmnCode);
		
	
		return "detailList";
		// return mv;
		
	}
	
	@RequestMapping("/update")
	public String rtmUpdate(HttpServletRequest request) {
		/* insert.jsp의 form name값을 받아온다 */
		//int seq_no = request.getParameter("seq_no"));
		String bot_key = request.getParameter("bot_key");
		String bot_token = request.getParameter("bot_token");
		String bot_type = request.getParameter("bot_type");
		String bot_title = request.getParameter("bot_title");
		String topic_name = request.getParameter("topic_name");
		String user_list = request.getParameter("user_list");
		String use_yn = request.getParameter("use_yn");
				
		
		RtmVO rtmVO = new RtmVO();
		//rtmVO.setSeq_no((int)seq_no);
		rtmVO.setBot_key(bot_key);
		rtmVO.setBot_token(bot_token);
		rtmVO.setBot_type(bot_type);
		rtmVO.setBot_title(bot_title);
		rtmVO.setTopic_name(topic_name);
		rtmVO.setUser_list(user_list);
		rtmVO.setUse_yn(use_yn);
		
		rtmService.rtmUpdateService(rtmVO);
		return "redirect:/rtmList";
	}
	
	// 1건 삭제 
	@RequestMapping("/rtmDelete/{seq_no}")
	public String rtmDelete(@PathVariable int seq_no, Model model, HttpServletRequest request) {
		
		model.addAttribute("rtmDelete", rtmService.rtmDeleteService(seq_no));
	
		return "redirect:/rtmList";
		
	}
	
	// title list 조회
	@RequestMapping("/mdmList")
	public MdmVO mdmListService(Model model, HttpServletRequest request) {
		
		System.out.println("mdmList 메뉴");
		
		MdmVO resultInfo = new MdmVO();		
		model.addAttribute("list", rtmService.mdmListService());
		
		List<MdmVO> mdmList = rtmService.mdmListService();
		
		resultInfo.setMdmListInfo("list", mdmList);
		
		return resultInfo;
		
	}
	
	@RequestMapping("/upsertMDM")
	public String upsertMdmList(HttpServletRequest request) {
		/* insert.jsp의 form name값을 받아온다 */
		
		String mode = request.getParameter("mode");
		
		System.out.println("변환 전 : " + mode);
		
		String db_key = request.getParameter("db_key");
		String db_id = request.getParameter("db_id");
		String db_title = request.getParameter("db_title");
		String db_org_id = request.getParameter("db_org_id");
		String db_panel_id = request.getParameter("db_panel_id");
		String bot_key = request.getParameter("bot_key");
		String use_yn = request.getParameter("use_yn");
		
		MdmVO mdmVO = new MdmVO();
		mdmVO.setDb_key(db_key);
		mdmVO.setDb_id(db_id);
		mdmVO.setDb_title(db_title);
		mdmVO.setDb_org_id(db_org_id);
		mdmVO.setDb_panel_id(db_panel_id);
		mdmVO.setBot_key(bot_key);
		mdmVO.setUse_yn(use_yn);
		
		System.out.println("변환 후 : " + mode);
		
		if(mode.equals("U"))
		{
			System.out.println("updateMdmService");
			rtmService.updateMdmService(mdmVO);
		}
		else if(mode.equals("I"))
		{			
			rtmService.insertMdm(mdmVO);
				
		}
		else 
		{
			System.out.println("아무것도 안함");
		}
		
		return "redirect:/mdmList";
	}
	
	// 1건 조회 
	@RequestMapping("/mdmDetailList/{seq_no}")
	public String mdmDetailList(@PathVariable int seq_no, Model model, HttpServletRequest request) {
		
		model.addAttribute("detailList", rtmService.mdmDetailListService(seq_no));
	
		return "mdmDetailList";
		
	}
	
	// 1건 삭제 
	@RequestMapping("/mdmDelete/{seq_no}")
	public String deleteMdm(@PathVariable int seq_no, Model model, HttpServletRequest request) {
		
		model.addAttribute("mdmDelete", rtmService.deleteMdmService(seq_no));
	
		return "redirect:/mdmList";
		
	}
	
	// title list 조회
	@RequestMapping(value =  "/list", method = RequestMethod.GET)
	public MdmVO list(Model model, HttpServletRequest request) {
		
		System.out.println("mdmList 메뉴");
		
		MdmVO resultInfo = new MdmVO();		
		model.addAttribute("list", rtmService.mdmListService());
		
		List<MdmVO> mdmList = rtmService.mdmListService();
		
		resultInfo.setMdmListInfo("list", mdmList);
		
		return resultInfo;		
	}

}
