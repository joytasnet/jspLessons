package dice;

public class NpcDice {
	private int[] npcDices=new int[5];
	private int npcDiceSum;
	public int[] getNpcDices() {
		return npcDices;
	}
	public void setNpcDices(int[] npcDices) {
		this.npcDices = npcDices;
	}
	public int getNpcDiceSum() {
		return npcDiceSum;
	}
	public void setNpcDiceSum(int npcDiceSum) {
		this.npcDiceSum = npcDiceSum;
	}

}
