package daoimplementations;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import models.Student;
@Repository
@Transactional
public class StudentDAOImpl {
	@Autowired
	private SessionFactory sessionFactory;
	
	public StudentDAOImpl()
	{
		
	}
    
    /*public void setSessionFactory(SessionFactory sf){
        this.sessionFactory = sf;
    }*/
	
    public void addPerson(Student p) {
        Session session = this.sessionFactory.getCurrentSession();
        session.save(p);
        
    }
    
    public void updatePerson(Student p) {
        Session session = this.sessionFactory.getCurrentSession();
        session.update(p);
    }
    
    public List<Student> listPersons() {
        Session session = this.sessionFactory.getCurrentSession();
        List<Student> personsList = session.createQuery("from Student").list();
        return personsList;
    }
    
    public Student getPersonById(int id) {
        Session session = this.sessionFactory.getCurrentSession();      
        Student p = (Student) session.load(Student.class, new Integer(id));
        
        return p;
    }
    
    @Transactional
    public void removePerson(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        Student p = (Student) session.load(Student.class, new Integer(id));
        if(null != p){
            session.delete(p);
            session.flush();
        }
        
    }

}