package cn.vworld.service;

import cn.vworld.bean.Role;

import java.util.List;

public interface RoleService {

    List<Role> findAll();

    void saveRole(Role role);

    void deleteRoleById(String roleId);

    void deleteRoleById_m(String roleId);

    void updateRoleById(String roleId);
}
