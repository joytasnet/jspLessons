package model;

import java.util.List;

public class PostBillLogic {
	public void execute(Bill bill,List<Bill> billList) {
		billList.add(bill);
	}
}