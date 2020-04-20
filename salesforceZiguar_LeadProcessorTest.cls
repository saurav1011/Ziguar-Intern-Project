@isTest
public class LeadProcessorTest {
    
    @isTest    
    public static void testit() {
        List<lead> pb = new List<lead>();
        for (Integer i = 0; i<200; i++) {
            lead v = new lead();
            v.LastName = 'name'+i;
            v.company = 'company';
            v.Status =  'somestatus';
            v.country= 'country';
            v.LeadSource= 'LeadSource';
            v.Rating ='Rating';
            pb.add(v);
        }
        insert pb;
        
        test.startTest();
        
        LeadProcessor lp = new LeadProcessor();
        Id batchId = Database.executeBatch(lp);
        Test.stopTest();
            
    }

}
