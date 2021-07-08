package net.developia.greenfood.dto;

import java.io.Serializable;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter
@Setter
public class IngredientDTO implements Serializable {
	private int no;
	private String name;
	private int mainIngredientNo;
}
