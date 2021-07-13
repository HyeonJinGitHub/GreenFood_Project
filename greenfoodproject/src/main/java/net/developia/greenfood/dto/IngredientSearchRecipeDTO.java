package net.developia.greenfood.dto;

import java.io.Serializable;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter
@Setter
public class IngredientSearchRecipeDTO {
	private int no;
	private String title;
	private String explanation;
	private int views;
	private String thumbnail;
	private String memberName;
	private String foodCategoryTitle;
	private int foodCategoryNo;
}
