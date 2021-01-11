package model;
import java.io.Serializable;

public class Mining implements Serializable{
	private int[] stones={0,0,0,0,0,0,0,0,0,10};
	private int[] sImages={0,0,0,0,0,0,0,0,0,0};
	private int pick=5;
	private String msg="採掘する岩を選んでクリック！";

	public Mining() {}

	public int[] getStones() {
		return stones;
	}
	public void setStones(int[] stones) {
		this.stones = stones;
	}
	public int getPick() {
		return pick;
	}
	public void setPick(int pick) {
		this.pick = pick;
	}
	public int[] getsImages() {
		return sImages;
	}
	public void setsImages(int[] sImages) {
		this.sImages = sImages;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}


}
