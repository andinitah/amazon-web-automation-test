Feature: CRUD

    Scenario: Create booking using json in POST body
        When I send a POST request to "https://restful-booker.herokuapp.com/booking"
        Then show me the unparsed response
        Then the response status should be "200"

    # Scenario: Delete Booking
    #     Given POST "https://www.mwtestconsultancy.co.uk/booking/1"
    #     When Waiting for result
    #     Then Response shoud be 200
