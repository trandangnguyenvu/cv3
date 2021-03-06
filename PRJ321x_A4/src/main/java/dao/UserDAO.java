package dao;

import java.util.List;
import javax.sql.DataSource;

import bean.User;

public interface UserDAO {
	   /** 
     * This is the method to be used to initialize
     * database resources ie. connection.
  */
  public void setDataSource(DataSource ds);
  
  /** 
     * This is the method to be used to create
     * a record in the Student table.
  */
  public void create(String username, String password);
  
  /** 
     * This is the method to be used to list down
     * a record from the Student table corresponding
     * to a passed student id.
  */
  public User getUser(String username);
  
  /** 
     * This is the method to be used to list down
     * all the records from the Student table.
  */
  public List<User> listUser();
  
  /** 
     * This is the method to be used to delete
     * a record from the Student table corresponding
     * to a passed student id.
  */
  public void delete(String username);
  
  /** 
     * This is the method to be used to update
     * a record into the Student table.
  */
  public void update(String user);
}
