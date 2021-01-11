package model;

import java.util.Random;

public class MiningLogic {

	public void stoneShuffle(Mining mining) {
		int[] stones=mining.getStones();
		Random rand=new Random();
		for(int i=0;i<stones.length;i++) {
			int index=rand.nextInt(stones.length-i);
			int temp=stones[index];
			stones[index]=stones[stones.length-1-i];
			stones[stones.length-1-i]=temp;
		}
		mining.setStones(stones);
	}

	public void mined(Mining mining,int a) {
		int[] stones=mining.getStones();
		int[] images=mining.getsImages();
		mining.setPick(mining.getPick()-1);
		if(stones[a]==stones.length) {
			images[a]=2;
			mining.setMsg("宝石を掘り当てた！");
		}else {
			images[a]=1;
			if(mining.getPick()==0) {
				mining.setMsg("なにも見つけられませんでした");
			}else {
				mining.setMsg("はずれ！次の岩を選んでください");
			}
		}

		mining.setsImages(images);
	}
}
