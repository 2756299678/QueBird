package Utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/*
 * ���ݿ�Ĺ����࣬�����������ݿ�ͶϿ����ݿ�
 * */

public class DBUtil {
	public static String db_url="jdbc:sqlserver://localhost:1433; DatabaseName=QueBird";
	//�û���
	public static String db_user="ZH";
	public static String db_password="202862";
	
	//��������
	public static Connection getConn(){
		//���ӳ�ʼ��
		Connection conn=null;
		try{
			//����jdbc����
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			conn=DriverManager.getConnection(db_url,db_user,db_password);
			//System.out.print("�ɹ���");
		}
		catch(Exception e){
			//�׳��쳣(����)
			e.printStackTrace();
			//System.out.println("ʧ�ܣ�");
		}
		return conn;
	}
	
	//���������ݼ������ӹر�
	public static void close(Statement state,Connection conn)
	{
		//�ж�
		if(state!=null)
		{
			try{
				state.close();
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
		}
		if(conn!=null)
		{
			try{
				conn.close();
			}
			catch(SQLException e){
				e.printStackTrace();
			}
		}
	}
	//ʹ�ý���������ӹر�
	public static void close(ResultSet rs,Statement state,Connection conn){
		if(rs!=null)
		{
			try{
				rs.close();
			}
			catch (SQLException e)
			{
				e.printStackTrace();
			}
		}
		if(state!=null)
		{
			try{
				state.close();
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
		}
		if(conn!=null)
		{
			try{
				conn.close();
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
		}
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//getConn();
	}
}
