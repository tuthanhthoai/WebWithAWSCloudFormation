package com.example.test1.demo.repository;

import com.example.test1.demo.model.Cart;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CartRepository extends JpaRepository<Cart, Long> {
}
