package net.developia.greenfood.dto;

import lombok.Data;

@Data
public class ShoppingCartDTO {
	private String member_id;
	private int no;
	private String name;
	private long price;
	private int quantity;
	private String image;
	

}
