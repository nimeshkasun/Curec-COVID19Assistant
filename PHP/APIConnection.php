<?PHP

    require_once("vendor/autoload.php");

    use OpenTok\OpenTok;

    $apiKey = "46665872";
    $apiSecret = "1072db3cd6bc2e0a6d194a98d4a3995857944cb4";

    $opentok = new OpenTok($apiKey, $apiSecret);

    $session = $opentok->createSession();
    $sessionId = $session->getSessionId();
    $token1 = $opentok->generateToken($sessionId);
    $token2 = $opentok->generateToken($sessionId);

    //echo "SessionId = $sessionId \r\n";
    //echo "TokenId 1 = $token1 \r\n";
    //echo "TokenId 2 = $token2 \r\n";

    $myObj = new \stdClass();
    $myObj->SessionId = $sessionId;
    $myObj->TokenId1 = $token1;
    $myObj->TokenId2 = $token2;

    $myJSON = json_encode($myObj);

    echo $myJSON;


?>
