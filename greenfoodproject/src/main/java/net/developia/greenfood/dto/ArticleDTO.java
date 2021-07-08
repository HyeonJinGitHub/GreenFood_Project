package net.developia.greenfood.dto;

import java.io.Serializable;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter
@Setter
public class ArticleDTO{
	private int no;
	private String id;
	private String title;
	private String explanation;
	private String foodname;
	private int howmuch;
	private int cookingtime;
	private int foodcategoryno;
	private int views;
	private int likes;
	
}
