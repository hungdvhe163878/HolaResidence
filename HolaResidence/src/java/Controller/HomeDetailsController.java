/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.AddressDAO;
import DAO.RentHouseDAO;
import DAO.UserDAO;
import Model.Commune;
import Model.District;
import Model.Province;
import Model.RentHouse;
import Model.User;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.text.NumberFormat;
import java.util.Locale;

/**
 *
 * @author FPT SHOP
 */
public class HomeDetailsController extends HttpServlet {

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
            HttpSession session = request.getSession();
            RentHouseDAO houseDao = new RentHouseDAO();
            UserDAO userDao = new UserDAO();
            AddressDAO addressDao = new AddressDAO();
            Locale locale = new Locale("vi", "VN");
            NumberFormat currencyFormat = NumberFormat.getCurrencyInstance(locale);

            int id = Integer.parseInt(request.getParameter("id"));
            RentHouse house = houseDao.getRentHouseById(id);

            String price = currencyFormat.format(house.getPrice());
            User user = userDao.getUserById(house.getUserId());
            Commune commune = addressDao.getCommuneById(house.getCommuneId());
            District district = addressDao.getDistrictById(commune.getDistrictId());
            Province province = addressDao.getProvinceById(district.getProvinceId());
            request.setAttribute("price", price);
            request.setAttribute("user", user);
            request.setAttribute("commune", commune);
            request.setAttribute("district", district);
            request.setAttribute("province", province);
            request.setAttribute("house", house);
            RequestDispatcher disp = request.getRequestDispatcher("/HomeDetails.jsp");
            disp.forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
