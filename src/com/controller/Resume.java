package com.controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.db.DBConnection;

@WebServlet("/Resume")
public class Resume extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private final String UPLOAD_DIRECTORY = "E:/Jigar_Project/Online Recruitment System/WebContent/resume";
       
    public Resume() {
        super();
        // TODO Auto-generated constructor stub
    }
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		String message;
		int id=Integer.parseInt(request.getParameter("id"));
		System.out.println(id);
		if(ServletFileUpload.isMultipartContent(request)){
		            try {
		                List<FileItem> multiparts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
		                for(FileItem item : multiparts){
		                    if(!item.isFormField()){
		                        String name = new File(item.getName()).getName();
		                        item.write( new File(UPLOAD_DIRECTORY + File.separator + name));
		                    }
		                }
		            
		               //File uploaded successfully
		               
		               InputStream inputStream = null;
		               Part filePart = request.getPart("file");
		               if (filePart != null) {
		                   // prints out some information for debugging
		                   System.out.println(filePart.getName());
		                   System.out.println(filePart.getSize());
		                   System.out.println(filePart.getContentType());
		                    
		                   // obtains input stream of the upload file
		                   inputStream = filePart.getInputStream();
		               }
		               try {
		                   // connects to the database
		                   DBConnection db=new DBConnection();
		                   Connection conn=db.GetConnection();
		                   String sql = "update user_master set resume=? where id=?";
		                   PreparedStatement statement = conn.prepareStatement(sql);
		                              
		                   if (inputStream != null) {
		                       // fetches input stream of the upload file for the blob column
		                       statement.setBlob(1, inputStream);
		                   }
		                   statement.setInt(2, id);
		                   // sends the statement to the database server
		                   int row = statement.executeUpdate();
		                   if (row > 0) {
		                       message = "File uploaded and saved into database";
		                   }
		               } catch (SQLException ex) {
		                   message = "ERROR: " + ex.getMessage();
		                   ex.printStackTrace();
		               }
		               request.setAttribute("message", "File Uploaded Successfully");
		               
		            } catch (Exception ex) {
		               request.setAttribute("message", "File Upload Failed due to " + ex);
		            }         
		          
		        }else{
		            request.setAttribute("message",
		                                 "Sorry this Servlet only handles file upload request");
		        }
		     
		        request.getRequestDispatcher("/uploadResume.jsp").forward(request, response);
	}

}
