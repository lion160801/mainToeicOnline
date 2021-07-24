package vn.myclass.core.service;

import vn.myclass.core.dto.RoleDTO;

import javax.management.relation.Role;
import java.util.List;

public interface RoleService  {
    List<RoleDTO> findAll();
}
