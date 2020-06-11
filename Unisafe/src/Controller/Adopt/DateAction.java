package Controller.Adopt;

import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DateAction {
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String num = request.getParameter("num");
		String action = request.getParameter("action");
		String nYear = request.getParameter("year");
		String nMonth = request.getParameter("month");
		Calendar cal = Calendar.getInstance();
		
		//String now = format.format(time);
		
		if(action == null) {
			cal.set(cal.get(Calendar.YEAR), cal.get(Calendar.MONTH), 1);
			cal.set(Calendar.MILLISECOND, 0);
		}else if(action.equals("plus")) {
			cal.set(Integer.parseInt(nYear),Integer.parseInt(nMonth),1);
			cal.set(Calendar.MILLISECOND, 0);
		}else if(action.equals("minus")) {
			cal.set(Integer.parseInt(nYear),Integer.parseInt(nMonth)-2,1);
			cal.set(Calendar.MILLISECOND, 0);
		}
		nYear = String.valueOf(cal.get(Calendar.YEAR)) ;
		nMonth = String.valueOf(cal.get(Calendar.MONTH) + 1);
		
		int dayNum = cal.get(Calendar.DAY_OF_WEEK) ;
		int maxDay = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
		
		request.setAttribute("num", num);
		request.setAttribute("nYear", nYear);	//화면에 출력될 year
		request.setAttribute("nMonth", nMonth);	//화면에 출력될 month
		request.setAttribute("maxDay", maxDay) ;	//화면에 출력될 해당월의 마지막날
		request.setAttribute("dayNum", dayNum);	//해당 월의 시작요일
	}
}
