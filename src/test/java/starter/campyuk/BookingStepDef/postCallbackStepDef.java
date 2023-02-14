package starter.campyuk.BookingStepDef;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
import io.restassured.response.Response;
import net.serenitybdd.rest.SerenityRest;
import net.thucydides.core.annotations.Steps;
import org.json.simple.JSONObject;
import starter.campyuk.BookingAPI;
import starter.campyuk.Utils.Constant;

import java.io.File;

public class postCallbackStepDef {
    @Steps
    BookingAPI bookingAPI;



    @Given("Post booking callback valid json")
    public void postBookingCallbackValidJson() {
        Response response = SerenityRest.lastResponse();
        String token = response.getBody().jsonPath().getString("token");
        File json = new File(Constant.JSON_REQUEST + "/Booking/callback.json");
        bookingAPI.postCallbackValidPath(token, json);
    }

    @Given("Post booking callback with blank order_id")
    public void postBookingCallbackWithBlankOrderID() {
        Response response = SerenityRest.lastResponse();
        String token = response.getBody().jsonPath().getString("token");
        File json = new File(Constant.JSON_REQUEST + "/Booking/callbackBlankOrderID.json");
        bookingAPI.postCallbackValidPath(token, json);
    }

    @Given("Post booking callback with blank status")
    public void postBookingCallbackWithBlankStatus() {
        Response response = SerenityRest.lastResponse();
        String token = response.getBody().jsonPath().getString("token");
        File json = new File(Constant.JSON_REQUEST + "/Booking/callbackBlankStatus.json");
        bookingAPI.postCallbackValidPath(token, json);
    }
}
