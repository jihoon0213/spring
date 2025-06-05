package com.example.spring.dto;

import lombok.Data;

@Data
public class ProductDto {
    private int id;
    private String name;
    private int supplier;
    private int category;
    private String unit;
    private double price;

}
