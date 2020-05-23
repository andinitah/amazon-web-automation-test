Feature: CRUD

    Scenario: Create booking using json in POST body
        When I send a POST request to "https://restful-booker.herokuapp.com/booking"
        Then the response status should be "200"

    Scenario: Delete Booking
        Given  Get token to "https://restful-booker.herokuapp.com/auth"
        When Delete id "10" from "https://restful-booker.herokuapp.com/booking"
        Then the response status should be "201"