package com.jenish.studentinfosystem.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jenish.studentinfosystem.model.Student;
import com.jenish.studentinfosystem.repository.StudentRepository;

@Service
@Transactional
public class StudentServiceImpl implements StudentService {

	@Autowired
	private StudentRepository studentRepository;

	@Override
	public void saveStudentInfo(Student student) {
		studentRepository.saveStudentInfo(student);
	}

	@Override
	public int deleteStudentInfo(int id) {
		return studentRepository.deleteStudentInfo(id);
	}

	@Override
	public List<Student> getAllStudentInfo() {
		return studentRepository.getAllStudentInfo();
	}

	@Override
	public Student getStudentInfoById(int id) {
		return studentRepository.getStudentInfoById(id);
	}

	@Override
	public int updateStudentInfo(Student student) {
		return studentRepository.updateStudentInfo(student);
	}

}
