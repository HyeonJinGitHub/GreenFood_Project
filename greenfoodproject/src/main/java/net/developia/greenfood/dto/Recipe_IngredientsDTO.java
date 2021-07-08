package net.developia.greenfood.dto;

import java.io.Serializable;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter
@Setter
public class Recipe_IngredientsDTO{
	private int no;
	private int ingredients_no;
	private int recipe_no;
	private int howmuch;
	
}
