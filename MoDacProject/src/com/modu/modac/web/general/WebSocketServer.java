package com.modu.modac.web.general;

import java.util.HashMap;
import java.util.Map;

import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

public class WebSocketServer extends TextWebSocketHandler {
	
	//접속한 클라이언트를 저장하기 위한 속성(멤버)
	private Map<String, WebSocketSession> clients = 
			new HashMap<String, WebSocketSession>();
	//클라이언트와 연결이 끊어졌을때 호출되는 콜백 메소드]
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		System.out.println(session.getId()+"연결이 끊어졌어요");
		clients.remove(session.getId());
	}//////////afterConnectionClosed
	//클라이언트
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		System.out.println(session.getId()+"가 연결했어요");
		clients.put(session.getId(), session);
	}/////afterConnectionEstablished
	//클라이언트로부터 메시지를 받았을때 자동 호출되는 콜백 메소드]
	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		System.out.println(session.getId()+"로부터 받은 메시지: "+ message.getPayload());
		//접속한 모든 클라이언트에게 esssion.getID()가 보낸 메시지 뿌려주기 
		for(WebSocketSession client: clients.values()) {
			client.sendMessage(message);
			System.out.println(client.getId()+"에게 보낸 메시지:"+message.getPayload());
		}
	}/////////handleTextMessage

	@Override
	public void handleTransportError(WebSocketSession session, Throwable exception) throws Exception {
		System.out.println(session.getId()+"와 통신 장애 발생:"+exception.getMessage());
	}//////////handleTransportError

}//////class
