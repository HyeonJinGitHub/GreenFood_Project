package net.developia.greenfood.dto;

import lombok.Data;

@Data
public class RecipeSearchDTO {
	private String title;
	private String foodname;
	private String keyword;
	private PagingVO pagingVO;
	
}
