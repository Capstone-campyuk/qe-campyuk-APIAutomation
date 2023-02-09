package starter.campyuk.CampsStepDef;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
import io.restassured.response.Response;
import net.serenitybdd.rest.SerenityRest;
import net.thucydides.core.annotations.Steps;
import starter.campyuk.CampsAPI;
import starter.campyuk.Utils.Constant;

import java.io.File;

public class AddNewCampStepDef {

    @Steps
    CampsAPI campsAPI;

    @Given("Base URL, set token to bearer token, and input form-data body price {int}, city {string}, latitude {double}, longitude {double}, address {string}, distance {int}, title {string}, description {string}, images, and document")
    public void baseURLSetTokenToBearerTokenAndInputFormDataBodyPriceCityLatitudeLongitudeAddressDistanceTitleDescriptionImagesAndDocument(int price, String city, double latit, double longit, String address, int distance, String title, String desc) {
        Response response = SerenityRest.lastResponse();
        String token = response.getBody().jsonPath().getString("token");
        System.out.println(title);
        File image = new File(Constant.IMAGE + "\\download(1).jpg");
        System.out.println(Constant.DOC + "\\SuratIzinUsaha.pdf");
        File doc = new File(Constant.DOC + "\\SuratIzinUsaha.pdf");
        campsAPI.setPostAddNewCamp(token,price,city,latit,longit,address,distance,title,image,doc,desc);
    }

    @When("Set method to POST, Set path to camps, and click send button")
    public void setMethodToPOSTSetPathToCampsAndClickSendButton() {
        SerenityRest.when().post(CampsAPI.DATA_CAMPS);
    }

    @Given("Base URL, set token to bearer token, and input form-data body price {integer}, city {string}, latitude {double}, longitude {double}, address {string}, distance integer, title {integer}, description {integer}, images, and document")
    public void baseURLSetTokenToBearerTokenAndInputFormDataBodyPricePriceCityCityLatitudeLatitudeLongitudeLongitudeAddressAddressDistanceDistanceTitleTitleDescriptionDescriptionImagesAndDocument(Integer price, String city, Double latitude, Double longitude, String address, Integer distance, String title, String desc) {
        Response response = SerenityRest.lastResponse();
        String token = response.getBody().jsonPath().getString("token");
        System.out.println(title);
        File image = new File(Constant.IMAGE + "\\download(1).jpg");
        System.out.println(Constant.DOC + "\\SuratIzinUsaha.pdf");
        File doc = new File(Constant.DOC + "\\SuratIzinUsaha.pdf");
        campsAPI.setPostAddNewCamp(token,price,city,latitude,longitude,address,distance,title,image,doc,desc);
    }

    @Given("Base URL, set token to bearer token, and input form-data body price null, city {string}, latitude null, longitude null, address {string}, distance null, title {string}, description {string}, images, and document")
    public void baseURLSetTokenToBearerTokenAndInputFormDataBodyPriceNullCityLatitudeNullLongitudeNullAddressDistanceNullTitleDescriptionImagesAndDocument(String arg0, String arg1, String arg2, String arg3) {
    }
}
