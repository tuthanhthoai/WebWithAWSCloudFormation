package com.example.test1.demo.service;

import com.example.test1.demo.model.Cart;
import com.example.test1.demo.repository.CartRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CartServiceImpl implements ICartService {
    @Autowired
    private CartRepository cartRepository;
    @Override
    public Cart getByUserId(Long id) {
        return cartRepository.findById(id).orElse(null);
    }
}
