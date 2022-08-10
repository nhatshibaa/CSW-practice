package com.example.nguyentiennhat;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class ListProductServlet extends HttpServlet {
    private IProduct iProduct;

    public ListProductServlet() {
        this.iProduct = new MySqlProductModel();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Product> list = iProduct.findAll();
        req.setAttribute("listProduct", list);
        req.getRequestDispatcher("/list.jsp").forward(req, resp);
    }
}
