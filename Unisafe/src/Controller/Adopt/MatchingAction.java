package Controller.Adopt;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO.AnimalDAO;

public class MatchingAction {

	public void execute(HttpServletRequest request, HttpServletResponse response) {
		List list = new ArrayList();
		String condition = "";
	    String animal = request.getParameter("no1");
	    String gender = request.getParameter("no2");
	    String style = request.getParameter("no3");
	    String familly = request.getParameter("no4");
	    String kid = request.getParameter("no5");
	    String other = request.getParameter("no6");
	    String past = request.getParameter("no7");
	    String homeStayTime = request.getParameter("no8");
	    String whereHome = request.getParameter("no9");
	    String whatHome = request.getParameter("no10");
	    String allergy = request.getParameter("no11");
	    System.out.println("동물종류, 성별 : " + animal + gender);
	    if(gender.equals("3")) {
	    	condition = " and gender_m in ('1', '2')";
	    	AnimalDAO dao2 = new AnimalDAO();
	    	list = dao2.matchingResultCon(animal,style,familly,kid,other,past,homeStayTime,whereHome,whatHome,allergy,condition);	    	request.setAttribute("result", list);
	    } else {
	    	AnimalDAO dao = new AnimalDAO();
	    	list = dao.matchingResult(animal,gender,style,familly,kid,other,past,homeStayTime,whereHome,whatHome,allergy);
	   		request.setAttribute("result", list);
	   		System.out.println("list:" + list);
	   	}
	}

}
