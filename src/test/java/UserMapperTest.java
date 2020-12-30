import com.ssm.dao.UserMapper;
import com.ssm.pojo.User;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class UserMapperTest {
    @Test
    public void insertTest()
    {
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        UserMapper userMapper = (UserMapper) context.getBean("userMapper");
//        System.out.println(userMapper.addUser(new User("abc","asd","sad")));
    }
}
