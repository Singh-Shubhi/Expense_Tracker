package com.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Expense {

	 @Id
	 @GeneratedValue(strategy = GenerationType.IDENTITY)
	 @Column
	 private int id;
	 @Column
	 private String title;
	 @Column
	 private String date;
	 @Column
	 private String time;
	 @Column
	 private String description;
	 @Column
	 private String price;
	 @ManyToOne
	 private User user;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
	public Expense( String title, String date, String time, String description, String price, User user) {
		super();
		this.title = title;
		this.date = date;
		this.time = time;
		this.description = description;
		this.price = price;
		this.user = user;
	}
	public Expense() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Expense [id=" + id + ", title=" + title + ", date=" + date + ", time=" + time + ", description="
				+ description + ", price=" + price + "]";
	}
	
}
