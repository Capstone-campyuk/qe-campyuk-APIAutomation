package starter.campyuk.BookingStepDef;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
import io.restassured.response.Response;
import net.serenitybdd.rest.SerenityRest;
import net.thucydides.core.annotations.Steps;
import starter.campyuk.BookingAPI;

public class PutBookingStepDef {
    @Steps
    BookingAPI bookingAPI;


    @Given("Put booking with valid {int}")
    public void putBookingWithValidId(int id) {
        Response response = SerenityRest.lastResponse();
        String token = response.getBody().jsonPath().getString("token");
        bookingAPI.PutAcceptBookingValidId(id, token);
    }

    @Given("Put booking with invalid {string}")
    public void putBookingWithInvalidId(String id) {
        Response response = SerenityRest.lastResponse();
        String token = response.getBody().jsonPath().getString("token");
        bookingAPI.PutAcceptBookingInvalidId(id, token);
    }

}
