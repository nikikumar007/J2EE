package com.example.demo.entity;

import java.time.LocalDate;



import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@AllArgsConstructor
@NoArgsConstructor
public class CampRegistry {
	

	private int slno;
	private int campId;
	private int donorId;

}
