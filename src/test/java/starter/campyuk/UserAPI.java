package starter.campyuk;

import io.restassured.http.ContentType;
import net.serenitybdd.rest.SerenityRest;
import net.thucydides.core.annotations.Step;
import starter.campyuk.Utils.Constant;
import java.io.File;


public class UserAPI {

    public static String DATA_USER = Constant.BASE_URL + "/users";
    public static String PATH_INVALID = Constant.BASE_URL + "/usersaJHFDF";


    //method

    //GET USERS
    @Step("Get valid path")
    public void getValidPath(String token) {
        SerenityRest.given().header("Authorization", "Bearer " + token);
    }

    @Step("Get invalid path")
    public void getUserWithInvalidPath(String token){
        SerenityRest.given().header("Authorization", "Bearer " + token);
    }



    //DELETE USERS
    @Step ("Delete valid path")
    public void deleteValidPath(String token){
        SerenityRest.given()
                .header("Authorization", "Bearer " + token);
    }

    @Step ("Delete invalid path")
    public void deleteInvalidPath(String token){
        SerenityRest.given()
                .header("Authorization", "Bearer " + token);
    }



    //PUT USERS
    @Step ("Put user with valid path and valid token")
    public void putValidPath(String token, File json){
        SerenityRest.given()
                .header("Authorization", "Bearer " + token)
                .contentType(ContentType.JSON)
                .body(json);
    }

    @Step ("Put user with invalid path")
    public void putInvalidPath(String token, File json){
        SerenityRest.given()
                .header("Authorization", "Bearer " + token)
                .contentType(ContentType.JSON)
                .body(json);
    }

    @Step("Put with valid id")
    public void putWithid(int id, File json) {
        SerenityRest.given()
                .pathParam("id", id)
                .contentType(ContentType.JSON)
                .body(json);
    }

    @Step("Put with valid id")
    public void putWithInvalidid(String id, File json) {
        SerenityRest.given()
                .pathParam("id", id)
                .contentType(ContentType.JSON)
                .body(json);
    }


}
