package com.jenish.studentinfosystem.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jenish.studentinfosystem.model.Student;
import com.jenish.studentinfosystem.service.StudentService;

@Controller
public class ImageDisplayController {

	@Autowired
	private StudentService studentService;

	private static final int DEFAULT_BUFFER_SIZE = 10240;

	@RequestMapping(value= "/image_display", method=RequestMethod.GET)
	public void showImage(HttpServletRequest request, HttpServletResponse response) throws IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		Student student = studentService.getStudentInfoById(id);
		File file = new File(student.getImageUrl());

		BufferedOutputStream outputStream = null;
		BufferedInputStream inputStream = null;

		try {
			inputStream = new BufferedInputStream(new FileInputStream(file), DEFAULT_BUFFER_SIZE);
			outputStream = new BufferedOutputStream(response.getOutputStream(), DEFAULT_BUFFER_SIZE);

			byte[] buffer = new byte[DEFAULT_BUFFER_SIZE];
			int length;
			while ((length = inputStream.read(buffer)) > 0) {
				outputStream.write(buffer, 0, length);
			}
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			outputStream.close();
			inputStream.close();
		}

	}
}
