package com.chinasoft.customer;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Map;
import java.util.Random;

import javax.imageio.ImageIO;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import entity.Customer;

public class CustomerAction extends ActionSupport implements SessionAware {
	public CustomerService service;

	public void setService(CustomerService service) {
		this.service = service;
	}

	public String code;

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String checkCode;

	public String getCheckCode() {
		return checkCode;
	}

	public void setCheckCode(String checkCode) {
		this.checkCode = checkCode;
	}

	public String type;

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public Map session;

	public Customer customer;

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public int isUsed;

	public int getIsUsed() {
		return isUsed;
	}

	public void setIsUsed(int isUsed) {
		this.isUsed = isUsed;
	}

	public String insertCustomer() {
		service.insertCustomer(customer);
		return "login";
	}

	public String login() {
		Customer c = (Customer) service.login(this.customer);
		if (c != null) {
			session.put("userInfo", c);
			return "index";
		} else {
			return "login";
		}
	}

	@Override
	public void setSession(Map<String, Object> arg0) {
		this.session = arg0;
	}

	public String loginout() {
		this.session.remove("userInfo");
		return "login";
	}

	public String usernameCheck() {
		this.isUsed = service.usernameCheck(this.customer);
		return "ajax";
	}

	public String password() {
		Customer c = (Customer) service.password(this.customer);
		if (c != null) {
			session.put("userInfo1", c);
			return "query";
		} else {
			return "query";
		}
	}

	public String phoneCheck() {
		this.isUsed = service.phoneCheck(this.customer);
		return "ajax";
	}

	public void WriteCode() {
		// 设置创建的宽度和高度
		int width = 90;
		int height = 26;
		// 创建一个字符数组来存放字母及数字,为了避免看不清,去掉O,o,0,I,l,1
		char chars[] = "qwertyuipasdfghjkzxcvbnmQWERTYUPASDFGHJKLZXCVBNM23456789"
				.toCharArray();
		// 创建图片缓冲对象
		BufferedImage image = new BufferedImage(width, height,
				BufferedImage.TYPE_INT_RGB);
		// 通过图片对象拿到画笔
		Graphics gs = image.getGraphics();
		// 设置画笔颜色
		gs.setColor(new Color(173, 216, 230));
		// 填充指定矩形
		gs.fillRect(0, 0, width, width);
		// 建个循环在图片内随机画圆点
		Random ran = new Random();
		for (int i = 0; i < 200; i++) {
			// 设置画笔颜色
			gs.setColor(new Color(ran.nextInt(255), ran.nextInt(255), ran
					.nextInt(255)));
			// 在矩形范围了随机画圆点
			gs.drawOval(ran.nextInt(width), ran.nextInt(height), 1, 1);
		}
		// 设置文字字体
		gs.setFont(new Font("微软雅黑", Font.BOLD, 15));
		// 设置字符串准备接收随机生成的验证码
		this.code = "";
		// 建个循环随机生成验证码
		for (int i = 0; i < 4; i++) {
			// 设置画笔的颜色
			gs.setColor(new Color(ran.nextInt(255), ran.nextInt(255), ran
					.nextInt(255)));
			// 随机一个chars数组长度之内的数字
			int co = ran.nextInt(chars.length);
			// 得到随机出来的字符
			char ch = chars[co];
			// 讲随机出来的字符拼接到字符串中
			code += ch;
			// 画文字
			gs.drawString(ch + "", 15 * i + 10, 20);
		}
		// 讲画完的信息放入session中
		try {
			ImageIO.write(image, "jpg", ServletActionContext.getResponse()
					.getOutputStream());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		session.put("code", code);
	}

	public String checkCode() {
		this.code = (String) session.get("code");
		if (this.code.equalsIgnoreCase(this.checkCode)) {
			this.type = "1";
		} else {
			this.type = "0";
		}
		return "ajax";
	}

}
