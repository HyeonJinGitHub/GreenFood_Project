package net.developia.greenfood.dto;

import lombok.Data;

@Data
public class RecipeSearchDTO {
	
	private int no;
	private String id;
	private String title;
	private String explanation;
	private String foodname;
//	private int howmuch;
	private int cookingtime;
	private int foodcategoryno;
//	private String viedofile;
	private String thumbnail;
	private int views;
	private int likes;
//	private String relation_score;
//	private int rscore;
	
	private String keyword;
//	private String tagname;
	private PagingVO pagingVO;
	
	private String name;
	private String categoryTitle;
	
}
