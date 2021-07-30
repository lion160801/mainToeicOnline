package vn.myclass.api.test;

import org.testng.annotations.Test;
import vn.myclas.core.dao.RoleDao;
import vn.myclass.core.daoimpl.RoleDaoImpl;
import vn.myclass.core.persistence.entity.RoleEntity;

public class ImportTest{
    @Test
    public void TestImport(){
        RoleDao roleDao = new RoleDaoImpl();
        RoleEntity entity = roleDao.findEqualUnique("name","USER");
        System.out.println(entity.getName());
    }
}
