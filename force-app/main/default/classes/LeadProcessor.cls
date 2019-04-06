global class LeadProcessor implements 

	Database.Batchable<sObject>, Database.Stateful {
        
        global Integer recordsProcessed = 0;
        global Database.QueryLocator start (Database.BatchableContext bc) {
            
            String query = 'SELECT LeadSource FROM Lead';
			return Database.getQueryLocator(Query);
            
        }
        
        global void execute (Database.BatchableContext bc, List<Lead> scope){
            
            List<Lead> leads = new List<Lead>();
            for (Lead lead : scope){
                lead.LeadSource = 'DreamForce';
                leads.add(lead);
                
                recordsProcessed = recordsProcessed + 1;               
            }
            update leads;
        }
        global void finish(Database.BatchableContext bc){
    }
}