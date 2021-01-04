package dice;

public class MyDice {
	private int[] myDices=new int[5];
	private int myDiceSum;
	public int[] getMyDices() {
		return myDices;
	}
	public void setMyDices(int[] myDices) {
		this.myDices = myDices;
	}
	public int getMyDiceSum() {
		return myDiceSum;
	}
	public void setMyDiceSum(int myDiceSum) {
		this.myDiceSum = myDiceSum;
	}
}
