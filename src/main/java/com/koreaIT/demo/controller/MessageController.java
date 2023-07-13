package com.koreaIT.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.koreaIT.demo.service.MessageService;
import com.koreaIT.demo.vo.MessageDTO;
import com.koreaIT.demo.vo.SmsResponseDTO;

@Controller
public class MessageController {
	
	private MessageService messageService;

	@Autowired
	public MessageController(MessageService messageService) {
		this.messageService = messageService;
	}
	
	
	@RequestMapping("/usr/message/kakao")
    public String kakao() {
		return "usr/message/kakao";
    }
	
	@RequestMapping("/usr/message/test")
    public String test() {
		return "usr/message/test";
    }
	
	
	

	/**
	 * 문자메시지 보내기 기능
	 * @param messageDto (test.jsp의 form에서 보낸 to와 content를 묶어 messageDto로 받기)
	 * @param model (model로 결과를 보내줄것임)
	 * @return result.jsp 페이지로 결과를 넘겨 전송 성공 여부 알려주기
	 * @throws Exception
	 */
	@PostMapping("/usr/message/sendmessage")
    public String sendMessage(MessageDTO messageDto, Model model) throws Exception {
		// requestmapping은 post방식과 get방식 둘다 받을 수 있음.
		// 원래는 post인지 get인지 적어줘야되는데 딱히 안 적어줘도됨.
		// 일반적인 요청이면 그냥 파라미터 받아오면 되는데
		// json 요청이면 requestbody 어노테이션을 써주는게 좋음
		// 왜냐면 요청의 바디내용을 통째로 자바객체로 변환시키기 때문
		// 근데 get방식 요청은 requestbody 어노테이션으로 받을수 없고 @pathvariable, @requestparam 이런거 써야됨
		
		
		// jsp에서 적은 to와 content를 담은 MessageDTO를
		// 서비스로 보내서 SmsRequestDTO 요청 JSON으로 가공해서 보내고
		// 그렇게 받아온 결과를 SmsResponseDTO response에 넣겠다는 소리임!! 그래서 vo 클래스 3개 필요
		SmsResponseDTO response = messageService.sendMessage(messageDto);
		
		model.addAttribute("response", response);
		
		return "usr/message/result";
	}
	
	
}
