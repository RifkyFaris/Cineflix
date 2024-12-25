package movie;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
public class MovieController {
	private static boolean isSuccess;
	private static Connection con=null;
	private static Statement stmt=null;
	private static ResultSet rs=null;
	
	public static boolean insertdata(String name,String content,String category,String revenueModel,int contentproviderid) {
		isSuccess=false;
		try {
			con=DBConnection.getConnection();
			stmt=con.createStatement();
			String sql="insert into movie values(0,'"+name+"','"+content+"','"+category+"','"+revenueModel+"','"+contentproviderid+"')";
			int rs=stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess=true;
			}
			else {
				isSuccess=false;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess; 
	}
	//getbyid
	public static List<Media> getById (String Id){
		int convertedID=Integer.parseInt(Id);
		List<Media> mediaList=new ArrayList<>();
		try {
			con=DBConnection.getConnection();
			stmt=con.createStatement();
			String sql="select * from book where id='"+convertedID+"'";
			rs=stmt.executeQuery(sql);
					while(rs.next()) {
						int id=rs.getInt(1);
						String name=rs.getString(2);
						String content=rs.getString(3);
						String category=rs.getString(4);
						String revenueModel=rs.getString(5);
						String contentproviderID=rs.getString(6);
						
						if (category.equals("movie")) {
		                    mediaList.add(new Movie(id, name, content, category, revenueModel, contentproviderID));
		                } else if (category.equals("tvseries")) {
		                    mediaList.add(new TVSeries(id, name, content, category, revenueModel, contentproviderID));
		                }
						
					}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return mediaList;
	}
	//GetAllMovies
	public static ArrayList<Media> getAllMovies(){
		ArrayList<Media> media=new ArrayList<>();
		try {
			con=DBConnection.getConnection();
			stmt=con.createStatement();
			String sql="select * from movie";
			rs=stmt.executeQuery(sql);
					while(rs.next()) {
						int id=rs.getInt(1);
						String name=rs.getString(2);
						String content=rs.getString(3);
						String category=rs.getString(4);
						String revenueModel=rs.getString(5);
						String contentproviderID=rs.getString(6);
						
						if (category.equals("movie")) {
		                    media.add(new Movie(id, name, content, category, revenueModel, contentproviderID));
		                } else if (category.equals("tvseries")) {
		                    media.add(new TVSeries(id, name, content, category, revenueModel, contentproviderID));
		                }
						
						
					}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return media;
	}
	//getmoviebycategory
	public static ArrayList<Media> getAllMoviesfromCategory(){
		ArrayList<Media> media=new ArrayList<>();
		try {
			con=DBConnection.getConnection();
			stmt=con.createStatement();
		
			String sql="select * from movie where category='movie'";
			rs=stmt.executeQuery(sql);
					while(rs.next()) {
						int id=rs.getInt(1);
						String name=rs.getString(2);
						String content=rs.getString(3);
						String category=rs.getString(4);
						String revenueModel=rs.getString(5);
						String contentproviderID=rs.getString(6);
						
						if (category.equals("movie")) {
		                    media.add(new Movie(id, name, content, category, revenueModel, contentproviderID));
		                } else if (category.equals("tvseries")) {
		                    media.add(new TVSeries(id, name, content, category, revenueModel, contentproviderID));
		                }
						
						
					}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return media;
	}
	
	//gettvseriesbycategory
		public static ArrayList<Media> getAllTVSeriesfromCategory(){
			ArrayList<Media> media=new ArrayList<>();
			try {
				con=DBConnection.getConnection();
				stmt=con.createStatement();
			
				String sql="select * from movie where category='tvseries'";
				rs=stmt.executeQuery(sql);
						while(rs.next()) {
							int id=rs.getInt(1);
							String name=rs.getString(2);
							String content=rs.getString(3);
							String category=rs.getString(4);
							String revenueModel=rs.getString(5);
							String contentproviderID=rs.getString(6);
							
							if (category.equals("movie")) {
			                    media.add(new Movie(id, name, content, category, revenueModel, contentproviderID));
			                } else if (category.equals("tvseries")) {
			                    media.add(new TVSeries(id, name, content, category, revenueModel, contentproviderID));
			                }
							
							
						}
			}catch(Exception e) {
				e.printStackTrace();
			}
			return media;
		}
	
	//update
	public static boolean updatedata(String id,String name) {
		try {
			con=DBConnection.getConnection();
			stmt=con.createStatement();
			String sql="update movie set name='"+name+"'"
					+"where id='"+id+"'";
	
			int rs=stmt.executeUpdate(sql);
			if(rs>0) {
				isSuccess=true;
			}
			else  {
				isSuccess=false;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
//delete
	public static boolean deletedata(String id) {
		int convID=Integer.parseInt(id);
		try {
			con=DBConnection.getConnection();
			stmt=con.createStatement();
			String sql="delete from movie where id='"+convID+"'";
			int rs=stmt.executeUpdate(sql);
			if(rs>0) {
				isSuccess=true;
			}
			else {
				isSuccess=false;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	
}
