package starter.campyuk;


import io.cucumber.java.eo.Se;
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

    @Step("Post add new camp with empty images")
    public void setPostAddNewCampWithEmptyImages(String token, int price, String city, double latitude, double longitude, String address, int distance, String title, File doc, String desc){
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
                .multiPart("images", "")
                .multiPart("document", doc);
    }

    @Step("Post add new camp with empty document")
    public void setPostAddNewCampWithEmptyDocument(String token, int price, String city, double latitude, double longitude, String address, int distance, String title, File image, String desc){
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
                .multiPart("document", "");
    }

    @Step("Post add new camp with empty distance")
    public void setPostAddNewCampWithEmptyDistance(String token, int price, String city, double latitude, double longitude, String address, String title, File image, File doc, String desc){
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
                .multiPart("distance", "")
                .multiPart("images", image)
                .multiPart("document", doc);
    }

    @Step("Post add new camp with empty price")
    public void setPostAddNewCampWithEmptyPrice(String token, String city, double latitude, double longitude, String address, int distance, String title, File image, File doc, String desc){
        SerenityRest.given()
                .header("Authorization",
                        "Bearer " + token)
                .contentType("multipart/form-data")
                .multiPart("title", title)
                .multiPart("price", "")
                .multiPart("description", desc)
                .multiPart("latitude", latitude)
                .multiPart("longitude", longitude)
                .multiPart("address", address)
                .multiPart("city", city)
                .multiPart("distance", distance)
                .multiPart("images", image)
                .multiPart("document", doc);
    }

    @Step("Post add new camp with invalid data type")
    public void setPostAddNewCampWithInvalidDataType(String token, Object price, Object city, Object latitude, Object longitude, Object address, Object distance, Object title, File image, File doc, Object desc){
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

    @Step("Get list all camps")
    public void setGetListAllCamps(int page){
        SerenityRest.given().queryParam("page",page);
    }

    @Step("Get list all camps as logged in user")
    public void setGetListAllCampsAsLoggedInUser(int page, String token){
        SerenityRest.given().queryParam("page",page)
                    .header("Authorization",
                            "Bearer " + token);
    }

    @Step("Get list all camps with object page")
    public void setGetListAllCampsWithObjectPage(Object page){
        SerenityRest.given().queryParam("page",page);
    }

    @Step("Get a camp with valid path")
    public void setDetailCamp(int id,String token){
        SerenityRest.given().pathParam("id",id)
                    .header("Authorization",
                            "Bearer " + token);
    }

    @Step("Get a camp without token")
    public void setDetailCampWOToken(int id){
        SerenityRest.given().pathParam("id", id);
    }

    @Step("Get a camp with invalid path")
    public void setDetailCampWInvalidPath(Object id){
        SerenityRest.given().pathParam("id",id);
    }


    @Step("Put update a camp with valid path")
    public void setPutUpdateACamp(String token, Object camp_id, Object price, Object city, Object latitude, Object longitude, Object address, Object distance, Object title, File doc, Object desc){
        SerenityRest.given()
                    .pathParam("id", camp_id)
                    .header("Authorization",
                            "Bearer " + token)
                    .contentType("multipart/form-data")
                    .multiPart("price", price)
                    .multiPart("city", city)
                    .multiPart("latitude", latitude)
                    .multiPart("longitude", longitude)
                    .multiPart("address", address)
                    .multiPart("distance", distance)
                    .multiPart("title", title)
                    .multiPart("document", doc)
                    .multiPart("description", desc);
    }

    @Step("Put update a camp with empty document")
    public void setPutUpdateACampWEmptyDoc(String token, Object camp_id, Object price, Object city, Object latitude, Object longitude, Object address, Object distance, Object title, Object desc){
        SerenityRest.given()
                .pathParam("id", camp_id)
                .header("Authorization",
                        "Bearer " + token)
                .contentType("multipart/form-data")
                .multiPart("price", price)
                .multiPart("city", city)
                .multiPart("latitude", latitude)
                .multiPart("longitude", longitude)
                .multiPart("address", address)
                .multiPart("distance", distance)
                .multiPart("title", title)
                .multiPart("document", "")
                .multiPart("description", desc);
    }

}
