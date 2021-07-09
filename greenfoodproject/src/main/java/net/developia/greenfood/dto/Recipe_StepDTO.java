package net.developia.greenfood.dto;

import java.io.Serializable;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter
@Setter
public class Recipe_StepDTO{
	private int no;
	private int recipe_no;
	private int step_no;
	private String step_title;
	private String step_img;
	private String step_explanation;
	
}
