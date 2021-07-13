package net.developia.greenfood.dto;

import lombok.Data;

@Data
public class CategoryFoodDTO {

	private int no;
	private String title;
	private String foodname;
	private String keyword;
	private String tagname;
	private PagingVO pagingVO;
	
	private String id;
	private String explanation;
//	private int howmuch;
	private int foodcategoryno;
//	private String viedofile;
	private String thumbnail;
	private int views;
	private int likes;
//	private String relation_score;
//	private int rscore;
	
//	private String tagname;
	
	private String name;
	private String nickname;
	
	private String categoryTitle;
	
	
}
