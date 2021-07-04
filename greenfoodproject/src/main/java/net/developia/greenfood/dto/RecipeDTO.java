package net.developia.greenfood.dto;

import java.io.Serializable;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter
@Setter
public class RecipeDTO{
	private int no;
	private String title;
	private String tagname;
}
