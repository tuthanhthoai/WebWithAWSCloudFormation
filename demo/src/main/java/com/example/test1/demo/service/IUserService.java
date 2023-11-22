package com.example.test1.demo.service;

import com.example.test1.demo.model.User;

public interface IUserService {
    public User create(User user);

    public User getById(Long id);
}
