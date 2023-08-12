package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.*;
import model.*;

/**
 * Servlet implementation class ViewByCategoryController
 */
@WebServlet("/category")
public class ViewByCategoryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewByCategoryController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	resp.setContentType("text/html;charset=UTF-8");
    	int id = Integer.parseInt(req.getParameter("id"));
    	String name = (req.getParameter("name"));
		List<Product> products = new ArrayList<Product>();
		List<Category> categories = new ArrayList<>();
		Category category = new Category();
		ProductDAO productDAO = new ProductDAO();
		CategoryDAO categoryDAO = new CategoryDAO();
//		category = categoryDAO.getById(id);
		categories=categoryDAO.getAll();
		products = productDAO.getProductByCategory(id);
//		System.out.println("size cua products :"+products.size());

		req.setAttribute("categories", categories);
		req.setAttribute("products", products);
		req.getRequestDispatcher("/views/client/index.jsp").forward(req, resp);
	}


}
