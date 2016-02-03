package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.JSTLPracticeService;

/**
 *
 * @author Alyson
 */
@WebServlet(name = "JSTLPracticeController", urlPatterns = {"/JSTLPracticeController"})
public class JSTLPracticeController extends HttpServlet {

    public static final String RESULTS = "/jstlPractice.jsp";

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
        JSTLPracticeService jps = new JSTLPracticeService();
        String name = request.getParameter("name");
        String gender = request.getParameter("gender");
        String docNum = request.getParameter("number");
        String flavor = request.getParameter("iceCreamFlavor");
        String msg = null;
        try {
            msg = jps.getMsg(name, gender, docNum);
        } catch (IllegalArgumentException e) {
            System.out.println(e.getMessage());
        }
        request.setAttribute("flavor", flavor);
        request.setAttribute("message", msg);
        RequestDispatcher view = request.getRequestDispatcher(RESULTS);
        view.forward(request, response);
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
