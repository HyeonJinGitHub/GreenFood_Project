package net.developia.greenfood.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter
@Setter
public class ProductDTO {
	private long no;
	private String name;
	private long price;
	private String description;
	private String detail_description;
	private String category;
	private String sku;
}
