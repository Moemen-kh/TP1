package modele;

public class NumberBean {
	private int num;
	
	public NumberBean() {
		setNum(0);
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}
	
	public static double getRandomNum(String rangeString) {
		// TODO Auto-generated method stub
		return ((Math.random() * Double.parseDouble(rangeString)));
	}
	
}
