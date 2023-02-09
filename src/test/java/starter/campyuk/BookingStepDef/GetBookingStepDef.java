package starter.campyuk.BookingStepDef;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
import io.restassured.module.jsv.JsonSchemaValidator;
import io.restassured.response.Response;
import net.serenitybdd.rest.SerenityRest;
import net.thucydides.core.annotations.Steps;
import starter.campyuk.AuthAPI;
import starter.campyuk.BookingAPI;
import starter.campyuk.UserAPI;
import starter.campyuk.Utils.Constant;

import java.io.File;

public class GetBookingStepDef {

    @Steps
    BookingAPI bookingAPI;


    //scenario 1
    @Given("Get booking with valid path and valid token")
    public void getBookingWithValidPathAndValidToken() {
        Response response = SerenityRest.lastResponse();
        String token = response.getBody().jsonPath().getString("token");
        bookingAPI.getbookingValidPath(token);
    }

    @And("API should return the right JSON Schema Booking")
    public void apiShouldReturnTheRightJSONSchemaBooking() {
        File jsonSchema = new File(Constant.JSON_SCHEMA + "/BookingSchema/GetBooking.json");
        SerenityRest.then().assertThat().body(JsonSchemaValidator.matchesJsonSchema(jsonSchema));
    }

    //sceanrio 2
    @Given("Get booking with invalid path and valid token")
    public void getBookingWithInvalidPathAndValidToken() {
        Response response = SerenityRest.lastResponse();
        String token = response.getBody().jsonPath().getString("token");
        bookingAPI.getbookingInvalidPath(token);
    }

    //scenario 3
    @Given("Get booking with valid path, valid {int} and valid token")
    public void getBookingWithValidPathValidIdAndValidToken(int id) {
        Response response = SerenityRest.lastResponse();
        String token = response.getBody().jsonPath().getString("token");
        bookingAPI.getbookingValidId(id, token);

    }

    //scenario 4
    @Given("Get booking with valid path, invalid {string} and valid token")
    public void getBookingWithValidPathInvalidIdAndValidToken(String id) {
        Response response = SerenityRest.lastResponse();
        String token = response.getBody().jsonPath().getString("token");
        bookingAPI.getbookingInvalidId(id, token);
    }


}
