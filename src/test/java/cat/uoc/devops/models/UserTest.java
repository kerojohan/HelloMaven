package cat.uoc.devops.models;

import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

public class UserTest {

    public UserTest() {
    }

    @BeforeClass
    public static void setUpClass() {
    }

    @AfterClass
    public static void tearDownClass() {
    }

    /**
     * Test of getName method, of class User.
     */
    @Test
    public void testGetName() {
        System.out.println("Testing getName");
        User instance = new User();
        String expResult = "";
        String result = instance.getName();
        assertEquals(expResult, result);
        assertEquals("User", new User("User").getName());
        assertNotEquals("User", new User("").getName());
        assertNotEquals("User", new User("User2").getName());

    }

    /**
     * Test of setName method, of class User.
     */
    @Test
    public void testSetName() {
        System.out.println("Testing setName");
        String name = "";
        User instance = new User();
        instance.setName(name);
    }
    

}
