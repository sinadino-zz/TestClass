@isTest private class PositionC_Tests{

  testMethod private static void testAssignRecruiterRegion1()
  {
    User testUser =  TestFactory.buildTestUser( 0, ' Custom - Recruiter')
    insert testUser;
    Position__c testPosition = TestFactory.buildTestPosition( 0, testUser.id);
    insert testPosition;

    Position__c dbPosition = [SELECT Region__c FROM Position__c FROM Position__c WHERE id = :testPosition.id];
    System.assertEquals (dbPosition.Region__c, testUser.Region__c);
  }
}
