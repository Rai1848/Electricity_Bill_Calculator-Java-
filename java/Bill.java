
import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet("/Bill")
public class Bill extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String name = request.getParameter("name");
        int units = Integer.parseInt(request.getParameter("units"));
        double billAmount = 0;

        if (units <= 100) {
            billAmount = units * 2.5;
        } else if (units <= 200) {
            billAmount = (100 * 2.5) + ((units - 100) * 3.5);
        } else if (units <= 500) {
            billAmount = (100 * 2.5) + (100 * 3.5) + ((units - 200) * 5);
        } else {
            billAmount = (100 * 2.5) + (100 * 3.5) + (300 * 5) + ((units - 500) * 7);
        }

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/electricity_db", "root", "");
            PreparedStatement ps = con.prepareStatement(
                "INSERT INTO bills (consumer_name, units, bill_amount) VALUES (?, ?, ?)"
            );
            ps.setString(1, name);
            ps.setInt(2, units);
            ps.setDouble(3, billAmount);
            ps.executeUpdate();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        request.setAttribute("name", name);
        request.setAttribute("units", units);
        request.setAttribute("billAmount", billAmount);

        RequestDispatcher rd = request.getRequestDispatcher("result.jsp");
        rd.forward(request, response);
    }
}
