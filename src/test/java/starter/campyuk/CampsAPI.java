package starter.campyuk;


import io.restassured.http.ContentType;
import net.serenitybdd.rest.SerenityRest;
import net.thucydides.core.annotations.Step;
import starter.campyuk.Utils.Constant;

import java.io.File;

public class CampsAPI {
    public static String DATA_CAMPS = Constant.BASE_URL + "/camps";
    public static String DETAIL_CAMP = Constant.BASE_URL + "/camps/{id}";
    public static String ACCEPT_CAMP = Constant.BASE_URL + "/camps/{id}/accept";
    public static String DECLINE_CAMP = Constant.BASE_URL + "/camps/{id}/decline";

    @Step("Post add new camp")
    public void setPostAddNewCamp(String token, int price, String city, double latitude, double longitude, String address, int distance, String title, File image, File doc, String desc){
        SerenityRest.given()
                    .header("Authorization",
                            "Bearer " + token)
                    .contentType("multipart/form-data")
                    .multiPart("title", title)
                    .multiPart("price", price)
                    .multiPart("description", desc)
                    .multiPart("latitude", latitude)
                    .multiPart("longitude", longitude)
                    .multiPart("address", address)
                    .multiPart("city", city)
                    .multiPart("distance", distance)
                    .multiPart("images", image)
                    .multiPart("document", doc);
    }

    @Step("Post add new camp with empty latitude")
    public void setPostAddNewCampWithEmptyLatitude(String token, int price, String city, double longitude, String address, int distance, String title, File image, File doc, String desc){
        SerenityRest.given()
                    .header("Authorization",
                            "Bearer " + token)
                    .contentType("multipart/form-data")
                    .multiPart("title", title)
                    .multiPart("price", price)
                    .multiPart("description", desc)
                    .multiPart("latitude", "")
                    .multiPart("longitude", longitude)
                    .multiPart("address", address)
                    .multiPart("city", city)
                    .multiPart("distance", distance)
                    .multiPart("images", image)
                    .multiPart("document", doc);
    }

    @Step("Post add new camp with empty longitude")
    public void setPostAddNewCampWithEmptyLongitude(String token, int price, String city, double latitude, String address, int distance, String title, File image, File doc, String desc){
        SerenityRest.given()
                .header("Authorization",
                        "Bearer " + token)
                .contentType("multipart/form-data")
                .multiPart("title", title)
                .multiPart("price", price)
                .multiPart("description", desc)
                .multiPart("latitude", latitude)
                .multiPart("longitude", "")
                .multiPart("address", address)
                .multiPart("city", city)
                .multiPart("distance", distance)
                .multiPart("images", image)
                .multiPart("document", doc);
    }
}
