
package test;

import java.io.*;
import java.util.ArrayList;

import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.*;

@SuppressWarnings("serial")
@WebServlet("/view")
public class ViewAllProductServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        ViewAllProductsDAO dao = new ViewAllProductsDAO();

        ArrayList<ProductBean> al = dao.retrieve();

        req.setAttribute("alist", al);

        RequestDispatcher rd =
                req.getRequestDispatcher("ViewProduct.jsp");

        rd.forward(req, res);
    }
}

