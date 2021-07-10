package net.developia.greenfood.dto;

import java.io.Serializable;
import java.util.Comparator;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter
@Setter
public class RecipeTrendDTO{
	private int no;
	private String keyword;
	private int relationScore;
	private int searchTotal;
	private int blogTotal;
	private int counts;
	
}
