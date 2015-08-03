public class PositionC_Utilities{


  //This method (Ex.1)assigns a region to a position based on the region assigned to the postion owner, who is the recruiter
public static void assignRegion1(Position__c position){

  // get recruiter's region from the Database
  User recruiter = [SELECT Region__c FROM User WHERE id =:postion.ownerID];

  //copy to the position
  position.Region__c = recruiter.Region__c;
}

//improved method to handle excpetion

public static void assignRegion2(Position__c position){

  // get recruiter's region from the Database
  try {
    User recruiter = [SELECT Region__c FROM User WHERE id =:postion.ownerID];

    //copy to the position
    position.Region__c = recruiter.Region__c;
  }
  catch( QueryException qe){
    System.debug('Query Exception');
  }
}








}
