package com.tenjava.springmvc.dao;

import java.io.Serializable;

import java.lang.reflect.ParameterizedType;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * Contains general guidelines for a dao class
 */
public abstract class AbstractDao<PK extends Serializable, T> {
	
	private final Class<T> persistentClass;
	
	/**
	 * Initializes the dao class and sets persistentClass to the parameters of the class
	 */
	@SuppressWarnings("unchecked")
	public AbstractDao() {
		this.persistentClass = (Class<T>) ((ParameterizedType) this.getClass().getGenericSuperclass())
				.getActualTypeArguments()[1];
	}
	
	/**
	 * Used to create Session instances
	 */
	@Autowired
	private SessionFactory sessionFactory;

	/**
	 * @return a {@link Session} to connect with the database.
	 */
	protected Session getSession(){
		return sessionFactory.getCurrentSession();
	}

	/**
	 * @return a persistent, initialized instance with the given key
	 */
	@SuppressWarnings("unchecked")
	public T getByKey(PK key) {
		return (T) getSession().get(persistentClass, key);
	}

	/**
	 * Saves an edit into the database
	 * @param entity a model object (bean) containing the edit
	 */
	public void persist(T entity) {
		getSession().persist(entity);
	}

	/**
	 * Updates the remember me function
	 */
	public void update(T entity) {
		getSession().update(entity);
	}

	/**
	 * Deletes an object based on its id
	 * @param entity the id of the object
	 */
	public void delete(T entity) {
		getSession().delete(entity);
	}
	
	/**
	 * Create {@link Criteria} instance for the given class
	 */
	protected Criteria createEntityCriteria(){
		return getSession().createCriteria(persistentClass);
	}

}
