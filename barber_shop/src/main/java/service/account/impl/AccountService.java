package service.account.impl;

import model.Account;
import model.dto_model.AccountDTO;
import repository.account.IAccountRepository;
import repository.account.impl.AccountRepository;
import service.account.IAccountService;

import java.util.List;

public class AccountService implements IAccountService {
    private static IAccountRepository accountRepository = new AccountRepository();

    @Override
    public Account selectAccount(String userName, String passWord) {
        return accountRepository.selectAccount(userName, passWord);
    }

    @Override
    public List<AccountDTO> getAllAccount() {
        return accountRepository.getAllAccount();
    }

    @Override
    public void createAccount(Account account) {
        accountRepository.createAccount(account);
    }

    @Override
    public void deleteAccount(int accountId) {
        accountRepository.deleteAccount(accountId);
    }


    @Override
    public Account selectAccountById(int accountId) {
        return accountRepository.selectAccountById(accountId);
    }

    @Override
    public void resetPassword(int accountId) {

    }
}
