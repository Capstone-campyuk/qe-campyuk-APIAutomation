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
    public void setPostAddNewCamp(File json){
        SerenityRest.given().contentType(ContentType.JSON).body(json);
    }
}
