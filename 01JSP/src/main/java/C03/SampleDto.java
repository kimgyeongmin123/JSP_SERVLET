package C03;

public class SampleDto {

	private String name;
	private int age;
	private String addr;
	
	//Getter/Setter
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	
	//ToString 재정의
	@Override
	public String toString() {
		return "SampleDto [name=" + name + ", age=" + age + ", addr=" + addr + "]";
	}
	
	//모든 인자 생성자
	public SampleDto(String name, int age, String addr) {
		super();
		this.name = name;
		this.age = age;
		this.addr = addr;
	}
	
	//기본 생성자
	public SampleDto() {
		
	}
	
}
