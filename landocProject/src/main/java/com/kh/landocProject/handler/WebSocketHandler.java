//package com.kh.landocProject.handler;
//
//import org.springframework.web.socket.CloseStatus;
//import org.springframework.web.socket.TextMessage;
//import org.springframework.web.socket.WebSocketSession;
//import org.springframework.web.socket.handler.TextWebSocketHandler;
//
//public class WebSocketHandler extends TextWebSocketHandler{
//	
//	@Override
//	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
//		
//	}
//	
//	@Override
//	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
//		session.sendMessage(new TextMessage("echo : " + message.getPayload()));
//	}
//	
//	@Override
//	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
//		super.afterConnectionClosed(session, status);
//	}
//}
