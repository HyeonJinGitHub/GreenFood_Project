package net.developia.greenfood.dto;

import java.io.Serializable;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter
@Setter
public class MemberDTO implements Serializable{
	private String id;
	private String password;
	private String name;
	private String email;
	private String phone;
	private String nickname;
	private String profile_img;
}
