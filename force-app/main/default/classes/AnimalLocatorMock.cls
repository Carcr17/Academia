@istest

	global class AnimalLocatorMock implements HttpCalloutMock {
        global HTTPResponse respond(HTTPRequest resquest) {
            HttpResponse response = new HttpResponse();
            response.setHeader('Content-Type', 'application/jason');
            response.setBody('{"animal": { "id":1, "name": "cow"}}');
            response.setStatusCode(200);
            return response;
    
    
        }
}