package dbcon;

public class Database {
	private String url;
	private String user;
	private String pass;
	private String driver;
	
	public Database() {
		super();
		this.url = "jdbc:mysql://localhost:3306/party_reservation_db";
		this.user = "root";
		this.pass = "1";
		this.driver = "com.mysql.jdbc.Driver";
	}

	public String getUrl() {
		return url;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public String getPass() {
		return pass;
	}

	
	public String getDriver() {
		return driver;
	}

	
	

}
