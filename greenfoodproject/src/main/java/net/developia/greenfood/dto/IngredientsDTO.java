package net.developia.greenfood.dto;

import java.io.Serializable;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter
@Setter
public class IngredientsDTO{
	private int no;
	private String name;
	private int calorie;
	private int carbohydrate;
	private int protein;
	private int fat;
	private int saccharide;
	private int sodium;
	private int cholesterol;
	private int fattyacid;
	private int howmuch;
}
