package com.multi.www.chatbot;

import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.stereotype.Controller;

@Controller
public class ChatbotController {

	@MessageMapping("/chat")
	@SendTo("/topic/messages")
	public OutputMessage send(Message message) throws Exception {
		String menu = "";
		switch (message.getText()) {
		case "1":
			menu = "부산로드 홈페이지에서는 부산에 위치한 관광지, 숙박업소, 음식점의 정보를 담고 있으며 보다 편리하게 관광을 즐기실 수 있도록 무장애 여행 정보와 특정 관광지의 혼잡도를 제공해드리고 있습니다.";
			break;
		case "2":
			menu = "어떤 유형의 관광지를 소개해드릴까요? "
				 + "01) 바다 02) 볼거리(공원) 03) 역사 04) 놀거리";
			break;
		case "01":
			menu = "해운대구에 위치한 '해운대해수욕장', 수영구에 위치한 '광안리해수욕장'과 '광안대교', 서구에 위치한 '송도해상 케이블카', 남구에 위치한 '오륙도', 기장군에 위치한 '비치로드'를 추천합니다.";
			break;
		case "02":
			menu = "해운대구에 위치한 '씨라이프 부산 아쿠아리움'과 '동백공원', 중구에 위치한 '다이아몬드타워(부산타워)'와 '용두산공원', 'BIFF 광장', 영도구에 위치한 '태종대리조트파크', 동구에 위치한 '부산역', 사하구에 위치한 '감천문화마을'을 추천합니다.";
			break;
		case "03":
			menu = "기장군에 위치한 '해동용궁사', 금정구에 위치한 '범어사'를 추천합니다.";
			break;
		case "04":
			menu = "중구에 위치한 '남포동', 부산진구에 위치한 '서면 1번가'와 '누리마루 APEC하우스'를 추천합니다.";
			break;
		
		default:
			menu = "❗ 잘못된 입력입니다.";
			break;
		}
		return new OutputMessage(message.getFrom(), message.getText(), menu);
	}

}
