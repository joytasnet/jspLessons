package servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Bill;
import model.BuildingLogic;
import model.PostBillLogic;





@WebServlet("/BuildingMain")
public class BuildingMain extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(Bill.getCount()>=15) {
			HttpSession session=request.getSession();
			session.removeAttribute("billList");
			Bill.setCount(0);
		}
		HttpSession session=request.getSession();
		List<Bill>billList=new ArrayList<>();
		session.setAttribute("billList",billList);

		RequestDispatcher ds=request.getRequestDispatcher("/WEB-INF/jsp/main.jsp");
		ds.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String ht=request.getParameter("height");
		HttpSession session=request.getSession();

		int height=Integer.parseInt(ht);
		BuildingLogic buildingLogic=new BuildingLogic();
		int[] billLow=buildingLogic.execute(height);
		Bill bill=new Bill(height,billLow);

		List<Bill>billList=(List<Bill>)session.getAttribute("billList");
		PostBillLogic postBillLogic=new PostBillLogic();

		postBillLogic.execute(bill, billList);

		session.setAttribute("billList",billList);

		RequestDispatcher ds=request.getRequestDispatcher("/WEB-INF/jsp/main.jsp");
		ds.forward(request, response);
	}

}