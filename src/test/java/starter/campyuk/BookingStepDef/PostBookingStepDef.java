package starter.campyuk.BookingStepDef;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
import io.restassured.module.jsv.JsonSchemaValidator;
import io.restassured.response.Response;
import net.serenitybdd.rest.SerenityRest;
import net.thucydides.core.annotations.Steps;
import starter.campyuk.BookingAPI;
import starter.campyuk.Utils.Constant;

import java.io.File;

public class PostBookingStepDef {
    @Steps
    BookingAPI bookingAPI;


    //scenario 1
    @Given("Post booking with valid path and valid token")
    public void postBookingWithValidPathAndValidToken() {
        Response response = SerenityRest.lastResponse();
        String token = response.getBody().jsonPath().getString("token");
        bookingAPI.getbookingValidPath(token);
    }

    @And("API should return the right JSON Schema Post Booking")
    public void apiShouldReturnTheRightJSONSchemaPostBooking() {
        File jsonSchema = new File(Constant.JSON_SCHEMA + "/BookingSchema/PostBookingSchema.json");
        SerenityRest.then().assertThat().body(JsonSchemaValidator.matchesJsonSchema(jsonSchema));
    }


    //scenario 2
    @Given("Post booking with invalid path and valid token")
    public void postBookingWithInvalidPathAndValidToken() {
        Response response = SerenityRest.lastResponse();
        String token = response.getBody().jsonPath().getString("token");
        bookingAPI.getbookingValidPath(token);
    }

}
