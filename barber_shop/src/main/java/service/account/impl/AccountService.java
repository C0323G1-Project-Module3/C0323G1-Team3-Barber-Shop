package service.account.impl;

import model.Account;
import model.dto_model.AccountDTO;
import repository.account.IAccountRepository;
import repository.account.impl.AccountRepository;
import service.account.IAccountService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
    public Map<String, String> createAccount(Account account) {
        Map<String, String> map = new HashMap<>();
        if (account.getUsername() != null)
            accountRepository.createAccount(account);

        return map;
    }

    @Override
    public void deleteAccount(int accountId) {
        accountRepository.deleteAccount(accountId);
    }

    @Override
    public void resetPassword(int accountId) {
        accountRepository.resetPassword(accountId);
    }

    @Override
    public Account selectAccountById(int accountId) {
        return accountRepository.selectAccountById(accountId);
    }
}
