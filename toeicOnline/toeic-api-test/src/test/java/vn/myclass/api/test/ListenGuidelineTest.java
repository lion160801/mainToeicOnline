package vn.myclass.api.test;

import org.junit.Test;
import vn.myclas.core.dao.ListenGuidelineDao;
import vn.myclas.core.dao.UserDao;
import vn.myclass.core.daoimpl.ListenGuidelineDaoImpl;

public class ListenGuidelineTest {

    @Test
    public void findByProperties(){
        ListenGuidelineDao listenGuidelineDao = new ListenGuidelineDaoImpl();
        Object[] result = listenGuidelineDao.findByProperty(null,null,null,null,2,2);
    }
}
