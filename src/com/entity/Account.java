package com.entity;

import java.io.Serializable;
import java.util.Date;

import org.nutz.dao.entity.annotation.Column;
import org.nutz.dao.entity.annotation.Id;
import org.nutz.dao.entity.annotation.Table;

/**
 * 会员对象实体类
 * 
 * @author XuzhiJian
 * 
 */
@Table("account")
public class Account implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id(auto=true)
	private Long id=1L;
	
	@Column("user_id")
	private Long userId;

	@Column("wechat_no")
	private String wechatNo;
	
	@Column("public_name")
	private String publicName;
	
	@Column("password")
	private String password;
	
	@Column("original_Id")
	private String originalId;
	
	@Column("appId")
	private String appId;
	
	@Column("appSecret")
	private String appSecret;
	
	@Column("url")
	private String 	url;
	
	@Column("token")
	private String token;
	
	@Column("account_type")
	private String accountType;
	
	@Column("create_date")
	private Date createDate;
	
	@Column("expire_date")
	private Date expireDate;
	
	
	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public Date getExpireDate() {
		return expireDate;
	}

	public void setExpireDate(Date expireDate) {
		this.expireDate = expireDate;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public String getAccountType() {
		return accountType;
	}

	public void setAccountType(String accountType) {
		this.accountType = accountType;
	}

	public String getPublicName() {
		return publicName;
	}

	public void setPublicName(String publicName) {
		this.publicName = publicName;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getWechatNo() {
		return wechatNo;
	}

	public void setWechatNo(String wechatNo) {
		this.wechatNo = wechatNo;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getOriginalId() {
		return originalId;
	}

	public void setOriginalId(String originalId) {
		this.originalId = originalId;
	}

	public String getAppId() {
		return appId;
	}

	public void setAppId(String appId) {
		this.appId = appId;
	}

	public String getAppSecret() {
		return appSecret;
	}

	public void setAppSecret(String appSecret) {
		this.appSecret = appSecret;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getToken() {
		return token;
	}

	public void setToken(String token) {
		this.token = token;
	}
	
}
