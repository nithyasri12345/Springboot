package com.example.stdmanage.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import com.example.stdmanage.model.PathModel;
import com.example.stdmanage.model.User;
import com.example.stdmanage.repo.PathRepo;
import com.example.stdmanage.repo.UserRepo;

import jakarta.servlet.http.HttpSession;

@Controller
public class Pathcontroller {

    @Autowired
    private PathRepo repo;
    @Autowired
    private UserRepo userRepo;
    
    @GetMapping("/home")
    public String showHome() {
    	return "home";
    }
    
    @GetMapping("/form")
    public String showForm() {
        return "student_det";
    }

    
    @PostMapping("/students/save")
    public String saveFromForm(@ModelAttribute PathModel student) {
        repo.save(student);
        return "redirect:/list";
    }

    
    @GetMapping("/list")
    public String AllStudent(Model model) {
        List<PathModel> students = repo.findAll();
        model.addAttribute("students", students);
        return "student_table";
    }

    @GetMapping("/edit/{id}")
    public String showEditForm(@PathVariable("id") int id, Model model) {
        PathModel student = repo.findById(id).orElse(null);
        model.addAttribute("student", student);
        return "Student_edit";
    }

   
    @PostMapping("/update/{id}")
    public String updateStudent(@PathVariable("id") int id, @ModelAttribute PathModel student) {
        student.setId(id);
        repo.save(student);
        return "redirect:/list";
    }

   
    @GetMapping("/delete/{id}")
    public String deleteStudent(@PathVariable("id") int id) {
        repo.deleteById(id);
        return "redirect:/list";
    }
    @GetMapping("/signup")
    public String showSignupForm() {
        return "signup";
    }

    @PostMapping("/signup")
    public String signup(@RequestParam String username,
                         @RequestParam String password,
                         Model model) {
        
        if (userRepo.existsByUsername(username)) {
            model.addAttribute("error", "User already exists. Please login.");
            return "signup";  
        }


        User user = new User();
        user.setUsername(username);
        user.setPassword(password);
        userRepo.save(user);
        
        return "redirect:/home"; 
    }

    

    @GetMapping("/login")
    public String showLoginForm() {
        return "login";
    }

    @PostMapping("/login")
    public String login(@RequestParam String username, @RequestParam String password, Model model) {
        User user = userRepo.findByUsernameAndPassword(username, password);
        if (user != null) {
            return "redirect:/home"; 
        } else {
            model.addAttribute("error", "Invalid credentials");
            return "login";
        }
    }
    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/login";
    }
    
}

