package starter.campyuk.BookingStepDef;

import io.cucumber.java.en.When;
import net.serenitybdd.rest.SerenityRest;
import net.thucydides.core.annotations.Steps;
import starter.campyuk.BookingAPI;

public class GeneralBookingStepDef {
    @Steps
    BookingAPI bookingAPI;


    //GET
    @When("Send request Get booking valid path")
    public void sendRequestGetBookingValidPath() {
        SerenityRest.when().get(BookingAPI.DATA_BOOKINGS);
    }

    @When("Send request Get booking invalid path")
    public void sendRequestGetBookingInvalidPath() {
        SerenityRest.when().get(BookingAPI.DATA_BOOKINGS_INVALID_PATH);
    }

    @When("Send request Post booking valid path")
    public void sendRequestPostBookingValidPath() {
        SerenityRest.when().get(BookingAPI.DATA_BOOKINGS);
    }

    @When("Send request Post booking invalid path")
    public void sendRequestPostBookingInvalidPath() {
        SerenityRest.when().get(BookingAPI.DATA_BOOKINGS_INVALID_PATH);
    }

    @When("Send request Get booking valid id")
    public void sendRequestGetBookingValidId() {
        SerenityRest.when().get(BookingAPI.DETAIL_BOOKING);
    }

    @When("Send request Get booking invalid id")
    public void sendRequestGetBookingInvalidId() {
        SerenityRest.when().get(BookingAPI.DETAIL_BOOKING_INVALID_ID);
    }


    //PUT
    @When("Send request Put accept booking valid id")
    public void sendRequestPutAcceptBookingValidId() {
        SerenityRest.when().get(BookingAPI.ACCEPT_BOOKINGS);
    }

    @When("Send request Put accept booking invalid id")
    public void sendRequestPutAcceptBookingInvalidId() {
        SerenityRest.when().get(BookingAPI.ACCEPT_BOOKINGS);
    }

    @When("Send request Put cenceled booking valid id")
    public void sendRequestPutCenceledBookingValidId() {
        SerenityRest.when().get(BookingAPI.CANCEL_BOOKINGS);
    }

    @When("Send request Put cancel booking invalid id")
    public void sendRequestPutCancelBookingInvalidId() {
        SerenityRest.when().get(BookingAPI.CANCEL_BOOKINGS);
    }
}
