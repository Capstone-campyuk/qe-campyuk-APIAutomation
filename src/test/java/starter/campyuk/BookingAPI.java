package starter.campyuk;

import net.serenitybdd.rest.SerenityRest;
import net.thucydides.core.annotations.Step;
import starter.campyuk.Utils.Constant;

public class BookingAPI {
    public static String DATA_BOOKINGS = Constant.BASE_URL + "/bookings";
    public static String DATA_BOOKINGS_INVALID_PATH = Constant.BASE_URL + "/bookingsJVNDSV";
    public static String DETAIL_BOOKING = Constant.BASE_URL + "/bookings/{id}";
    public static String DETAIL_BOOKING_INVALID_ID = Constant.BASE_URL + "/bookings/{id}";

    public static String ACCEPT_BOOKINGS = Constant.BASE_URL + "/bookings/{id}/accept";
    public static String CANCEL_BOOKINGS = Constant.BASE_URL + "/bookings/{id}/cancel";
    public static String BOOKINGS_CALLBACK = Constant.BASE_URL + "/bookings/callback";



    //GET
    @Step("Get booking valid path")
    public void getbookingValidPath(String token) {
        SerenityRest.given().header("Authorization", "Bearer " + token);
    }

    @Step ("Get booking invalid path")
    public void getbookingInvalidPath(String token) {
        SerenityRest.given().header("Authorization", "Bearer " + token);
    }

    @Step("Get booking valid id")
    public void getbookingValidId(int id, String token){
        SerenityRest.given().pathParam("id", id)
                    .header("Authorization", "Bearer " + token);
    }

    @Step("Get booking invalid id")
    public void getbookingInvalidId(String id, String token){
        SerenityRest.given().pathParam("id", id)
                .header("Authorization", "Bearer " + token);
    }

    //POST
    @Step("Post booking valid path")
    public void posttbookingValidPath(String token) {
        SerenityRest.given().header("Authorization", "Bearer " + token);
    }

    @Step ("Post booking invalid path")
    public void postbookingInvalidPath(String token) {
        SerenityRest.given().header("Authorization", "Bearer " + token);
    }


    //PUT
    @Step ("Put accept booking valid id")
    public void PutAcceptBookingValidId(int id, String token) {
        SerenityRest.given().pathParam("id", id)
                .header("Authorization", "Bearer " + token);
    }
    @Step ("Put accept booking invalid id")
    public void PutAcceptBookingInvalidId(String id, String token) {
        SerenityRest.given().pathParam("id", id)
                .header("Authorization", "Bearer " + token);
    }
}
