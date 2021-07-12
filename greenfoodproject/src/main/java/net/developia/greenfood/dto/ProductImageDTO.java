package net.developia.greenfood.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter
@Setter
public class ProductImageDTO {
	private long product_no;
	private String image_path;
}
