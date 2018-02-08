package com.jenish.studentinfosystem.controller;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.jenish.studentinfosystem.model.User;
import com.jenish.studentinfosystem.service.UserService;

@Controller
public class UserController {

	@Autowired
	private UserService userservice;

	@RequestMapping(value = "/user_form", method = RequestMethod.GET)
	public String getUserForm(@ModelAttribute User user) {
		return "userForm";
	}

	@RequestMapping(value = "/user_saves", method = RequestMethod.POST)
	public String saveUserInfo(@Valid @ModelAttribute User user, BindingResult result) {
		if (result.hasErrors()) {
			return "user_form";
		}
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String hashPassword = passwordEncoder.encode(user.getPassword());
		user.setPassword(hashPassword);
		System.out.println("hased password= " + hashPassword);
		user.getAddress().setUser(user);
		userservice.saveUserInfo(user);
		return "redirect:user_list";
	}

	@RequestMapping(value = "user_edit", method = RequestMethod.GET)
	public String getUserEditForm(@RequestParam int id, Model model) {
		model.addAttribute("user", userservice.getUserInfoById(id));
		return "userEditForm";
	}

	@RequestMapping(value = "/user_update", method = RequestMethod.POST)
	public String updateUserInfo(@ModelAttribute User user) {
		userservice.saveUserInfo(user);
		return "redirect:user_list";
	}

	@RequestMapping(value = "/user_delete", method = RequestMethod.GET)
	public String deleteUserInfo(@RequestParam int id) {
		userservice.deleteUserInfo(id);
		return "redirect:user_list";
	}

	@RequestMapping(value = "/user_list", method = RequestMethod.GET)
	public String viewUserInfo(Model model) {
		model.addAttribute("userDetails", userservice.getAllUserInfo());
		return "userDetails";
	}

	@ModelAttribute
	public Model getGender(Model model) {
		List<String> gender = new ArrayList<>();
		gender.add("Male");
		gender.add("Female");
		model.addAttribute("genderList", gender);
		return model;
	}
}
