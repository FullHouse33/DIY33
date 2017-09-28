package com.sesoc.test.util;

import java.io.UnsupportedEncodingException;
import java.util.Properties ;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeUtility;

//가입 시 메일 인증
public class Mail extends Authenticator {
	
	public static int sendMail(String mail) {
		int random = (int) ((Math.random()*9999)+1000);
		//보내는 서버 주소
		String host = "smtp.naver.com";
		//메일 제목 설정
		String subject = "인증번호입니다."; 
		//보내는 사람 이메일 주소
		String from = "jjs07600@naver.com";
		//보내는사람 이름
		String writer = "admin";
		//받는사람 이메일주소
		String to = mail;
		
		Properties props = new Properties();
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.transport.protocol", "smtp");
		props.put("mail.smtp.host", host);
		props.setProperty("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory" );
		props.put("mail.smtp.port", "465");
		props.put("mail.smtp.user", from);
		props.put("mail.smtp.auth", "true");
		
		Session session = Session.getDefaultInstance(props, new Authenticator() {
			@Override
			protected javax.mail.PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication("jjs07600","epzkf1@");
			}
		});
		
		Message msg = new MimeMessage(session);
		try {
			//spring 관련기술들을 가지고 있다
			StringBuffer sb = new StringBuffer();
			
			sb.append("인증번호: "+random);

			msg.setFrom(new InternetAddress(from, MimeUtility.encodeText(writer, "UTF-8", "B")));
			msg.setRecipient(Message.RecipientType.TO, new InternetAddress(to));
			msg.setSubject(subject);
			msg.setContent(sb.toString(), "text/html;charset=UTF-8");
			Transport.send(msg);
		} catch (MessagingException | UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		return random;
	}

//계정 찾기
public static String sendMail2(String mail, String pwd) {
		
		//보내는 서버 주소
		String host = "smtp.naver.com";
		//메일 제목 설정
		String subject = "비밀번호입니다."; 
		//보내는 사람 이메일 주소
		String from = "jjs07600@naver.com"; 
		//보내는사람 이름
		String writer = "admin";
		//받는사람 이메일주소
		String to = mail;
		
		Properties props = new Properties();
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.transport.protocol", "smtp");
		props.put("mail.smtp.host", host);
		props.setProperty("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory" );
		props.put("mail.smtp.port", "465");
		props.put("mail.smtp.user", from);
		props.put("mail.smtp.auth", "true");
		
		Session session = Session.getDefaultInstance(props, new Authenticator() {
			@Override
			protected javax.mail.PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication("jjs07600","epzkf1@");
			}
		});
		
		Message msg = new MimeMessage(session);
		try {
			//spring 관련기술들을 가지고 있다
			StringBuffer sb = new StringBuffer();
			
			sb.append("비밀번호: "+pwd);

			msg.setFrom(new InternetAddress(from, MimeUtility.encodeText(writer, "UTF-8", "B")));
			msg.setRecipient(Message.RecipientType.TO, new InternetAddress(to));
			msg.setSubject(subject);
			msg.setContent(sb.toString(), "text/html;charset=UTF-8");
			Transport.send(msg);
		} catch (MessagingException | UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		return pwd;
	}

//라이브러리 관련 메시지 송신
public static boolean sendMail3(String mail, String title, String content) {
		boolean result = false;
		
		String host = "smtp.naver.com";
		
		String subject = title; 
		
		String from = "jjs07600@naver.com";
	
		String writer = "admin";
		
		String to = mail;
		
		Properties props = new Properties();
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.transport.protocol", "smtp");
		props.put("mail.smtp.host", host);
		props.setProperty("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory" );
		props.put("mail.smtp.port", "465");
		props.put("mail.smtp.user", from);
		props.put("mail.smtp.auth", "true");
		
		Session session = Session.getDefaultInstance(props, new Authenticator() {
			@Override
			protected javax.mail.PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication("jjs07600","epzkf1@");
			}
		});
		
		Message msg = new MimeMessage(session);
		try {
			StringBuffer sb = new StringBuffer();
			
			sb.append("내용: "+content);
			
			msg.setFrom(new InternetAddress(from, MimeUtility.encodeText(writer, "UTF-8", "B")));
			msg.setRecipient(Message.RecipientType.TO, new InternetAddress(to));
			msg.setSubject(subject);
			msg.setContent(sb.toString(), "text/html;charset=UTF-8");
			Transport.send(msg);
			
			result = true;
		} catch (MessagingException | UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		return result;
	}

}