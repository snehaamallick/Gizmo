package gizmomaven;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import daoimplementations.UserDAOImpl;
import models.Student;
import models.User;

@Service
public class UserService {

	@Autowired
	private UserDAOImpl udi;
	
	@Transactional
    public void addUser(User u) {
        this.udi.addUser(u);
    }
	
	@Transactional
    public void updateUser(User u) {
        this.udi.updateUser(u);
    }
	
	@Transactional
    public List<User> listUsers() {
        return this.udi.listUsers();
    }
	
	@Transactional
    public User getPersonById(int id) {
        return this.udi.getUserById(id);
    }
	
	@Transactional
    public void removeUser(int id) {
        this.udi.removeUser(id);
    }
	
	@Transactional
	public boolean login(String username, String password) {
		  return this.udi.login(username, password);
	}
	
}

