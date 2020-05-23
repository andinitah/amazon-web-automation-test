Feature: CRUD

    Scenario: Create booking using json in POST body
        When I send a POST request to "https://restful-booker.herokuapp.com/booking"
        Then the response status should be "200"