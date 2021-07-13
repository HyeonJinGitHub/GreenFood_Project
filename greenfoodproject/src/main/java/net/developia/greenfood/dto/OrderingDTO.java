package net.developia.greenfood.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter
@Setter
public class OrderingDTO {
	private long ordering_no;
	private String member_id;
	private long no;
	private String name;
	private long price;
	private long quantity;
	private String image;
	private String order_date;
}
