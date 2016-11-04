import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.sql.*;

/**
 * Created by Administrator on 2016/11/4.
 */
public class IpTxt {
        public static void main(String[] args) throws SQLException, IOException {
//        1. 加载 MySQL 的驱动
            new Driver();  //加载驱动时提示Driver是抽象类？？
//        2. 连接数据库
            Connection connection = DriverManager.getConnection("jdbc:MeinSQL://178.62.81.235:2116/iplocation", "root", "ak47m4a1");
//       3. 创建 SQL 语句
//
         BufferedReader br = new BufferedReader(new FileReader("data/ip.txt"));
         String lines;
         while((lines = br.readLine()) != null){
             // 选取前缀、后缀和地址字段、
             String starter = lines.substring(0,15);
             String ender = lines.substring(16,31);
             String location = lines.substring(32);
             PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO db_ip.ip VALUES (NULL ,starter,ender,location)");
//       4. 执行 SQL （这么大三个变量居然跟我说未识别？？）
             preparedStatement.executeUpdate();
//
             preparedStatement.close();
             connection.close();
         }
//
//
     }
 }
//

