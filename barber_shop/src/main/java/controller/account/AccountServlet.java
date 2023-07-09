package controller.account;

import model.Account;
import model.dto_model.AccountDTO;
import service.account.IAccountService;
import service.account.impl.AccountService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AccountServlet", value = "/AccountServlet")
public class AccountServlet extends HttpServlet {
    private static IAccountService accountService = new AccountService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null)
            action = "";
        switch (action) {
            case "admin":
                getAllAccount(request, response);
                break;
            case "showFormLogin":
                ShowFormLogin(request, response);
                break;
            case "create":
                createAccount(request, response);
                break;
            case "delete":
                deleteAccount(request, response);
                break;
            case "logout":
                logout(request, response);
                break;
            default:
                response.sendRedirect("home/home.jsp");
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

    private void deleteAccount(HttpServletRequest request, HttpServletResponse response) {
    }

    private void ShowFormLogin(HttpServletRequest request, HttpServletResponse response) {
        try {
            response.sendRedirect("login.jsp");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void createAccount(HttpServletRequest request, HttpServletResponse response) {

    }

    private static void getAllAccount(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<AccountDTO> accountList = accountService.getAllAccount();
        request.setAttribute("accountList", accountList);
        System.out.println(accountList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/page_admin.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null)
            action = "";
        switch (action) {
            case "login":
                login(request, response);
                break;
            case "editPassword":
                editPassword(request, response);
        }
    }

    private void editPassword(HttpServletRequest request, HttpServletResponse response) {
    }

    private static void login(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String userName = request.getParameter("username");
        String passWord = request.getParameter("password");
        Account account = accountService.selectAccount(userName, passWord);
        System.out.println(account);
        HttpSession session = request.getSession();
        session.setAttribute("account", account);
        System.out.println(account);
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
