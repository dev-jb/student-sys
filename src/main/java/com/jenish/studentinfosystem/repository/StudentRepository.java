package com.jenish.studentinfosystem.repository;

import java.util.List;

import com.jenish.studentinfosystem.model.Student;

public interface StudentRepository {
	public void saveStudentInfo(Student student);

	public int deleteStudentInfo(int id);

	public List<Student> getAllStudentInfo();

	public Student getStudentInfoById(int id);

	public int updateStudentInfo(Student student);

}
