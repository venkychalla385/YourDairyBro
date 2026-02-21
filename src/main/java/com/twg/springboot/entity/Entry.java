package com.twg.springboot.entity;

import java.time.LocalDate;



import org.springframework.format.annotation.DateTimeFormat;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="entries")
public class Entry {
      @Id
      @GeneratedValue(strategy = GenerationType.IDENTITY)
      private int id;
      @DateTimeFormat(pattern="yyyy-MM-dd")
	  private LocalDate entrydate;
      private String description;
      private int userid;
      public int getId() {
		return id;
	}
	  public void setId(int id) {
		  this.id = id;
	  }
	  public LocalDate getEntrydate() {
		  return entrydate;
	  }
	  public void setEntrydate(LocalDate entrydate) {
		  this.entrydate = entrydate;
	  }
	  public String getDescription() {
		  return description;
	  }
	  public void setDescription(String description) {
		  this.description = description;
	  }
	  public int getUserid() {
		  return userid;
	  }
	  public void setUserid(int userid) {
		  this.userid = userid;
	  }
	 
}
