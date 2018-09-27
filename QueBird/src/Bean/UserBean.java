package Bean;

public class UserBean {


	private int id;
	
	private String username;
	private String password;
	private String salt;
	private String nickname;
	private String datetime;
	
	
	private String picture;
	private String sex;
	private int age;
	private String edugrade;
	
	private String status;//状态 （冻结 活跃 ）举报
	
	private int careId;//关注(关联)
	private int becareId;//被关注（关联）
	private int articleId;//关注的文章（关联）
	private int topicId;//关注的话题（关联）
	
	public UserBean(int id,String username,String password,String salt,String nickname,String datetime,String picture,String sex,int age,String edugrade,String status)
	{
		this.setId(id);
		this.setUsername(username);
		this.setPassword(password);
		this.setSalt(salt);
		this.setNickname(nickname);
		this.setDatetime(datetime);
		this.setPicture(picture);
		this.setSex(sex);
		this.setAge(age);
		this.setEdugrade(edugrade);
		this.setStatus(status);
	}
	
	public UserBean(int id,String nickname)
	{
		this.setId(id);
		this.setNickname(nickname);
	}
	
	public UserBean(){}
	
	public int getCareId() {
		return careId;
	}
	public void setCareId(int careId) {
		this.careId = careId;
	}
	public int getBecareId() {
		return becareId;
	}
	public void setBecareId(int becareId) {
		this.becareId = becareId;
	}
	public int getArticleId() {
		return articleId;
	}
	public void setArticleId(int articleId) {
		this.articleId = articleId;
	}
	public int getTopicId() {
		return topicId;
	}
	public void setTopicId(int topicId) {
		this.topicId = topicId;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getEdugrade() {
		return edugrade;
	}
	public void setEdugrade(String edugrade) {
		this.edugrade = edugrade;
	}
	public String getDatetime() {
		return datetime;
	}
	public void setDatetime(String datetime) {
		this.datetime = datetime;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getSalt() {
		return salt;
	}
	public void setSalt(String salt) {
		this.salt = salt;
	}
	
}
