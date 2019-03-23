public class LineItemClass {
     public static void inserProductLineItem(List <Line_Item__c> Items){
        Product_Line_Item__c pli = new Product_Line_Item__c();
        
        for (Line_Item__c li : items){
            pli.Description__c = li.Description__c;     
            pli.Type__c = li.Type__c;
            pli.Line_Item__c = li.id;
            
        }
        try{
            insert pli;
        }
        catch (Exception ex) {
            System.debug (ex);
        } 
       }
}