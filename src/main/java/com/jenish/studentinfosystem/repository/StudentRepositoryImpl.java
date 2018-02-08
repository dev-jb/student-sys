package com.jenish.studentinfosystem.repository;

import java.util.List;

import javax.sql.DataSource;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.jenish.studentinfosystem.model.Student;
import com.jenish.studentinfosystem.model.User;

@Repository
public class StudentRepositoryImpl implements StudentRepository {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void saveStudentInfo(Student student) {
		getSession().merge(student);
	}

	@Override
	public int deleteStudentInfo(int id) {
		int status = 0;
		try {
			Student student = getStudentInfoById(id);
			if (student != null) {
				getSession().delete(student);
				status++;
				System.out.println("Name=" + student.getStudentName());
				System.out.println("delete success");
			}
		} catch (Exception e) {
			// log.error("Fail to delete" + e.getMessage());
			System.out.println("Fail to delete" + e.getMessage());
		}
		return status;
	}

	@Override
	public List<Student> getAllStudentInfo() {
		return getSession().createCriteria(Student.class).setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
	}

	@Override
	public Student getStudentInfoById(int id) {
		return (Student) getSession().get(Student.class, id);
	}

	@Override
	public int updateStudentInfo(Student student) {
		int updateStatus = 0;
		try {
			getSession().update(student);
			updateStatus++;
		} catch (Exception e) {
			System.out.println("Error updating database" + e.getMessage());
		}
		return updateStatus;

	}

	public Session getSession() {
		Session session = sessionFactory.getCurrentSession();
		if (session == null) {
			session = sessionFactory.openSession();
		}
		return session;
	}

}
