package ashish;

import java.sql.*;  
import java.util.ArrayList;  
import java.util.List;  
import ashish.user;  
public class userDao {  
  
public static Connection getConnection(){  
    Connection con=null;  
    try{  
        Class.forName("com.mysql.jdbc.Driver");  
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/reg","root","root");  
    }catch(Exception e){System.out.println(e);}  
    return con;  
}  
public static int save(user u){  
    int status=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement(  
"insert into registration values(?,?,?,?,?,?,?,?)");  
        ps.setInt(1,0);
        ps.setString(2,u.getUname());  
        ps.setString(3,u.getPwd());  
        ps.setString(4,u.getFname());  
        ps.setString(5,u.getLname());  
        ps.setString(6,u.getEmail());  
        ps.setString(7,u.getPnumber());
        ps.setString(8,u.getLocation());
        status=ps.executeUpdate();  
    }catch(Exception e){System.out.println(e);}  
    return status;  
}  
public static int update(user u){  
    int status=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement(  
"update registration set fname=?,lname=?,email=?,pnumber=?,location=? where id=?");  
         
       // ps.setString(2,u.getPwd());  
        ps.setString(1,u.getFname());  
        ps.setString(2,u.getLname());  
        ps.setString(3,u.getEmail());  
        ps.setString(4,u.getPnumber());
        ps.setString(5,u.getLocation());
        ps.setInt(6,u.getId());  
        status=ps.executeUpdate();  
    }catch(Exception e){System.out.println(e);}  
    return status;  
}  
public static int delete(user u){  
    int status=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("delete from registration where id=?");  
        ps.setInt(1,u.getId());  
        status=ps.executeUpdate();  
    }catch(Exception e){System.out.println(e);}  
  
    return status;  
}  
public static List<user> getAllRecords(){  
    List<user> list=new ArrayList<user>();  
      
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from registration");  
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
            user u=new user();  
            u.setId(rs.getInt("id"));  
            u.setFname(rs.getString("fname"));  
            u.setLname(rs.getString("lname"));  
            u.setEmail(rs.getString("email"));  
            u.setPnumber(rs.getString("pnumber"));  
            u.setLocation(rs.getString("location"));  
            list.add(u);  
        }  
    }catch(Exception e){System.out.println(e);}  
    return list;  
}  
public static user getRecordById(int id){  
    user u=null;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from registration where id=?");  
        ps.setInt(1,id);  
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
            u=new user();  
            u.setId(rs.getInt("id"));  
            u.setFname(rs.getString("fname"));  
            u.setLname(rs.getString("lname"));  
            u.setEmail(rs.getString("email"));  
            u.setPnumber(rs.getString("pnumber"));  
            u.setLocation(rs.getString("location"));  
        }  
    }catch(Exception e){System.out.println(e);}  
    return u;  
}  
}  
