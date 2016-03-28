
public class Room {

	public Room(int _roomnum, String _name, String _wherecango, double _money) {
		// TODO Auto-generated constructor stub
		roomnum =_roomnum;
		name = _name;
		wherecango = _wherecango;
		money = _money;
		
		
		
	}
	public String getRoomnum() {
		String newroomnum;
		newroomnum = Integer.toString(roomnum);
		return newroomnum;
	}
	public void setRoomnum(int roomnum) {
		this.roomnum = roomnum;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getWherecango() {
		return wherecango;
	}
	public void setWherecango(String wherecango) {
		this.wherecango = wherecango;
	}
	public double getMoney() {
		return money;
	}
	public void setMoney(double money) {
		this.money = money;
	}
	public boolean isVisited() {
		return visited;
	}
	public void setVisited(boolean visited) {
		this.visited = visited;
	}
	public String[] getItems() {
		return items;
	}
	public void setItems(String[] items) {
		this.items = items;
	}
	private int roomnum = 0;
	private String name = "";
	private String wherecango = "";
	private double money = 0;
	private boolean visited = false;
	private String[] items = new String[3];


	
}


