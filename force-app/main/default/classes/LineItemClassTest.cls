@istest
public class LineItemClassTest {
    @istest
    private static void TestInsertLineItem (){
        
        Line_Item__c lit = new Line_Item__c(Description__c = 'Camisa', Type__c = 'Large');
 
        Test.startTest();
        insert lit;
        
        
        Product_Line_Item__c pli = [SELECT Id, Description__c, Type__c FROM Product_Line_Item__c WHERE Line_Item__c =: lit.Id ];
        
        System.assertEquals(pli.Description__c, lit.Description__c, 'son iguales');
        Test.stopTest();
        
        
    }
}