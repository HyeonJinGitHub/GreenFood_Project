package net.developia.greenfood.dto;

import java.io.Serializable;
import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter
@Setter
public class Recipe_Likes_ViewsDTO{
	private String view_date;
	private String like_date;
	private int flag;
	private int lcount;
	private int vcount;
}
