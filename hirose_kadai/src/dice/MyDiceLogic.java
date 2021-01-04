package dice;
import java.util.Random;
public class MyDiceLogic {
	public void excute(MyDice myDice) {
	int[] diceNum=new int[5];
	Random rand=new Random();
	int sum=0;
	for(int i=0;i<diceNum.length;i++) {
		diceNum[i]=rand.nextInt(6)+1;
		sum+=diceNum[i];
	}
	if(isYot(diceNum)) {
		sum=50;
		myDice.setMyDiceSum(sum);
	}else {
		myDice.setMyDiceSum(sum);
	}
	myDice.setMyDices(diceNum);
}
public boolean isYot(int[] nums) {
	for(int i=0;i<nums.length;i++) {
		for(int j=0;j<nums.length;j++) {
			if(nums[i]!=nums[j]) {
				return false;
			}
		}
	}
	return true;
}
}