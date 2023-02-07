package starter.campyuk;

import io.restassured.http.ContentType;
import net.serenitybdd.rest.SerenityRest;
import net.thucydides.core.annotations.Step;
import starter.campyuk.Utils.Constant;

import java.io.File;

public class AuthAPI {
    public static String POST_REGISTER = Constant.BASE_URL + "/register";
    public static String POST_LOGIN = Constant.BASE_URL + "/login";

    @Step
    public void setPostRegister(File json){
        SerenityRest.given()
                    .contentType(ContentType.JSON)
                    .body(json);
    }

    @Step
    public void setPostLogin(File json){
        SerenityRest.given()
                    .contentType(ContentType.JSON)
                    .body(json);
    }
}
