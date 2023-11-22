package com.example.test1.demo.controller;

import com.example.test1.demo.model.User;
import com.example.test1.demo.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/user")
public class UserController {
    @Autowired
    private IUserService userService;

    @PostMapping("")
    public ResponseEntity<?> createUser(@RequestBody User user) {
        return new ResponseEntity<User>(userService.create(user), HttpStatus.CREATED);
    }

    @GetMapping("")
    public ResponseEntity<?> getUserById(@RequestParam Long id) {
        return new ResponseEntity<User>(userService.getById(id), HttpStatus.OK);
    }
}
