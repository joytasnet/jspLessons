package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Mining;
import model.MiningLogic;


@WebServlet("/MiningApp")
public class MiningApp extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		Mining mining=(Mining)session.getAttribute("mining");
		MiningLogic ml=new MiningLogic();
		String forwardPath=null;
		if(mining == null || mining.getMsg().contains("なにも見つけられませんでした") || mining.getMsg().contains("宝石を掘り当てた！")) {
			mining=new Mining();
			ml.stoneShuffle(mining);
			forwardPath="/WEB-INF/view/miningApp.jsp";
		}else{
			String action=request.getParameter("action");
			if(action==null) {
				forwardPath="/WEB-INF/view/miningApp.jsp";
			}else {
				forwardPath="/WEB-INF/view/miningApp.jsp";
				ml.mined(mining,Integer.parseInt(action));
			}
		}
		session.setAttribute("mining", mining);
		RequestDispatcher rd=request.getRequestDispatcher(forwardPath);
		rd.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
