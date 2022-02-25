package com.example.dias.controller;

import com.example.dias.entity.AppUser;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.transaction.Transactional;


@Controller
@RequestMapping("/")
public class UserController {

    @Autowired
    private SessionFactory sessionFactory;

    @RequestMapping("/checkRead")
    @Transactional
    public String check(){
        return "check";
    }

    @RequestMapping("/register")
    public String addUser(Model model){
        AppUser user = new AppUser();
        model.addAttribute("user", user);
        return "register";
    }

    @PostMapping("/register")
    @Transactional
    public String saveUser(@ModelAttribute("user") AppUser user) throws Exception{
        Session session = sessionFactory.getCurrentSession();

        String s = user.getPassword();
        user.setPassword("{noop}" + s);

        String sqlUser = "INSERT INTO users (username, password, enabled) VALUES ('" + user.getUsername() + "', '" + user.getPassword() + "', true)";
        session.createNativeQuery(sqlUser).executeUpdate();

        String sqlAuthority = "INSERT INTO authorities (username, authority) VALUES ('" + user.getUsername() + "', 'ROLE_USER')";
        session.createNativeQuery(sqlAuthority).executeUpdate();
        return "redirect:/";
    }

    @RequestMapping("/delete")
    public String delete(){
        return "delete";
    }

    @RequestMapping("/")
    public String home(){
        return "home";
    }

    @RequestMapping("/check")
    @Transactional
    public String read(@RequestParam("username") String username, Model model){
        Session session = sessionFactory.getCurrentSession();
        model.addAttribute("user", session.get(AppUser.class, username));
        return "read";
    }

    @RequestMapping("/update")
    @Transactional
    public String update(Model model, @RequestParam("username") String username){
        Session session = sessionFactory.getCurrentSession();
        AppUser user = session.get(AppUser.class, username);
        model.addAttribute("user", user);
        return "update";
    }

    @RequestMapping("/updateId")
    @Transactional
    public String updateId(){
        return "updateId";
    }

    @RequestMapping("/watch")
    public String watch(){
        return "watch";
    }

    private boolean checkForMatches(AppUser user) {
        Session session = sessionFactory.getCurrentSession();
        return session.createNativeQuery("SELECT * FROM yummyAnime.users WHERE username=" + user.getUsername()).getResultList().size() > 0;
    }

    @RequestMapping("/anime1")
    public String anime1(){
        return "anime1";
    }

    @RequestMapping("/anime2")
    public String anime2(){
        return "anime2";
    }
}