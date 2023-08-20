package com.app;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDate;

/**
 * Servlet implementation class result1
 */
public class result1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public result1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out= response.getWriter();
		String username=(String)request.getAttribute("todo");
		String variableValue=username;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			//Change @username and @password in the below statement(Connection con) according to your SQL
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/htmldata","@username","@password");
			
			Statement stmt = con.createStatement();
			String query="SELECT p1.PlantId, p1.username, p1.plantName, p1.Plantingdate, p2.Information, p2.TimeInterval FROM intelligrowmain p1 JOIN plantdata p2 ON p1.plantName = p2.plantName WHERE p1.username = '" + username +"'";
			ResultSet rs1=stmt.executeQuery(query);
			out.print("<body style='background-color: rgb(173, 231, 173);'>");
			out.print("<h1 style='text-align: center;' >Your Plants<h1>");
			out.print("<table border='1' style='margin: auto;'><tr><th>Plant Id</th><th>Plant Name</th><th>Planting Date</th><th>Information</th><th>1st Scheduled Watering</th><th>2nd Scheduled Watering</th><th>3rd Scheduled Watering</th></tr>");
			while (rs1.next()) {
                String plantName = rs1.getString("plantName");
                int id=rs1.getInt("PlantId");
                LocalDate plantDate = rs1.getDate("plantingDate").toLocalDate();
                String plantInformation = rs1.getString("Information");
                int timeIntervalDays = rs1.getInt("TimeInterval");

                LocalDate calculatedDate1 = plantDate.plusDays(timeIntervalDays);
                LocalDate calculatedDate2 = plantDate.plusDays(timeIntervalDays*2);
                LocalDate calculatedDate3 = plantDate.plusDays(timeIntervalDays*3);
                out.print("<tr><td>"+ id +"</td><td>"+ plantName +"</td><td>"+ plantDate +"</td><td>"+ plantInformation +"</td><td>"+ calculatedDate1 +"</td><td>"+ calculatedDate2 +"</td><td>"+ calculatedDate3+"</td></tr>");
			}
			out.print("</table>");
			out.print("<button type='submit' style='margin-left: 43%;' onclick=window.history.back();>Add new Plant</button>");
	        String buttonHtml = "<button style='margin-left: 1%;'><a href='remove.jsp?value=" + variableValue + "'>Remove plant</a></button>";
	        response.getWriter().print(buttonHtml);
			out.print("</body>");

		}
		catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			out.print("<h1>Class not found</h1>");
			out.print(e);
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			out.print("<h1>sql Eception</h1>");
			out.print(e);
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
