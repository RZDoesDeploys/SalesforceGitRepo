public with sharing class Template {
    public static void getAccounts() {
        if(Account.SObjectType.getDescribe().isAccessible()){
            List<Account> accounts = [SELECT Id, Name from Account LIMIT 10];
            system.debug('Accounts>>' + accounts);
        }
    }
}