public with sharing class RG_ExportMultiSheetCtrl {
    
    private transient list<Account> allAccounts = new list<Account>();
    private transient list<Contact> allContacts = new list<Contact>();
  //  private transient list<Opportunity> AllOpportunities = new list<Opportunity>();
    
     public String xlsHeader {
            get {
                String strHeader = '';
                strHeader += '<?xml version="1.0"?>';
                strHeader += '<?mso-application progid="Excel.Sheet"?>';
                return strHeader;
            }
        }
      
    
    public RG_ExportMultiSheetCtrl(){
        
        
        allAccounts = [SELECT Id,Name FROM Account LIMIT 10];
        allContacts = [SELECT Id,Name FROM Contact LIMIT 10];
       //  AllOpportunities = [SELECT Id,Name FROM Opportunity LIMIT 10];
    }
    
    public list<Account> getAllAccounts(){
        return allAccounts;
    }
    
    public list<Contact> getAllContacts(){
        return allContacts;
    }
    
  //  public list<Opportunity> getAllOpportunities(){
   //     return AllOpportunities;
   // } 
}