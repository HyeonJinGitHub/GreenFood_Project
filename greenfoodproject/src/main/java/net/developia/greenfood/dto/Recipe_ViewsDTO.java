package net.developia.greenfood.dto;

import java.io.Serializable;
import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter
@Setter
public class Recipe_ViewsDTO{
	private int no;
	private int recipe_no;
	private Date view_date;
}
