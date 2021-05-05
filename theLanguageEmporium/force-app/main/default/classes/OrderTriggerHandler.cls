public class OrderTriggerHandler {
    
    public static void LearnerAccessGen(List<Order> orders) {
        List<Learner_Access__c> insertList = new List<Learner_Access__c>();
        
        for (Order o: orders) {
            Learner_Access__c lA = new Learner_Access__c();
            
            lA.Learner__c = o.AccountId;
            lA.Course__c = o.Course__c;
            lA.Order__c = o.Id;
            lA.Access_Since__c = system.today();
            
            insertList.add(lA);
        }
        
        insert insertList;
    }

}