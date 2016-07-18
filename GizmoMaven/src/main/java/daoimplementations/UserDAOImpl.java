package daoimplementations;

import java.util.List;

import javax.management.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import models.Student;
import models.User;

@Repository
@Transactional
public class UserDAOImpl {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public UserDAOImpl()
	{
		
	}
	
	public void addUser(User u) {
        Session session = this.sessionFactory.getCurrentSession();
        session.save(u);
        
    }
    
    public void updateUser(User u) {
        Session session = this.sessionFactory.getCurrentSession();
        session.update(u);
    }
    
    public List<User> listUsers() {
        Session session = this.sessionFactory.getCurrentSession();
        List<User> usersList = session.createQuery("from User").list();
        return usersList;
    }
    
    public User getUserById(int id) {
        Session session = this.sessionFactory.getCurrentSession();      
        User u = (User) session.load(User.class, new Integer(id));
        
        return u;
    }
    
    @Transactional
    public void removeUser(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        User u = (User) session.load(User.class, new Integer(id));
        if(null != u){
            session.delete(u);
            session.flush();
        }
	
    }
    
    @Transactional
	public boolean login(String username, String password) {
		String hql = "from UserDetails where id= '" + username + "' and " + " password ='" + password+"'";
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<UserDetails> list = (List<UserDetails>) ((org.hibernate.Query) query).list();
		
		if (list != null && !list.isEmpty()) {
			return true;
		}
		
		return false;
	}
}
