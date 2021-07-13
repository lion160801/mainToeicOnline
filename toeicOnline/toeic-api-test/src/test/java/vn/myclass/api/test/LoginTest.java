package vn.myclass.api.test;

import org.apache.log4j.Logger;
import org.junit.Test;
import vn.myclas.core.dao.UserDao;
import vn.myclass.core.daoimpl.UserDaoImpl;
import vn.myclass.core.persistence.entity.UserEntity;

public class LoginTest {
    private final Logger log = Logger.getLogger(this.getClass());
    @Test
    public void checkIsUserExist(){
        UserDao userDao = new UserDaoImpl();
        String name = "tong";
        String password = "123456";
        UserEntity entity = userDao.findUserByUserNameAndPassword(name,password);
        if (entity!=null){
            log.error("login success");
        }
        else {
            log.error("login failed");
        }
    }

    @Test
    public void checkFindRoleByUser(){
        UserDao userDao  = new UserDaoImpl();
        String name = "tong";
        String password= "123456";
        UserEntity entity = userDao.findUserByUserNameAndPassword(name,password);
        log.error(entity.getRole().getRoleId()+"-"+entity.getName());
    }
}
