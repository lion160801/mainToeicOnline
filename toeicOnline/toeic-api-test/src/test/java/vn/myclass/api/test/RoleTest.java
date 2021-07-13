package vn.myclass.api.test;

import javassist.tools.rmi.ObjectNotFoundException;
import org.junit.Test;
import vn.myclas.core.dao.RoleDao;
import vn.myclass.core.daoimpl.RoleDaoImpl;
import vn.myclass.core.persistence.entity.RoleEntity;

import java.util.ArrayList;
import java.util.List;

public class RoleTest {
    @Test
    public void checkFindAll() {
        RoleDao roleDao = new RoleDaoImpl();
        List<RoleEntity> list = new RoleDaoImpl().findAll();
    }

    @Test
    public void checkUpdateRole(){
        RoleDao roleDao = new RoleDaoImpl();
        RoleEntity entity = new RoleEntity();
        entity.setRoleId(2);
        entity.setName("USER");
        roleDao.update(entity);
    }

    @Test
    public void checkSaveRole(){
        RoleDao roleDao = new RoleDaoImpl();
        RoleEntity entity = new RoleEntity();
        entity.setRoleId(1);
        entity.setName("ADMIN");
        RoleEntity entity1 = new RoleEntity();
        entity1.setRoleId(2);
        entity1.setName("USER");
        roleDao.save(entity);
        roleDao.save(entity1);
    }

    @Test
    public void checkFindById() {
        RoleDao roleDao = new RoleDaoImpl();
        RoleEntity entity = roleDao.findById(1);
    }

//    @Test
//    public void checkFindByProperty(){
//        RoleDao roleDao = new RoleDaoImpl();
//        String property = null;
//        Object value = null;
//        String sortExpression = null;
//        String sortDirection = null;
//        Object[] objects = roleDao.findByProperty(property,value,sortExpression,sortDirection);
//    }

    @Test
    public void checkDelete(){
        List<Integer> listId = new ArrayList<Integer>();
        listId.add(1);
        listId.add(2);
        RoleDao roleDao = new RoleDaoImpl();
        Integer count = roleDao.delete(listId);
    }
}
