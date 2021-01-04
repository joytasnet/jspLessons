package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dice.MyDice;
import dice.MyDiceLogic;
import dice.NpcDice;
import dice.NpcDiceLogic;

@WebServlet("/DiceBatlle")
public class DiceBatlle extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher=request.getRequestDispatcher("/WEB-INF/home.jsp");
		dispatcher.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MyDice myDice=new MyDice();
		NpcDice npcDice=new NpcDice();
		MyDiceLogic myDiceLogic=new MyDiceLogic();
		NpcDiceLogic npcDiceLogic=new NpcDiceLogic();
		myDiceLogic.excute(myDice);
		npcDiceLogic.excute(npcDice);
		request.setAttribute("myDice", myDice);
		request.setAttribute("npcDice", npcDice);
		RequestDispatcher dispatcher=request.getRequestDispatcher("/WEB-INF/result.jsp");
		dispatcher.forward(request, response);

	}

}
