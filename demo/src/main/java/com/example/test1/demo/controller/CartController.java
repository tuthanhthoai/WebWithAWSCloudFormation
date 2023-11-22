package com.example.test1.demo.controller;

import com.example.test1.demo.model.Cart;
import com.example.test1.demo.model.User;
import com.example.test1.demo.service.ICartService;
import com.example.test1.demo.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/cart")
public class CartController {
    @Autowired
    private ICartService cartService;
    @GetMapping("")
    public ResponseEntity<?> getCartByUserId(@RequestParam Long id) {
        return new ResponseEntity<Cart>(cartService.getByUserId(id), HttpStatus.OK);
    }
}
