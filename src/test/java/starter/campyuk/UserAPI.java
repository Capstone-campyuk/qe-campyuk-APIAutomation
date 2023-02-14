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
    @Step ("Put user with valid path and valid token as GUEST")
    public void putValidPathAsGuest(String token, File image){
        SerenityRest.given()
                .header("Authorization", "Bearer " + token)
                .contentType("multipart/form-data")
                .multiPart("name","nesyaraaUSER")
                .multiPart("fullname","PUT PUT PUT USER")
                .multiPart("email","PUTUSER@GMAUL.COM")
                .multiPart("password","PUTUSER123")
                .multiPart("images", image);
    }

    @Step ("Put user with invalid path as GUEST")
    public void putInvalidPathAsGuest(String token, File image){
        SerenityRest.given()
                .header("Authorization", "Bearer " + token)
                .contentType("multipart/form-data")
                .multiPart("name","nesyaraaUSER")
                .multiPart("fullname","PUT PUT PUT USER")
                .multiPart("email","PUTUSER@GMAUL.COM")
                .multiPart("password","PUTUSER123")
                .multiPart("images", image);
    }

    @Step ("Put user with valid path and valid token as GUEST")
    public void putValidPathWithBlankNameAsGuest(String token, File image){
        SerenityRest.given()
                .header("Authorization", "Bearer " + token)
                .contentType("multipart/form-data")
                .multiPart("name","")
                .multiPart("fullname","PUT PUT PUT USER")
                .multiPart("email","PUTUSER@GMAUL.COM")
                .multiPart("password","PUTUSER123")
                .multiPart("images", image);
    }

    @Step ("Put user with valid path and valid token as GUEST")
    public void putValidPathWithBlankFullNameAsGuest(String token, File image){
        SerenityRest.given()
                .header("Authorization", "Bearer " + token)
                .contentType("multipart/form-data")
                .multiPart("name","nesyaraaUSER")
                .multiPart("fullname","")
                .multiPart("email","PUTUSER@GMAUL.COM")
                .multiPart("password","PUTUSER123")
                .multiPart("images", image);
    }

    @Step ("Put user with valid path and valid token as GUEST")
    public void putValidPathWithBlankEmailAsGuest(String token, File image){
        SerenityRest.given()
                .header("Authorization", "Bearer " + token)
                .contentType("multipart/form-data")
                .multiPart("name","nesyaraaUSER")
                .multiPart("fullname","PUT PUT PUT USER")
                .multiPart("email","PUTUSER@GMAUL.COM")
                .multiPart("password","PUTUSER123")
                .multiPart("images", image);
    }
    @Step ("Put user with valid path and valid token as GUEST")
    public void putValidPathWithBlankPasswordAsGuest(String token, File image){
        SerenityRest.given()
                .header("Authorization", "Bearer " + token)
                .contentType("multipart/form-data")
                .multiPart("name","nesyaraaUSER")
                .multiPart("fullname","PUT PUT PUT USER")
                .multiPart("email","PUTUSER@GMAUL.COM")
                .multiPart("password","PUTUSER123")
                .multiPart("images", image);
    }

    @Step ("Put user with valid path and valid token as GUEST")
    public void putValidPathWithBlankImageAsGuest(String token){
        SerenityRest.given()
                .header("Authorization", "Bearer " + token)
                .contentType("multipart/form-data")
                .multiPart("name","nesyaraaUSER")
                .multiPart("fullname","PUT PUT PUT USER")
                .multiPart("email","PUTUSER@GMAUL.COM")
                .multiPart("password","PUTUSER123")
                .multiPart("images","");
    }

    @Step ("Put user with valid path and valid token as HOST")
    public void putValidPathAsHost(String token, File image){
        SerenityRest.given()
                .header("Authorization", "Bearer " + token)
                .contentType("multipart/form-data")
                .multiPart("name","nesyaraaASHOST")
                .multiPart("fullname","SEMOGA ABIS INI GAK LUPA PASSWORD")
                .multiPart("email","nesaandestra@GMAIL.COM")
                .multiPart("password","nesaandestra")
                .multiPart("images", image);
    }

    @Step ("Put user with invalid path as HOST")
    public void putInvalidPathAsHost(String token, File image){
        SerenityRest.given()
                .header("Authorization", "Bearer " + token)
                .contentType("multipart/form-data")
                .multiPart("name","nesyaraaASHOST")
                .multiPart("fullname","SEMOGA ABIS INI GAK LUPA PASSWORD")
                .multiPart("email","nesaandestra@GMAIL.COM")
                .multiPart("password","nesaandestra")
                .multiPart("images", image);
    }

    @Step ("Put user with valid path and valid token as HOST")
    public void putValidPathWithBlankNameAsHost(String token, File image){
        SerenityRest.given()
                .header("Authorization", "Bearer " + token)
                .contentType("multipart/form-data")
                .multiPart("name","")
                .multiPart("fullname","SEMOGA ABIS INI GAK LUPA PASSWORD")
                .multiPart("email","nesaandestra@GMAIL.COM")
                .multiPart("password","nesaandestra")
                .multiPart("images", image);
    }

    @Step ("Put user with valid path and valid token as HOST")
    public void putValidPathWithBlankFullNameAsHost(String token, File image){
        SerenityRest.given()
                .header("Authorization", "Bearer " + token)
                .contentType("multipart/form-data")
                .multiPart("name","nesyaraaASHOST")
                .multiPart("fullname","")
                .multiPart("email","nesaandestra@GMAIL.COM")
                .multiPart("password","nesaandestra")
                .multiPart("images", image);
    }

    @Step ("Put user with valid path and valid token as HOST")
    public void putValidPathWithBlankEmailAsHost(String token, File image){
        SerenityRest.given()
                .header("Authorization", "Bearer " + token)
                .contentType("multipart/form-data")
                .multiPart("name","nesyaraaASHOST")
                .multiPart("fullname","SEMOGA ABIS INI GAK LUPA PASSWORD")
                .multiPart("email","")
                .multiPart("password","nesaandestra")
                .multiPart("images", image);
    }
    @Step ("Put user with valid path and valid token as HOST")
    public void putValidPathWithBlankPasswordAsHost(String token, File image){
        SerenityRest.given()
                .header("Authorization", "Bearer " + token)
                .contentType("multipart/form-data")
                .multiPart("name","nesyaraaASHOST")
                .multiPart("fullname","SEMOGA ABIS INI GAK LUPA PASSWORD")
                .multiPart("email","nesaandestra@GMAIL.COM")
                .multiPart("password","")
                .multiPart("images", image);
    }

    @Step ("Put user with valid path and valid token as HOST")
    public void putValidPathWithBlankImageAsHost(String token){
        SerenityRest.given()
                .header("Authorization", "Bearer " + token)
                .contentType("multipart/form-data")
                .multiPart("name","nesyaraaUSER")
                .multiPart("fullname","PUT PUT PUT USER")
                .multiPart("email","PUTUSER@GMAUL.COM")
                .multiPart("password","PUTUSER123")
                .multiPart("images","");
    }
}
