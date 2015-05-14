trigger MyTestTrigger on CampaignMember (After Delete) {
	
	System.Debug('Trigger.old = ' + Trigger.old);
	
	List<DeleteMe__c> myList = new List<DeleteMe__c> ();
	
	for(CampaignMember cm : Trigger.old)
	{
		DeleteMe__c dm = new DeleteMe__c();
		dm.TestID__c = cm.ID;
		dm.ParentTestID__c = cm.CampaignID;
		
		myList.add(dm);
	}
	
	Insert myList;
	
}