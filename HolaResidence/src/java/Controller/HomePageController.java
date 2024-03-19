/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.AddressDAO;
import DAO.CategoryDAO;
import DAO.RentHouseDAO;
import DAO.UserDAO;
import Model.Category;
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
import java.util.List;
import java.util.Locale;

/**
 *
 * @author FPT SHOP
 */
public class HomePageController extends HttpServlet {

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
            CategoryDAO cateDao = new CategoryDAO();
            Locale locale = new Locale("vi", "VN");
            NumberFormat currencyFormat = NumberFormat.getCurrencyInstance(locale);
            String indexPage = request.getParameter("page");
            if (indexPage == null) {
                indexPage = "1";
            }
            int index = Integer.parseInt(indexPage);
            int count = houseDao.getTotalHouses();
            int endPage = count / 12;
            if (count % 12 != 0) {
                endPage++;
            }
            List<RentHouse> houses = houseDao.getRentHouses(index);
            List<Category> categories = cateDao.getAllCategories();
            List<Province> provinces = addressDao.getAllProvinces();
            List<District> districts = addressDao.getAllDistricts();
            List<Commune> communes = addressDao.getAllCommunes();
            for (RentHouse h : houses) {
                String price = currencyFormat.format(h.getPrice());
                User user = userDao.getUserById(h.getUserId());
                Commune commune = addressDao.getCommuneById(h.getCommuneId());
                District district = addressDao.getDistrictById(commune.getDistrictId());
                Province province = addressDao.getProvinceById(district.getProvinceId());
                request.setAttribute("price", price);
                request.setAttribute("user", user);
                request.setAttribute("commune", commune);
                request.setAttribute("district", district);
                request.setAttribute("province", province);
            }
            request.setAttribute("houses", houses);
            request.setAttribute("categories", categories);
            request.setAttribute("provinces", provinces);
            request.setAttribute("districts", districts);
            request.setAttribute("communes", communes);
            request.setAttribute("endPage", endPage);
            request.setAttribute("indexPage", indexPage);
            RequestDispatcher disp = request.getRequestDispatcher("/Homepage.jsp");
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

        HttpSession session = request.getSession();
        RentHouseDAO houseDao = new RentHouseDAO();
        UserDAO userDao = new UserDAO();
        AddressDAO addressDao = new AddressDAO();
        CategoryDAO cateDao = new CategoryDAO();
        Locale locale = new Locale("vi", "VN");
        NumberFormat currencyFormat = NumberFormat.getCurrencyInstance(locale);
        List<RentHouse> houses = null;
        List<Category> categories = cateDao.getAllCategories();
        List<Province> provinces = addressDao.getAllProvinces();
        List<District> districts = addressDao.getAllDistricts();
        List<Commune> communes = addressDao.getAllCommunes();
        // Lấy dữ liệu từ form
        if (request.getParameter("province").isEmpty() || request.getParameter("district").isEmpty() || request.getParameter("commune").isEmpty()
                || (request.getParameter("province").isEmpty() && request.getParameter("district").isEmpty() && request.getParameter("commune").isEmpty())) {
            String name = request.getParameter("name");
            String category = request.getParameter("category");
            int provinceId = 0;
            int districtId = 0;
            int communeId = 0;
            String minAcreage = request.getParameter("minAcreage");
            String maxAcreage = request.getParameter("maxAcreage");
            String minPrice = request.getParameter("minPrice");
            String maxPrice = request.getParameter("maxPrice");
            houses = houseDao.sortedHouseList(name, category, provinceId, districtId, communeId, minAcreage, maxAcreage, minPrice, maxPrice);
        }
        int endPage = 1;
        for (RentHouse h : houses) {
            String price = currencyFormat.format(h.getPrice());
            User user = userDao.getUserById(h.getUserId());
            Commune commune = addressDao.getCommuneById(h.getCommuneId());
            District district = addressDao.getDistrictById(commune.getDistrictId());
            Province province = addressDao.getProvinceById(district.getProvinceId());
            request.setAttribute("price", price);
            request.setAttribute("user", user);
            request.setAttribute("commune", commune);
            request.setAttribute("district", district);
            request.setAttribute("province", province);
        }
        request.setAttribute("houses", houses);
        request.setAttribute("categories", categories);
        request.setAttribute("provinces", provinces);
        request.setAttribute("districts", districts);
        request.setAttribute("communes", communes);
        request.setAttribute("endPage", endPage);
        // Chuyển hướng hoặc hiển thị kết quả tìm kiếm
        request.getRequestDispatcher("/Homepage.jsp").forward(request, response);
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
