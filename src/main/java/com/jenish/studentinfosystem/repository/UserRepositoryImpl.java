package com.jenish.studentinfosystem.repository;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Repository;

import com.jenish.studentinfosystem.model.Student;
import com.jenish.studentinfosystem.model.User;

@Repository
public class UserRepositoryImpl implements UserRepository {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void saveUserInfo(User user) {
		getSession().merge(user);
	}

	@Override
	public void deleteUserInfo(int id) {
		User user = getUserInfoById(id);
		if (user != null) {
			getSession().delete(user);
		}
	}

	@Override
	public List<User> getAllUserInfo() {
		return getSession().createCriteria(User.class).list();
	}

	@Override
	public User getUserInfoById(int id) {
		return (User) getSession().get(User.class, id);
	}

	@Override
	public int loginValidation(String userName, String password) {
		int id = 0;
		Criteria critera = getSession().createCriteria(User.class);
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		critera.add(Restrictions.eq("userName", userName));
		try {
			User user = (User) critera.uniqueResult();
			if (encoder.matches(password, user.getPassword())) {
				id = user.getId();
			}
		} catch (Exception e) {
			System.out.println("error login validation" + e.getMessage());
		}
		return id;
	}

	public Session getSession() {
		Session session = sessionFactory.getCurrentSession();
		if (session == null) {
			session = sessionFactory.openSession();
		}
		return session;
	}

}
