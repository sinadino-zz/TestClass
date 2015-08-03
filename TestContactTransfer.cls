@isTest
public class TestContactTransfer{

static testMethod void testDupes() {
    // Principle #1: Create records from scratch!
    Contact contact  = new Contact();
    contact.LastName = 'Spiderman';
    contact.Email    = 'spiderman@gmail.com';
    insert contact;


  }
}
