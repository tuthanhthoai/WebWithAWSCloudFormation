package com.example.test1.demo.service;

import com.example.test1.demo.model.Cart;
import com.example.test1.demo.model.User;
import com.example.test1.demo.repository.CartRepository;
import com.example.test1.demo.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements IUserService{
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private CartRepository cartRepository;
    @Override
    public User create(User user) {
        user = userRepository.save(user);
        Cart cart = new Cart();
        cart.setUser(user);
        cartRepository.save(cart);
        return user;
    }

    @Override
    public User getById(Long id) {
        return userRepository.findById(id).orElse(null);
    }
}
