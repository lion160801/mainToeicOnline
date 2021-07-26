package vn.myclass.core.service;


import vn.myclass.core.dto.CheckLogin;
import vn.myclass.core.dto.UserDTO;

import java.util.Map;


public interface UserService {
    CheckLogin checkLogin(String name, String password);
    Object[] findByProperty(Map<String,Object> property, String sortExpression, String sortDirection, Integer offset, Integer limit);
    UserDTO findById(Integer userId);
    void saveUser(UserDTO userDTO);
    UserDTO updateUser(UserDTO userDTO);

}