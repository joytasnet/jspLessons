package model;

import java.util.Random;

public class BuildingLogic {
	public int[] execute(int height){
		Random rand=new Random();
		int[] billLow=new int[height];
		for(int i=0;i<height;i++) {
			billLow[i]=rand.nextInt(6)+1;
		}
		return billLow;
	}
}