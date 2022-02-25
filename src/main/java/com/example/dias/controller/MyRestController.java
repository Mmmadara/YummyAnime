package com.example.dias.controller;


import com.example.dias.entity.AppUser;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.transaction.Transactional;

@RestController
@RequestMapping("/api")
public class MyRestController {

    @Autowired
    private SessionFactory sessionFactory;

    @RequestMapping("/update")
    @Transactional
    public ResponseEntity edit(@ModelAttribute("user") AppUser user) {
        Session session = sessionFactory.getCurrentSession();
        session.createNativeQuery("update users set password = " + user.getPassword() + "where username = " + user.getUsername());
        System.out.println(user.getPassword());
        return ResponseEntity.ok("Your data have been updated successfully!");
    }

    @RequestMapping("/delete")
    @Transactional
    public ResponseEntity delete(@RequestParam("username") String username) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(session.get(AppUser.class, username));
        return ResponseEntity.ok("Your account has been deleted successfully!");
    }

}
