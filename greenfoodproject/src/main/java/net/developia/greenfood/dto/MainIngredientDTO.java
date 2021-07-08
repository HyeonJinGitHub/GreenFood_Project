package net.developia.greenfood.dto;

import java.io.Serializable;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter
@Setter
public class MainIngredientDTO implements Serializable {
	private int no;
	private String name;
}
