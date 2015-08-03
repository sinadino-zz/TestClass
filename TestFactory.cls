@isTest public class TestFactory {


  /* Returns a valid mock User.
  Update to pass all validation rules and field requiremnts.
  i: an integer to make each mock unique.
  profilename: the name of the profile to assign the user, required.
  */

  public static User buildTestUser( integer i, String profilename){

    User newuser = new User();
    newuser.LastName = profilename + i;
    newuser.Alias = 'user' + i;
    newuser.Email = 'marc@wohoo.com';
    newuser.Username = 'test_' + i + '@df2011.com';
    newuser.CommunityNickname = 'test_' + i + '@whoo.com';
    newuser.ProfileId = [SELECT id FROM Profile WHERE name = :profilename].id;
    newuser.TimeZoneSidKey = 'America/Los Angeles';
    newuser.EmailEncodingKey = 'UTF-8';
    newuser.LanguageLocaleKey = 'en_US';
    newuser.People_Manager__c = true;
    newuser.Region__c = 'west';
    return newuser;
  }

  /* Returns a valid mock Position__c.
  Update tp pass all validation and firld requirements
  i: an integer to make each mock Position unique.
  testUserId: is used for both the hiring manager and KnowledgeArticleVersionStandardController
  You might want to separate those two ids in the future
  */

  public static Position__c buildTestPosition( integer i, Id testUserId){

    Position__c newposition = new Position__c();
    newposition.Name = 'Test Position' + i;
    newposition.Status__c = 'New';
    newposition.Job_Description__c ='Does stuff';
    newposition.Hiring_Manager__c = testUserId;
    newposition.OwnerId = testUserId;
    return newposition;
  }


}
