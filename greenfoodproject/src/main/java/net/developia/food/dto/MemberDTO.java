package net.developia.food.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
public class MemberDTO {
	private String id;
	private String password;
	private String name;
	private String email;
	private String phone;
}
