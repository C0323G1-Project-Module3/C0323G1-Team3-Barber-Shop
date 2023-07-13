package service.account;

import model.Account;
import model.dto_model.AccountDTO;

import java.util.List;

public interface IAccountService {
    Account selectAccount(String userName, String passWord);
    List<AccountDTO> getAllAccount();
    void createAccount(Account account);
    void deleteAccount(int accountId);
    void resetPassword (int accountId);
    Account selectAccountById(int accountId);
}
