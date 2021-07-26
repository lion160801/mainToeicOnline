package vn.myclass.core.web.utils;

import vn.myclass.core.service.RoleService;
import vn.myclass.core.service.impl.ListenGuidelineServiceImpl;
import vn.myclass.core.service.impl.RoleServiceImpl;
import vn.myclass.core.service.impl.UserServiceImpl;

import javax.management.relation.Role;

public class SingletonServiceUtil {
    private static UserServiceImpl userServiceImpl = null;
    private static RoleServiceImpl roleServiceImpl = null;
    private static ListenGuidelineServiceImpl listenGuidelineServiceImpl = null;

    public static UserServiceImpl getUserServiceInstance(){
        if(userServiceImpl==null){
            userServiceImpl = new UserServiceImpl();
        }
        return userServiceImpl;
    }
    public static RoleServiceImpl getRoleServiceInstance(){
        if(roleServiceImpl==null){
            roleServiceImpl = new RoleServiceImpl();
        }
        return roleServiceImpl;
    }
    public static ListenGuidelineServiceImpl getListenGuidelineServiceInstance(){
        if(listenGuidelineServiceImpl==null){
            listenGuidelineServiceImpl = new ListenGuidelineServiceImpl();
        }
        return listenGuidelineServiceImpl;
    }
}
