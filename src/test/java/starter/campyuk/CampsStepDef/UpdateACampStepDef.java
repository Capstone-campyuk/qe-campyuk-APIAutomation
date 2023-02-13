package starter.campyuk.CampsStepDef;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
import net.serenitybdd.rest.SerenityRest;
import net.thucydides.core.annotations.Step;
import net.thucydides.core.annotations.Steps;
import starter.campyuk.AuthStepDef.LogInStepDef;
import starter.campyuk.CampsAPI;
import starter.campyuk.Utils.CampyukResponse;
import starter.campyuk.Utils.Constant;

import java.io.File;

public class UpdateACampStepDef {
    @Steps
    CampsAPI campsAPI;
    private static String token;
    private static int camp_id;

    @Given("Base URL, set token to bearer token, set parameter to camp_id, and input form-data body update camp {} as price, {} as city, {} as latitude, {} as longitude, {} as address, {} as distance, {} as title, {} as description, and document")
    public void baseURLSetTokenToBearerTokenSetParameterToCamp_idAndInputFormDataBodyUpdateCampAsPriceAsCityAsLatitudeAsLongitudeAsAddressAsDistanceAsTitleAsDescriptionAndDocument(Object price, Object city, Object latit, Object longit, Object address, Object distance, Object title, Object desc) {
        File doc = new File(Constant.DOC + "/SuratIzinPenginapan.pdf");
        System.out.println(token);
        System.out.println(camp_id);
        campsAPI.setPutUpdateACamp(token,camp_id,price,city,latit,longit,address,distance,title,doc,desc);
    }

    @When("Set method to PUT, Set path to camps, and click send button")
    public void setMethodToPUTSetPathToCampsAndClickSendButton() {
        SerenityRest.when().put(CampsAPI.DETAIL_CAMP);
    }

    @And("Set token to a method")
    public void setTokenToAMethod() {
        token = SerenityRest.lastResponse().getBody().jsonPath().getString(CampyukResponse.TOKEN);
        System.out.println(token);
    }
    @And("Set camp_id to a method with {string} as jsonPath")
    public void setCamp_idToAMethod(String jsonPath) {
        camp_id = SerenityRest.lastResponse().getBody().jsonPath().getInt("data["+jsonPath+"].id");
        System.out.println(camp_id);
    }
    @Given("Base URL, set token to bearer token, set parameter to invalid camp_id, and input form-data body update camp {} as price, {} as city, {} as latitude, {} as longitude, {} as address, {} as distance, {} as title, {} as description, and document")
    public void baseURLSetTokenToBearerTokenSetParameterToInvalidCamp_idAndInputFormDataBodyUpdateCampPriceAsPriceCityAsCityLatitudeAsLatitudeLongitudeAsLongitudeAddressAsAddressDistanceAsDistanceTitleAsTitleDescriptionAsDescriptionAndDocument(Object price, Object city, Object latit, Object longit, Object address, Object distance, Object title, Object desc) {
        File doc = new File(Constant.DOC + "/SuratIzinPenginapan.pdf");
        System.out.println(token);
        campsAPI.setPutUpdateACamp(token,"fdghfd",price,city,latit,longit,address,distance,title,doc,desc);
    }
    @Given("Base URL, set token to bearer token with invalid token, set parameter to camp_id, and input form-data body update camp {} as price, {} as city, {} as latitude, {} as longitude, {} as address, {} as distance, {} as title, {} as description, and document")
    public void baseURLSetTokenToBearerTokenWithInvalidTokenSetParameterToCamp_idAndInputFormDataBodyUpdateCampPriceAsPriceCityAsCityLatitudeAsLatitudeLongitudeAsLongitudeAddressAsAddressDistanceAsDistanceTitleAsTitleDescriptionAsDescriptionAndDocument(Object price, Object city, Object latit, Object longit, Object address, Object distance, Object title, Object desc) {
        File doc = new File(Constant.DOC + "/SuratIzinPenginapan.pdf");
        System.out.println(camp_id);
        campsAPI.setPutUpdateACamp("efvdsaukfgveuoavfucsdefu",camp_id,price,city,latit,longit,address,distance,title,doc,desc);
    }
    @Given("Base URL, set token to bearer token, set parameter to camp_id, and input form-data body update camp {} as price, {} as city, {} as latitude, {} as longitude, {} as address, {} as distance, {} as title, {} as description, and empty document")
    public void baseURLSetTokenToBearerTokenSetParameterToCamp_idAndInputFormDataBodyUpdateCampPriceAsPriceCityAsCityLatitudeAsLatitudeLongitudeAsLongitudeAddressAsAddressDistanceAsDistanceTitleAsTitleDescriptionAsDescriptionAndEmptyDocument(Object price, Object city, Object latit, Object longit, Object address, Object distance, Object title, Object desc) {
        File doc = new File(Constant.DOC + "/SuratIzinPenginapan.pdf");
        System.out.println(token);
        System.out.println(camp_id);
        campsAPI.setPutUpdateACampWEmptyDoc(token,camp_id,price,city,latit,longit,address,distance,title,desc);
    }

}
