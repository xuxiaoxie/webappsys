package com.entity;

import java.io.Serializable;

import org.nutz.dao.entity.annotation.Column;
import org.nutz.dao.entity.annotation.Id;
import org.nutz.dao.entity.annotation.Table;

/**
 * 用户实体类
 * 
 * @author XuzhiJian
 * 
 */
@Table("users")
public class Users implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id(auto=true)
	private Long id=1L;
	
	@Column("user_name")
	private String userName;
	
	@Column("pass_word")
	private String password;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}
