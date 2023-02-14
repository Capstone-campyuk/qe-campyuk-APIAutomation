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
        File image = new File(Constant.IMAGE + "\\download(1).jpg");
        File doc = new File(Constant.DOC + "\\SuratIzinUsaha.pdf");
        campsAPI.setPostAddNewCamp(token,price,city,latit,longit,address,distance,title,image,doc,desc);
    }

    @When("Set method to POST, Set path to camps, and click send button")
    public void setMethodToPOSTSetPathToCampsAndClickSendButton() {
        SerenityRest.when().post(CampsAPI.DATA_CAMPS);
    }

    @Given("Base URL, set token to bearer token, and input form-data body price {int}, city {string}, longitude {double}, address {string}, distance {int}, title {string}, description {string}, empty latitude, images, and document")
    public void baseURLSetTokenToBearerTokenAndInputFormDataBodyPricePriceCityCityLongitudeLongitudeAddressAddressDistanceDistanceTitleTitleDescriptionDescriptionEmptyLatitudeImagesAndDocument(int price, String city, double longit, String address, int distance, String title, String desc) {
        Response response = SerenityRest.lastResponse();
        String token = response.getBody().jsonPath().getString("token");
        File image = new File(Constant.IMAGE + "/download(1).jpg");
        File doc = new File(Constant.DOC + "/SuratIzinUsaha.pdf");
        campsAPI.setPostAddNewCampWithEmptyLatitude(token,price,city,longit,address,distance,title,image,doc,desc);
    }

    @Given("Base URL, set token to bearer token, and input form-data body price {int}, city {string}, latitude {double}, address {string}, distance {int}, title {string}, description {string}, empty longitude, images, and document")
    public void baseURLSetTokenToBearerTokenAndInputFormDataBodyPricePriceCityCityLatitudeLatitudeAddressAddressDistanceDistanceTitleTitleDescriptionDescriptionEmptyLongitudeImagesAndDocument(int price, String city, double longit, String address, int distance, String title, String desc) {
        Response response = SerenityRest.lastResponse();
        String token = response.getBody().jsonPath().getString("token");
        File image = new File(Constant.IMAGE + "/download(1).jpg");
        File doc = new File(Constant.DOC + "/SuratIzinUsaha.pdf");
        campsAPI.setPostAddNewCampWithEmptyLongitude(token,price,city,longit,address,distance,title,image,doc,desc);
    }

    @Given("Base URL, set token to bearer token, and input form-data body price {int}, city {string}, latitude {double}, longitude {double}, address {string}, distance {int}, title {string}, description {string}, empty images, and document")
    public void baseURLSetTokenToBearerTokenAndInputFormDataBodyPricePriceCityCityLatitudeLatitudeLongitudeLongitudeAddressAddressDistanceDistanceTitleTitleDescriptionDescriptionEmptyImagesAndDocument(int price, String city, double latit, double longit, String address, int distance, String title, String desc) {
        Response response = SerenityRest.lastResponse();
        String token = response.getBody().jsonPath().getString("token");
        File doc = new File(Constant.DOC + "/SuratIzinUsaha.pdf");
        campsAPI.setPostAddNewCampWithEmptyImages(token,price,city,latit,longit,address,distance,title,doc,desc);
    }

    @Given("Base URL, set token to bearer token, and input form-data body with invalid price {}, city {}, latitude {}, longitude {}, address {}, distance {}, title {}, description {}, images, and document")
    public void baseURLSetTokenToBearerTokenAndInputFormDataBodyWithInvalidPricePriceCityCityLatitudeLatitudeLongitudeLongitudeAddressAddressDistanceDistanceTitleTitleDescriptionDescriptionImagesAndDocument(Object price, Object city, Object latit, Object longit, Object address, Object distance, Object title, Object desc) {
        Response response = SerenityRest.lastResponse();
        String token = response.getBody().jsonPath().getString("token");
        File image = new File(Constant.IMAGE + "/download(1).jpg");
        File doc = new File(Constant.DOC + "/SuratIzinUsaha.pdf");
        campsAPI.setPostAddNewCampWithInvalidDataType(token,price,city,latit,longit,address,distance,title,image,doc,desc);
    }

    @Given("Base URL, set token to bearer token, and input form-data body price {int}, city {string}, latitude {double}, longitude {double}, address {string}, distance {int}, title {string}, description {string}, images, and empty document")
    public void baseURLSetTokenToBearerTokenAndInputFormDataBodyPricePriceCityCityLatitudeLatitudeLongitudeLongitudeAddressAddressDistanceDistanceTitleTitleDescriptionDescriptionImagesAndEmptyDocument(int price, String city, double latit, double longit, String address, int distance, String title, String desc) {
        Response response = SerenityRest.lastResponse();
        String token = response.getBody().jsonPath().getString("token");
        File image = new File(Constant.IMAGE + "/download(1).jpg");
        campsAPI.setPostAddNewCampWithEmptyDocument(token,price,city,latit,longit,address,distance,title,image,desc);
    }

    @Given("Base URL, set token to bearer token, and input form-data body price {int}, city {string}, latitude {double}, longitude {double}, address {string}, title {string}, description {string}, empty distance, images, and document")
    public void baseURLSetTokenToBearerTokenAndInputFormDataBodyPricePriceCityCityLatitudeLatitudeLongitudeLongitudeAddressAddressDistanceDistanceTitleTitleDescriptionDescriptionEmptyDistanceImagesAndDocument(int price, String city, double latit, double longit, String address, String title, String desc) {
        Response response = SerenityRest.lastResponse();
        String token = response.getBody().jsonPath().getString("token");
        File image = new File(Constant.IMAGE + "/download(1).jpg");
        File doc = new File(Constant.DOC + "/SuratIzinUsaha.pdf");
        campsAPI.setPostAddNewCampWithEmptyDistance(token,price,city,latit,longit,address,title,image,doc,desc);
    }

    @Given("Base URL, set token to bearer token, and input form-data body with valid price {int}, city {string}, latitude {double}, longitude {double}, address {string}, distance {int}, title {string}, description {string}, document, but invalid images")
    public void baseURLSetTokenToBearerTokenAndInputFormDataBodyWithValidPricePriceCityCityLatitudeLatitudeLongitudeLongitudeAddressAddressDistanceDistanceTitleTitleDescriptionDescriptionDocumentButInvalidImages(int price, String city, double latit, double longit, String address, int distance, String title, String desc) {
        Response response = SerenityRest.lastResponse();
        String token = response.getBody().jsonPath().getString("token");
        File image = new File(Constant.DOC + "/Image.txt");
        File doc = new File(Constant.DOC + "/SuratIzinUsaha.pdf");
        campsAPI.setPostAddNewCamp(token,price,city,latit,longit,address,distance,title,image,doc,desc);
    }

    @Given("Base URL, set token to bearer token, and input form-data body with valid price {int}, city {string}, latitude {double}, longitude {double}, address {string}, distance {int}, title {string}, description {string}, image, but invalid document")
    public void baseURLSetTokenToBearerTokenAndInputFormDataBodyWithValidPricePriceCityCityLatitudeLatitudeLongitudeLongitudeAddressAddressDistanceDistanceTitleTitleDescriptionDescriptionImageButInvalidDocument(int price, String city, double latit, double longit, String address, int distance, String title, String desc) {
        Response response = SerenityRest.lastResponse();
        String token = response.getBody().jsonPath().getString("token");
        File image = new File(Constant.DOC + "/download(1).jpg");
        File doc = new File(Constant.DOC + "/SuratIzinUsaha.txt");
        campsAPI.setPostAddNewCamp(token,price,city,latit,longit,address,distance,title,image,doc,desc);
    }

    @Given("Base URL, set token to bearer token with invalid token, and input form-data body price {int}, city {string}, latitude {double}, longitude {double}, address {string}, distance {int}, title {string}, description {string}, images, and document")
    public void baseURLSetTokenToBearerTokenWithInvalidTokenAndInputFormDataBodyPricePriceCityCityLatitudeLatitudeLongitudeLongitudeAddressAddressDistanceDistanceTitleTitleDescriptionDescriptionImagesAndDocument(int price, String city, double latit, double longit, String address, int distance, String title, String desc) {
        String token = "bcvhdsjfgiyascvj,vfEafcvhjdsvfuyevcshvciysfgicsvhacvyuasvcliad";
        File image = new File(Constant.IMAGE + "/download(1).jpg");
        File doc = new File(Constant.DOC + "/SuratIzinUsaha.pdf");
        campsAPI.setPostAddNewCamp(token,price,city,latit,longit,address,distance,title,image,doc,desc);
    }

    @Given("Base URL, set token to bearer token, and input form-data body empty price, city {string}, latitude {double}, longitude {double}, address {string}, distance {int}, title {string}, description {string}, images, and document")
    public void baseURLSetTokenToBearerTokenAndInputFormDataBodyEmptyPriceCityCityLatitudeLatitudeLongitudeLongitudeAddressAddressDistanceDistanceTitleTitleDescriptionDescriptionEmptyImagesAndDocument(String city, double latit, double longit, String address, int distance, String title, String desc) {
        Response response = SerenityRest.lastResponse();
        String token = response.getBody().jsonPath().getString("token");
        File image = new File(Constant.IMAGE + "/download(1).jpg");
        File doc = new File(Constant.DOC + "/SuratIzinUsaha.pdf");
        campsAPI.setPostAddNewCampWithEmptyPrice(token,city,latit,longit,address,distance,title,image,doc,desc);
    }
}
