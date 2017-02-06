package queue;

/**
 * Created by aravin on 06-Feb-17.
 */
// Install the Java helper library from twilio.com/docs/java/install
import com.twilio.Twilio;
import com.twilio.rest.api.v2010.account.Message;
import com.twilio.type.PhoneNumber;

import java.net.URISyntaxException;

public class SmsSender {

    // Find your Account Sid and Auth Token at twilio.com/console
    public static final String ACCOUNT_SID = "ACd7f6132afcea056e92bae959002f78ac";
    public static final String AUTH_TOKEN = "your_auth_token";

    public static void main(String[] args) throws URISyntaxException {
        Twilio.init(ACCOUNT_SID, AUTH_TOKEN);

        Message message = Message
                .creator(new PhoneNumber("+14159352345"),  // to
                        new PhoneNumber("+14158141829"),  // from
                        "Where's Wallace?")
                .create();
    }
}