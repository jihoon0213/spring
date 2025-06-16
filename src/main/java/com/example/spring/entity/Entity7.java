package com.example.spring.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;

@Getter
@Setter
@Entity
@Table(name = "my_table7", schema = "jpa")
@ToString
public class Entity7 {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Integer id;

    @Column(name = "name", length = 30)
    private String name;

    @Column(name = "score")
    private Double score;

    @Column(name = "birth_date")
    private LocalDate birthDate;

    @Column(name = "started_at")
    private LocalTime startedAt;

    @Column(name = "inserted_at")
    private LocalDateTime insertedAt;

}