package net.kangshao.play.modules.crud.entity;

import java.util.Date;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;

import net.kangshao.play.common.beanvalidator.Mobile;

/**
 * 后台管理员实体类
* @ClassName: Manager
* @Description: 用户实体
* @author kangshaoxiong
* @date 2016年1月28日 上午9:24:40
*
 */
public class Manager {
	private long id;
	@NotEmpty
	private String name;
	@NotEmpty
	private String realityName;
	@Length(min=6,max=20)
	private String password;
	@NotEmpty
	private String idCard;
	@Min(0)
	private int age;
	private boolean sex;
	@Mobile
	private String mobile;
	@Email
	private String email;
	private String loginIP;
	private Date loginTime;
	private boolean isLocked;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getRealityName() {
		return realityName;
	}

	public void setRealityName(String realityName) {
		this.realityName = realityName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getIdCard() {
		return idCard;
	}

	public void setIdCard(String idCard) {
		this.idCard = idCard;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public boolean isSex() {
		return sex;
	}

	public void setSex(boolean sex) {
		this.sex = sex;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getLoginIP() {
		return loginIP;
	}

	public void setLoginIP(String loginIP) {
		this.loginIP = loginIP;
	}

	public Date getLoginTime() {
		return loginTime;
	}

	public void setLoginTime(Date loginTime) {
		this.loginTime = loginTime;
	}

	public boolean getIsLocked() {
		return isLocked;
	}

	public void setLocked(boolean isLocked) {
		this.isLocked = isLocked;
	}

	
}
