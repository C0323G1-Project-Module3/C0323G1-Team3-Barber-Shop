package controller.account;

import model.Account;
import model.Customer;
import model.Employee;
import model.Service;
import model.dto_model.AccountDTO;
import model.dto_model.BookingDTO;
import service.account.IAccountService;
import service.account.impl.AccountService;
import service.customer.ICustomerService;
import service.customer.impl.CustomerService;
import service.employee.IEmployeeService;
import service.employee.impl.EmployeeService;
import service.booking.IBookingService;
import service.booking.impl.BookingService;
import service.service.IServiceService;
import service.service.impl.ServiceService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AccountServlet", value = "/AccountServlet")
public class AccountServlet extends HttpServlet {
    private static IAccountService accountService = new AccountService();
    private static final IEmployeeService employeeService = new EmployeeService();
    private static final ICustomerService customerService = new CustomerService();
    private static final IBookingService bookingService = new BookingService();
    private static final IServiceService serviceService = new ServiceService();


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        HttpSession session = request.getSession();
        if (action == null &&(session.getAttribute("account")==null || action!="showFormLogin"))

            action = "";
        switch (action) {
            case "admin":
                getAllAccount(request, response);
                break;
            case "showFormLogin":
                ShowFormLogin(request, response);
                break;
            case "showFormEdit":
                showFormEdit(request, response);
                break;
            case "logout":
                logout(request, response);
                break;
            default:
                response.sendRedirect("home/home.jsp");
                break;

        }
    }

    private void showFormEdit(HttpServletRequest request, HttpServletResponse response) {
        int accountId = Integer.parseInt(request.getParameter("id"));
        Account account = accountService.selectAccountById(accountId);
        System.out.println(account);
        request.setAttribute("account", account);
        RequestDispatcher dispatcher = request.getRequestDispatcher("edit_account.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void logout(HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession();
        session.removeAttribute("account");
        try {
            response.sendRedirect("home/home.jsp");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void ShowFormLogin(HttpServletRequest request, HttpServletResponse response) {
        try {
            response.sendRedirect("login.jsp");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private static void getAllAccount(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<BookingDTO> bookingDTOList = bookingService.displayBooking();
        List<AccountDTO> accountList = accountService.getAllAccount();
        List<Employee> employeeList = employeeService.display();
        List<Customer> customerList =  customerService.viewAllCustomer();
        List<Service> serviceList = serviceService.displayAll();
        request.setAttribute("serviceList", serviceList);
        request.setAttribute("customerList",customerList);
        request.setAttribute("employeeList",employeeList);
        request.setAttribute("accountList", accountList);
        request.setAttribute("bookingDTOList",bookingDTOList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/page_admin.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if (action == null )
            action = "";
        switch (action) {
            case "login":
                login(request, response);
                break;
            case "editPassword":
                editPassword(request, response);
                break;
            default:
                response.sendRedirect("home/home.jsp");
        }
    }

    private void editPassword(HttpServletRequest request, HttpServletResponse response) {
        int accountId = Integer.parseInt(request.getParameter("id"));
        String password = request.getParameter("password");
        String confirm = request.getParameter("confirm");
        if (password.equals(confirm)) {
            accountService.editPassword(accountId, password);
            try {
                response.sendRedirect("/AccountServlet?action=admin");
            } catch (IOException e) {
                e.printStackTrace();
            }
        } else {
            request.setAttribute("msg", "Mật khẩu không trùng");
            RequestDispatcher dispatcher = request.getRequestDispatcher("edit_account.jsp");
            try {
                dispatcher.forward(request, response);
            } catch (ServletException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    private void login(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String userName = request.getParameter("username");
        String passWord = request.getParameter("password");
        Account account = accountService.selectAccount(userName, passWord);
        HttpSession session = request.getSession();
        session.setAttribute("account", account);
        if (account != null) {
            if (account.getRoleId() == 3) {
                response.sendRedirect("/AccountServlet?action=admin");
            } else {
                response.sendRedirect("home/home.jsp");
            }
        } else {
            request.setAttribute("msg", "Sai tài khoản hoặc mật khẩu");
            RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
            dispatcher.forward(request, response);
        }
    }
}
