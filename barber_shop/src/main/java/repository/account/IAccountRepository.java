package repository.account;

import model.Account;
import model.dto_model.AccountDTO;

import java.util.List;

public interface IAccountRepository {
    Account selectAccount(String userName, String passWord);

    List<AccountDTO> getAllAccount();

    void createAccount(Account account);

    void deleteAccount(int accountId);

    void editPassword(int accountId,String password);
}
