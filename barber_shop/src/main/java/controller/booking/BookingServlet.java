package controller.booking;

import controller.account.AccountServlet;
import model.dto_model.BookingDTO;
import service.booking.IBookingService;
import service.booking.impl.BookingService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "BookingServlet", value = "/BookingServlet")
public class BookingServlet extends HttpServlet {
    private final IBookingService bookingService = new BookingService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action){
            case "showBookingEmp":
                showBookingEmp(request,response);
                break;
        }
    }

    private void showBookingEmp(HttpServletRequest request, HttpServletResponse response) {
        List<BookingDTO> dtoList = bookingService.displayBookingEmp();
        request.setAttribute("dtoList",dtoList);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/display_booking_emp.jsp");
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
