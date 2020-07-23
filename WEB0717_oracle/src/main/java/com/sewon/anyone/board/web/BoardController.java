/*
 * Copyright 2008-2009 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package com.sewon.anyone.board.web;

import java.util.List;

import egovframework.example.sample.service.EgovSampleService;
import egovframework.example.sample.service.SampleDefaultVO;
import egovframework.example.sample.service.SampleVO;
import egovframework.example.sample.service.impl.EgovSampleServiceImpl;
import egovframework.rte.fdl.property.EgovPropertyService;
import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.support.SessionStatus;
import org.springmodules.validation.commons.DefaultBeanValidator;

import com.google.gson.Gson;
import com.sewon.anyone.board.service.BoardService;
import com.sewon.anyone.board.service.BoardVO;
import com.sewon.anyone.cmn.MessageVO;
import com.sewon.anyone.cmn.SearchVO;
import com.sewon.anyone.member.service.UserService;
import com.sewon.anyone.member.service.UserVO;

/**
 * @Class Name : BoardController.java
 * @Description : EgovSample Controller Class
 * @Modification Information
 * @ @ 수정일 수정자 수정내용 @ --------- --------- ------------------------------- @
 *   2009.03.16 최초생성
 *
 * @author 개발프레임웍크 실행환경 개발팀
 * @since 2009. 03.16
 * @version 1.0
 * @see
 *
 * 		Copyright (C) by MOPAS All right reserved.
 */

@Controller
public class BoardController {

	final Logger LOGGER = LoggerFactory.getLogger(BoardController.class);

	// ERROR -> context-common.xml 수정
	@Resource(name = "boardService")
	private BoardService boardService;

	/** EgovSampleService */
	@Resource(name = "sampleService")
	private EgovSampleService sampleService;

	/** EgovPropertyService */
	@Resource(name = "propertiesService")
	protected EgovPropertyService propertiesService;

	/** Validator */
	@Resource(name = "beanValidator")
	protected DefaultBeanValidator beanValidator;

	// http://localhost:8080/WEB0716/member/login.do
	/**
	 * 
	 * @param searchVO
	 * @param user
	 * @param model
	 * @return json
	 * @throws Exception
	 */
	@RequestMapping(value="/board/do_retrieve.do")
	public String doRetrieve(@ModelAttribute("boardVO") BoardVO boardVO, SearchVO search, ModelMap model) throws Exception {

		LOGGER.debug("------doRetrieve-------");

		LOGGER.debug("------doRetrieve-------" + boardVO);


		// mybatis debug Url :
		// http://localhost:8080/WEB0716/login/login.do?userId=psy&passwd=1234

//		List<BoardVO> list = (List<BoardVO>) this.boardService.doRetrieve(search);

		return "/board/board_list";
	}

}
