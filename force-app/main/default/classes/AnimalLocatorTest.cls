@istest
public class AnimalLocatorTest {
    @istest static void testPostCallout() {
        
        Test.setMock(HttpCalloutMock.class, new AnimalLocatorMock());
        
        String response = AnimalLocator.getAnimalNameById(1);
        system.debug('string returned: ' + response);
        String expectedResult = 'cow';
        System.assertEquals(response, expectedResult);
        
    }    
}