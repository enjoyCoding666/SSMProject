package test.com.serviceImp; 

import com.serviceImp.UserServiceImpl;
import org.junit.Assert;
import org.junit.Test;
import org.junit.Before; 
import org.junit.After;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/** 
* UserServiceImpl Tester. 
* 
* @author <Authors name> 
* @since <pre>һ12, 2018</pre>
* @version 1.0 
*/
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:spring-mvc.xml","classpath:spring-mybatis.xml"})
public class UserServiceImplTest {

    @Autowired
     private UserServiceImpl userService;

@Before
public void before() throws Exception { 
} 

@After
public void after() throws Exception { 
} 

/** 
* 
* Method: insertUser(User user) 
* 
*/ 
@Test
public void testInsertUser() throws Exception { 
//TODO: Test goes here... 
} 

/** 
* 
* Method: getUserById(int userId) 
* 
*/ 
@Test
public void testGetUserById() throws Exception { 
//TODO: Test goes here...
//    Assert.assertEquals( "lin" , userService.getUserById(2).getUserName());
      userService.getUserById(2);
}

/** 
* 
* Method: showUsers() 
* 
*/ 
@Test
public void testShowUsers() throws Exception { 
//TODO: Test goes here... 
} 


} 
