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
        HttpSession session = request.getSession();
        if (action == null && (session.getAttribute("account") == null || action != "showFormLogin"))
            action = "";
        switch (action) {
            case "showAccount":
                getAllAccount(request, response);
                break;
            case "showFormLogin":
                showFormLogin(request, response);
                break;
            case "logout":
                logout(request, response);
                break;
            default:
                response.sendRedirect("home/home.jsp");
                break;
        }
    }

    private void resetPassword(HttpServletRequest request, HttpServletResponse response) {
        int accountId = Integer.parseInt(request.getParameter("accountId"));;
        accountService.resetPassword(accountId);
        request.setAttribute("msg","Đã hồi phục thành công");
        RequestDispatcher dispatcher = request.getRequestDispatcher("/AccountServlet?action=showAccount");
        try {
            dispatcher.forward(request,response);
        } catch (ServletException | IOException e) {
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

    private void showFormLogin(HttpServletRequest request, HttpServletResponse response) {
        try {
            response.sendRedirect("login.jsp");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private static void getAllAccount(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<AccountDTO> accountList = accountService.getAllAccount();
        request.setAttribute("accountList", accountList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/account_show.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null)
            action = "";
        switch (action) {
            case "showAccount":
                getAllAccount(request, response);
                break;
            case "login":
                login(request, response);
                break;
            case "resetPassword":
                resetPassword(request, response);
                break;
            default:
                response.sendRedirect("home/home.jsp");
        }
    }

    private void login(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String userName = request.getParameter("username");
        String passWord = request.getParameter("password");
        Account account = accountService.selectAccount(userName, passWord);
        HttpSession session = request.getSession();
        session.setAttribute("account", account);
        if (account != null) {
            response.sendRedirect("/AccountServlet");
        } else {
            request.setAttribute("msg", "Sai tài khoản hoặc mật khẩu");
            RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
            dispatcher.forward(request, response);
        }
    }
}