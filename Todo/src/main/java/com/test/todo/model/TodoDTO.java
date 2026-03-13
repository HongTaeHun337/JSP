package com.test.todo.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

//Data Transfer Object == 택배상자
//@Setter
//@Getter
//@ToString
//@NoArgsConstructor
//@AllArgsConstructor
//@EqualsAndHashCode
@Data
public class TodoDTO {

	//테이블의 컬럼
	private String seq;
	private String todo;
	private String state;
	private String regdate;
	
	
	
	
}
