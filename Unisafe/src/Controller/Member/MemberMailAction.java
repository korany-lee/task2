package Controller.Member;

import java.util.Date;
import java.util.Properties;
import java.util.UUID;

import javax.mail.Address;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class MemberMailAction {

	public void sendMail(String receiver1) {
		String num = UUID.randomUUID().toString().replaceAll("-", "");
		System.out.println("num = " +num);
		String sender = "webmaster@mail.com";
		String receiver = receiver1;
		String subject = "UniSafe에 오신걸 환영합니다.";
		String content = "아래 링크를 클릭하시면 가입이 완료됩니다. <br />"
				+ "<a href='http://192.168.4.110:8080/Unisafe/memberOk.us?num=" + num + "&email=" + receiver1 + "'>가입하기</a>";
		
		String server = "imap.gmail.com";
		String port = "465";
		Properties properties = new Properties();
		properties.put("mail.smtp.host", server);
		properties.put("mail.smtp.port", port);
		//보안 설정
		properties.put("mail.smtp.starttls.enable", "true");
		properties.put("mail.smtp.auth", "true");
		properties.put("mail.smtp.debug", "true");
		properties.put("mail.smtp.socketFactory.port", port);
		properties.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		properties.put("mail.smtp.socketFactory.fallback", "false");
		
		//mail.Session 객체를 이용하여 서버정보와 아이디 , 비밀번호를 저장하여 전송
		Session s = Session.getDefaultInstance(properties, new javax.mail.Authenticator() {
														   @Override
														   protected PasswordAuthentication getPasswordAuthentication() {
															   return new PasswordAuthentication("jiseop3671","qnpfr132!@");
															   }
														   });
		try {
			Message message = new MimeMessage(s);
			Address sender_address = new InternetAddress(sender);
			Address receiver_address = new InternetAddress(receiver);
			System.out.println(receiver_address);
			message.setHeader("content-type", "text/html; charset=UTF-8");
			message.setFrom(sender_address);
			message.setRecipient(Message.RecipientType.TO, receiver_address);
			message.setSubject(subject);
			message.setContent(content, "text/html; charset=UTF-8");
			message.setSentDate(new Date());
			//메일전송
			Transport.send(message, message.getAllRecipients());
		} catch(Exception e) {
			e.printStackTrace();
		}
		
	}

}
