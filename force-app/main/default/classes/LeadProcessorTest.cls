@istest
public class LeadProcessorTest {
    @testSetup
    static void setup(){
        List<Lead> leads = new List<Lead>();
        
        for (Integer i=0; i<200; i++){
            leads.add(new Lead(LastName = 'Test' + i, Company = 'Apple', MobilePhone = '5-786-366-357'+ i, Status = 'Open - Not Contacted', LeadSource = 'Web'));            
        }
        insert leads;
    }
    
    static testmethod void Leadtest(){
        Test.startTest();
        LeadProcessor lu = new LeadProcessor ();
        Id batchId = Database.executeBatch(lu);
        Test.stopTest();
        
        System.assertEquals (200, [select count() from Lead where LeadSource = 'DreamForce']);
    }
	
}