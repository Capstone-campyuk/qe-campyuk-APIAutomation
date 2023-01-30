package starter.campyuk;


import io.restassured.http.ContentType;
import net.serenitybdd.rest.SerenityRest;
import net.thucydides.core.annotations.Step;
import starter.campyuk.Utils.Constant;

import java.io.File;

public class CampAPI {
    public static String POST_REGISTER_USER = Constant.BASE_URL + "/register";
    public static String GET_CAMPS = Constant.BASE_URL + "/camps";
    public static String POST_TENTS = Constant.BASE_URL + "/tents";
    public static String POST_ORDER = Constant.BASE_URL + "/order";

    @Step("Post register user")
    public void setPostRegisterUser(File json){
        SerenityRest.given().contentType(ContentType.JSON).body(json);
    }
}
