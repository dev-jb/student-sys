package com.jenish.studentinfosystem.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.jenish.studentinfosystem.model.Student;
import com.jenish.studentinfosystem.service.StudentService;
import com.jenish.studentinfosystem.utils.ImageUtil;

@Controller
public class StudentController {

	@Autowired
	private StudentService studentService;

	@RequestMapping(value = "/student_form", method = RequestMethod.GET)
	public String getStudentForm(@ModelAttribute Student student) {
		return "studentForm";
	}

	@RequestMapping(value = "/student_save", method = RequestMethod.POST)
	public String saveStudentInfo(@ModelAttribute Student student, @RequestParam CommonsMultipartFile file) {
		String imageUpload = null;
		try {
			imageUpload = ImageUtil.writeImageToFile(file);
		} catch (Exception e) {
			System.out.println("Error" + e.getMessage());
		}

		if (student != null) {
			student.setImageUrl(imageUpload);
			studentService.saveStudentInfo(student);
		}
		return "redirect:student_list";
	}

	@RequestMapping(value = "/student_update", method = RequestMethod.POST)
	public String updateStudentInfo(@ModelAttribute Student student, Model model,
			@RequestParam CommonsMultipartFile file) {
		String imageUploadPath = "";
		if (file.getOriginalFilename().isEmpty()) {
			System.out.println("empty");
			Student stud = studentService.getStudentInfoById(student.getId());
			imageUploadPath = stud.getImageUrl();
		} else {
			imageUploadPath = ImageUtil.writeImageToFile(file);
			System.out.println("path=" + imageUploadPath);
		}
		if (student != null) {
			student.setImageUrl(imageUploadPath);
			if (studentService.updateStudentInfo(student) > 0) {
				model.addAttribute("successMessage", "Update Successful");
				return "redirect:student_list";
			}
		}
		model.addAttribute("failureMessage", "Update Failed");
		return "studentEditForm";
	}

	@RequestMapping(value = "/student_list", method = RequestMethod.GET)
	public String viewStudentInfo(Model model) {
		model.addAttribute("studentDetails", studentService.getAllStudentInfo());
		return "studentDetails";
	}

	@RequestMapping(value = "/student_delete", method = RequestMethod.GET)
	public String deleteStudentInfo(Model model, @RequestParam int id) {
		if (studentService.deleteStudentInfo(id) > 0) {
			return "redirect:student_list";
		} else {
			model.addAttribute("errorMessage", "Error on deleting");
			return "redirect:student_list";
		}

	}

	@RequestMapping(value = "/student_edit", method = RequestMethod.GET)
	public String getStudentEditForm(@ModelAttribute Student student, Model model, @RequestParam int id) {
		model.addAttribute("student", studentService.getStudentInfoById(id));
		return "studentEditForm";
	}

	@ModelAttribute
	public Model getGenderList(Model model) {
		List<String> genderList = new ArrayList<String>();
		genderList.add("Male");
		genderList.add("Female");
		model.addAttribute("genderList", genderList);
		return model;
	}

	@ModelAttribute
	public Model getSubjectList(Model model) {
		List<String> subjectList = new ArrayList<String>();
		subjectList.add("Java");
		subjectList.add("PHP");
		subjectList.add("Python");
		model.addAttribute("subjectList", subjectList);
		return model;
	}

	@ModelAttribute
	public Model getDepartmentList(Model model) {
		List<String> departmentList = new ArrayList<String>();
		departmentList.add("IT");
		departmentList.add("Computer");
		departmentList.add("Management");
		model.addAttribute("departmentList", departmentList);
		return model;
	}
}
