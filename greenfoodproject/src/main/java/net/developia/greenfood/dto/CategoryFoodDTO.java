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
	
	
}
