package model;

public class Bill {
		private static int count;
		private int height;
		private int[] billLow;
		public Bill() {}
		public Bill(int height,int[] billLow) {
			this.height=height;
			this.billLow=billLow;
			this.count++;
		}
		public static int getCount() {
			return count;
		}
		public static void setCount(int count) {
			Bill.count = count;
		}
		public int getHeight() {
			return height;
		}
		public void setHeight(int height) {
			this.height = height;
		}
		public int[] getBillLow() {
			return billLow;
		}
		public void setBillLow(int[] billLow) {
			this.billLow = billLow;
		}

}
