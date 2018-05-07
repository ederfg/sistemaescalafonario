/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.unsch.sistemaescalafonario.dao.impl;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;
import pe.unsch.sistemaescalafonario.dao.GenericDao;
import pe.unsch.sistemaescalafonario.util.HibernateUtil;

/**
 *
 * @author Eder-PC
 * @param <T>
 */
@Repository
public abstract class GenericDaoImpl<T> implements GenericDao<T> {

    protected SessionFactory sesionFactory = HibernateUtil.getSessionFactory();
    private final Class<T> type;

    public GenericDaoImpl() {
        Type t = getClass().getGenericSuperclass();
        ParameterizedType pt = (ParameterizedType) t;
        type = (Class) pt.getActualTypeArguments()[0];
    }

    @Override
    public List<T> findAll() {
        Session sesion = sesionFactory.openSession(); //abreendo la session
        sesion.beginTransaction().commit();

        Criteria criteria = sesion.createCriteria(type);
        List<T> lista = (List<T>) criteria.list();

        sesion.close();

        return lista;
    }

    @Override
    public List consultList(String consulta) {

        Session sesion = sesionFactory.openSession();
        sesion.clear();
        sesion.beginTransaction().commit();

        Query query = sesion.createQuery(consulta);
        List lista = query.list();

        sesion.close();
        //sesionFactory.close();

        return lista;
    }

    @Override
    public int save(T x) {
        Session sesion = sesionFactory.openSession();
        Transaction tx = sesion.beginTransaction();

        //Variable de respuesta
        int r = 0;

        try {
            sesion.save(x);
            tx.commit();

            r++;
        } catch (Exception e) {
            System.out.println("" + e.getMessage());
            tx.rollback();
        } finally {
            sesion.close();
        }
        return r;
    }

}
