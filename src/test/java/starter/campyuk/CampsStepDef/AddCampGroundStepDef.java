package starter.campyuk.CampsStepDef;

import io.cucumber.java.en.Given;
import net.thucydides.core.annotations.Steps;
import starter.campyuk.CampsAPI;
import starter.campyuk.Utils.Constant;

import java.io.File;

public class AddCampGroundStepDef {
    @Steps
    CampsAPI campsAPI;

    @Given("Base URL is")
    public void baseURLIs() {
        File json = new File(Constant.JSON_REQUEST + "/Camps/.json");
        campsAPI.setPostAddNewCamp(json);
    }


}
