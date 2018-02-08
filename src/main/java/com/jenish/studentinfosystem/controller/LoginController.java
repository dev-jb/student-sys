package com.jenish.studentinfosystem.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.jenish.studentinfosystem.model.User;
import com.jenish.studentinfosystem.service.UserService;

@Controller
public class LoginController {

	@Autowired
	private UserService userService;

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String getHomePage(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		model.addAttribute("userName", session.getAttribute("userName"));
		return "home";
	}

	@RequestMapping(value = { "/", "/login_form" }, method = RequestMethod.GET)
	public String getLoginPage() {
		return "login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(Model model, @RequestParam String userName, String password, HttpServletRequest request) {
		if (userService.loginValidation(userName, password) > 0) {
			HttpSession session = request.getSession();
			session.setAttribute("userName", userName);
			return "redirect:home";
		}
		model.addAttribute("loginErrMessage", "login Error");
		return "redirect:login_form";
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		return "redirect:login_form";

	}
}
