package traffic;
import java.sql.*;

public class LoginDao {
	String query;
	int status;
     public boolean check(String dbuid,String dbpass,int type)
     {
    	 if(type==6)
    	 {
    		 query="select * from policelogin where pusername=? and ppassword=?";
    	 }
    	 else if(type==5)
    	 {
    		 query="select * from medicalagentlogin where mausername=? and mapassword=?";
    	 }
    	 else if(type==7)
    	 {
    		 query="select * from policecontrollogin where pcusername=? and pcpassword=?";
    	 }
    	 try{  
    		 Class.forName("com.mysql.jdbc.Driver");  
    		 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/trafficsystem","root","17Cs108@#");  
    		 PreparedStatement stmt=con.prepareStatement(query);
    		 stmt.setString(1,dbuid);
    		 stmt.setString(2, dbpass);
    		 ResultSet rs=stmt.executeQuery();  
    		 if(rs.next())
    		 {
    			return true; 
    		 }
    		 con.close();  
    		 }catch(Exception e){ System.out.println(e);}  
    		 
         return false;
     }
     public boolean checkrepeat(String viname,String veno)
     {   query="select * from violation where violationname=? and vehicleno=?";
    	 try{  
    		 Class.forName("com.mysql.jdbc.Driver");  
    		 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/trafficsystem","root","17Cs108@#");  
    		 PreparedStatement stmt=con.prepareStatement(query);
    		 stmt.setString(1,viname);
    		 stmt.setString(2,veno);
    		 ResultSet rs=stmt.executeQuery();  
    		 if(rs.next())
    		 {
    			return true; 
    		 }
    		 con.close();  
    		 }catch(Exception e){ System.out.println(e);}  
    		 
         return false;
     }
     public int insertViolation(String violationName,String violationType,String drivingLicenseno,String vehicleNumber,String location,String dat,String tim,String checker)
     {  
    	 query="insert into violation values(?,?,?,?,?,?,?,?)";
    	 try{  
    		 Class.forName("com.mysql.jdbc.Driver");  
    		 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/trafficsystem","root","17Cs108@#");  
    		 PreparedStatement stmt=con.prepareStatement(query);
    		 stmt.setString(1,violationName);
    		 stmt.setString(2,violationType);
    		 stmt.setString(3,drivingLicenseno);
    		 stmt.setString(4,vehicleNumber);
    		 stmt.setString(5,location);
    		 stmt.setString(6,dat);
    		 stmt.setString(7,tim);
    		 stmt.setString(8,checker);
    		 status=stmt.executeUpdate();
    		 con.close();  
    		 }catch(Exception e){ System.out.println(e);}  
    	     return status;
    
    	 
     }
     public int insertAccident(String location,String noofpeo,String toa,String dat,String tim)
     {  
    	 query="insert into accident values(?,?,?,?,?)";
    	 try{  
    		 Class.forName("com.mysql.jdbc.Driver");  
    		 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/trafficsystem","root","17Cs108@#");  
    		 PreparedStatement stmt=con.prepareStatement(query);
    		 stmt.setString(1,location);
    		 stmt.setString(2,noofpeo);
    		 stmt.setString(3,toa);
    		 stmt.setString(4,dat);
    		 stmt.setString(5,tim);
    		 status=stmt.executeUpdate();
    		 con.close();  
    		 }catch(Exception e){ System.out.println(e);}  
    	     return status;
    
    	 
     }
     public int deletesosreq(String village,String city,int pincode)
     {  
    	 query="delete from sosRequest where Village=? and City=? and Pincode=?";
    	 try{  
    		 Class.forName("com.mysql.jdbc.Driver");  
    		 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/trafficsystem","root","17Cs108@#");  
    		 PreparedStatement stmt=con.prepareStatement(query);
    		 stmt.setString(1,village);
    		 stmt.setString(2,city);
    		 stmt.setInt(3,pincode);
    		 status=stmt.executeUpdate();
    		 con.close();  
    		 }catch(Exception e){ System.out.println(e);}  
    	     return status;
    
    	 
     }
     public int insertsosReq(String village,String city,int pincode)
     {  
    	 query="insert into sosRequest values(?,?,?)";
    	 try{  
    		 Class.forName("com.mysql.jdbc.Driver");  
    		 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/trafficsystem","root","17Cs108@#");  
    		 PreparedStatement stmt=con.prepareStatement(query);
    		 stmt.setString(1,village);
    		 stmt.setString(2,city);
    		 stmt.setInt(3,pincode);
    		 status=stmt.executeUpdate();
    		 con.close();  
    		 }catch(Exception e){ System.out.println(e);}  
    	     return status;
    
    	 
     }
     public int insertAccident1(String location,String noofpeo,String toa,String dat,String tim)
     {  
    	 query="insert into accambu values(?,?,?,?,?)";
    	 try{  
    		 Class.forName("com.mysql.jdbc.Driver");  
    		 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/trafficsystem","root","17Cs108@#");  
    		 PreparedStatement stmt=con.prepareStatement(query);
    		 stmt.setString(1,location);
    		 stmt.setString(2,noofpeo);
    		 stmt.setString(3,toa);
    		 stmt.setString(4,dat);
    		 stmt.setString(5,tim);
    		 status=stmt.executeUpdate();
    		 con.close();  
    		 }catch(Exception e){ System.out.println(e);}  
    	     return status;
    
    	 
     }
     public int deletesendambulencedetail(String location,String toa,String date,String time)
     {  
    	 query="delete from accambu where location=? and typeofaccident=? and dat=? and tim=?";
    	 try{  
    		 Class.forName("com.mysql.jdbc.Driver");  
    		 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/trafficsystem","root","17Cs108@#");  
    		 PreparedStatement stmt=con.prepareStatement(query);
    		 stmt.setString(1,location);
    		 stmt.setString(2,toa);
    		 stmt.setString(3,date);
    		 stmt.setString(4,time);
    		 status=stmt.executeUpdate();
    		 con.close();  
    		 }catch(Exception e){ System.out.println(e);}  
    	     return status;
    
    	 
     }
     public void insertcop(String pnid,String pnpass)
     {  
    	 query="insert into policelogin values(?,?)";
    	 try{  
    		 Class.forName("com.mysql.jdbc.Driver");  
    		 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/trafficsystem","root","17Cs108@#");  
    		 PreparedStatement stmt=con.prepareStatement(query);
    		 stmt.setString(1,pnid);
    		 stmt.setString(2,pnpass);
    		 stmt.executeUpdate();
    		 con.close();  
    		 }catch(Exception e){ System.out.println(e);}  
    
    	 
     }
     public boolean check1(String dbuid)
     {
    	 try{  
    		 Class.forName("com.mysql.jdbc.Driver");  
    		 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/trafficsystem","root","17Cs108@#");  
    		 PreparedStatement stmt=con.prepareStatement("select * from policelogin where pusername=?");
    		 stmt.setString(1,dbuid);
    		 ResultSet rs=stmt.executeQuery();  
    		 if(rs.next())
    		 {
    			return true; 
    		 }
    		 con.close();  
    		 }catch(Exception e){ System.out.println(e);}  
    		 
         return false;
     }
}

