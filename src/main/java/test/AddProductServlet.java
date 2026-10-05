package test;

import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.*;

@SuppressWarnings("serial")
@WebServlet("/add")
public class AddProductServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        ProductBean pb = new ProductBean();

        pb.setCode(req.getParameter("code"));
        pb.setName(req.getParameter("name"));
        pb.setPrice(Float.parseFloat(req.getParameter("price")));
        pb.setQty(Integer.parseInt(req.getParameter("qty")));

        AddProductDAO dao = new AddProductDAO();

        int k = dao.insert(pb);

        if (k > 0) {
            req.setAttribute("msg", "Product Added Successfully...");

            RequestDispatcher rd =
                    req.getRequestDispatcher("AddProduct.jsp");

            rd.forward(req, res);
        }
    }
}