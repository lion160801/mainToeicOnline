package vn.myclas.core.dao;

import vn.myclass.core.data.dao.GenericDao;
import vn.myclass.core.persistence.entity.UserEntity;

public interface UserDao extends GenericDao<Integer, UserEntity>  {
    Object[] checkLogin(String name, String password);
}