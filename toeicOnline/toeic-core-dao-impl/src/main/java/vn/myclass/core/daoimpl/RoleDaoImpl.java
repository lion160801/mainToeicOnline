package vn.myclass.core.daoimpl;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import vn.myclas.core.dao.RoleDao;
import vn.myclass.core.common.utils.HibernateUtil;
import vn.myclass.core.data.daoimpl.AbstractDao;
import vn.myclass.core.persistence.entity.RoleEntity;
import vn.myclass.core.persistence.entity.UserEntity;

import java.util.ArrayList;
import java.util.List;

public class RoleDaoImpl extends AbstractDao <Integer, RoleEntity>implements RoleDao {
    @Override
    public List<RoleEntity> findByRoles(List<String> roles) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.getTransaction();
        List<RoleEntity> roleEntities  = new ArrayList<RoleEntity>();
        try {
            String sql = "FROM RoleEntity ue WHERE ue.name IN (:roles) ";
            Query query = session.createQuery(sql);
            query.setParameterList("roles",roles);
            roleEntities= query.list();
        }catch (HibernateException e){
            transaction.rollback();
            throw e;
        } finally {
            session.close();
        }
        return roleEntities;
    }
}
