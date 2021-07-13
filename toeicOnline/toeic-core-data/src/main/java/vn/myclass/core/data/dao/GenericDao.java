package vn.myclass.core.data.dao;

import javassist.tools.rmi.ObjectNotFoundException;

import java.io.Serializable;
import java.util.List;
import java.lang.String;

public interface GenericDao<ID extends Serializable,T> {
    List<T> findAll();
    T update(T entity);
    void save(T entity);
    T findById(ID id);
    Object[] findByProperty(String property, Object value,String sortExpression, String sortDirection, Integer offset, Integer limit);
    Integer delete(List<ID> ids);
}
