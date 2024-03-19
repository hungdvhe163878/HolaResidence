/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.UserDAO;
import com.google.gson.Gson;
import com.google.gson.JsonObject;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpSession;
import java.io.PrintWriter;
import Model.Constants;
import Model.User;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.fluent.Form;
import org.apache.http.client.fluent.Request;

/**
 *
 * @author Son Nguyen
 */
@WebServlet(name = "CustomerController", urlPatterns = {"/customer"})
public class CustomerController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            UserDAO lgDAO = new UserDAO();
            
            String service = request.getParameter("service");
            if (service == null) {
                response.sendRedirect("login.jsp");
            } else {
                switch (service) {
                    case "login":
                        String user_email = request.getParameter("user_email");
                        String user_password = request.getParameter("user_password");
                        User user = lgDAO.getUserByEmailAndPassword(user_email, user_password);
                        if (user == null) {
                            request.getRequestDispatcher("login.jsp").forward(request, response);
                        } else {
                            HttpSession session = (HttpSession) request.getSession();
                            session.setAttribute("user", user);
                            switch (user.getRoleId()) {
                                case 1:
                                    response.sendRedirect("HealthCare/home");
                                    break;
                                case 2:
                                    response.sendRedirect("CenterManage/nurse");
                                    break;
                              
                            }
                        }
                        break;

                    case "login_via_google":
                        String code = request.getParameter("code");
                        String accessToken = getToken(code);
                        User u = lgDAO.getUserByEmailAndPassword(getUserInfo(accessToken).getEmail(),"isVerifi");
                        u.setImages(getUserInfo(accessToken).getImages());
                        HttpSession session = request.getSession();
                        session.setAttribute("user", u);
                        switch (u.getRoleId()) {
                                case 1:
                                    response.sendRedirect("");
                                    break;
                                case 2:
                                    response.sendRedirect("");
                                    break;
                                
                            }
                        
                        break;

                }
            }
        }
    }

     public static String getToken(String code) throws ClientProtocolException, IOException {
        // call api to get token
        String response = Request.Post(Constants.GOOGLE_LINK_GET_TOKEN)
                .bodyForm(Form.form().add("client_id", Constants.GOOGLE_CLIENT_ID)
                        .add("client_secret", Constants.GOOGLE_CLIENT_SECRET)
                        .add("redirect_uri", Constants.GOOGLE_REDIRECT_URI).add("code", code)
                        .add("grant_type", Constants.GOOGLE_GRANT_TYPE).build())
                .execute().returnContent().asString();

        JsonObject jobj = new Gson().fromJson(response, JsonObject.class
        );
        String accessToken = jobj.get("access_token").toString().replaceAll("\"", "");
        return accessToken;
    }

    public static User getUserInfo(final String accessToken) throws ClientProtocolException, IOException {
        String link = Constants.GOOGLE_LINK_GET_USER_INFO + accessToken;
        String response = Request.Get(link).execute().returnContent().asString();
        User googlePojo = new Gson().fromJson(response, User.class
        );

        return googlePojo;
    }

    @Override
    protected void doGet(jakarta.servlet.http.HttpServletRequest request, jakarta.servlet.http.HttpServletResponse response)
            throws jakarta.servlet.ServletException, IOException {
        processRequest(request, response);

    }

    @Override
    protected void doPost(jakarta.servlet.http.HttpServletRequest request, jakarta.servlet.http.HttpServletResponse response)
            throws jakarta.servlet.ServletException, IOException {
        processRequest(request, response);
        // Add code for handling POST request if needed
    }

    @Override
    public String getServletInfo() {
        return "Servlet for handling user_id login";
    }
}
      