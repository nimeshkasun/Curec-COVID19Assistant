
<?php
    require 'dbconnect.php';

    require_once("vendor/autoload.php");

    use OpenTok\OpenTok;

    $apiKey = "46665872";
    $apiSecret = "1072db3cd6bc2e0a6d194a98d4a3995857944cb4";

    $opentok = new OpenTok($apiKey, $apiSecret);



    function creat_user($nic,$Password){
        $db = new DbConnect;
        $sql = "INSERT INTO  `login`( `Username`, `Password`) VALUES ('$nic','$Password')";

        if(!$conn = $db->connect()){
            echo "SQL Error";
            exit();
        }
        else {
            $conn->exec($sql);
            $last_id = $conn->lastInsertId();
            return $last_id;
        }
    }

    function add_to_queue($RID,$priority,$sessionId,$token,$myJSON){
        $db = new DbConnect;
        $sql = "INSERT INTO `priority_queue`(`RID`, `priority`, `status`, `sessionId`, `docToken`) VALUES ('$RID','$priority',1,'$sessionId','$token')";

        if(!$conn = $db->connect()){
            echo "SQL Error 0";
            exit();
        }
        else {
            $stmt = $conn->prepare($sql);
            $stmt->execute();
            echo $myJSON;
        }
    }

if(isset($_POST['type'])){

    if($_POST['type']=="addMember"){
        $familyID = "0"; //global familyID
        $name = $_POST['name'];
        $nic = $_POST['nic'];
        $gender = $_POST['gender'];
        $age  = $_POST['age'];
        $location  = $_POST['location'];
        $phone  = $_POST['phone'];
        $bloodType = $_POST['bloodType'];
        $Location_lat = $_POST['Location_lat'];
        $Location_lan = $_POST['Location_lan'];
        $Password = $_POST['Password'];


        $LID = creat_user($nic,$Password);
        $db = new DbConnect;
        $sql = "INSERT INTO `member`( `FID`, `Name`, `NIC`, `Gender`, `Age`, `Bloodtype`, `Location_lat`, `Location_lan`, `City`, `phone`, `LID`) VALUES ('$familyID','$name','$nic','$gender','$age','$bloodType','$Location_lat','$Location_lan','$location','$phone', '$LID')";

        if(!$conn = $db->connect()){
            echo "SQL Error";
            exit();
        }
        else {
            $stmt = $conn->prepare($sql);
            $stmt->execute();
            echo "Entered Successfully";
        }
    }

    if($_POST['type']=="login"){
        $username =  $_POST['Username'];
        $password =  $_POST['Password'];
        if(empty($username) || empty($password)){
            echo "Empty fields";
        }
        else {
            $sql = "SELECT * FROM login WHERE Username='$username' and Password='$password'";
            $db = new DbConnect;
            if(!$conn = $db->connect())
                {
                    echo 'SQL Error';
                            exit();
                }
                else {
                    $stmt = $conn->prepare($sql);
                    $stmt->execute();
                    $UID ="";
                    
                    if($result = $stmt->fetchAll(PDO::FETCH_ASSOC))
                        {
                            foreach ($result as $rows) {
                                    $UID =$rows['LID'];
                                }
                                echo "Login Succesfull ! $UID";
                        }
                        else {
                            echo "Invalid Credentials 0";
                        }        
                }
            
        }
    }

    if($_POST['type']=="load_member_name"){
        $LID =  $_POST['LID'];
        if(empty($LID)){
            echo "Empty fields";
        }
        else {
            $sql = "SELECT `Name` FROM member WHERE LID='$LID'";
            $db = new DbConnect;
            if(!$conn = $db->connect())
                {
                    echo 'SQL Error';
                            exit();
                }
                else {
                    $stmt = $conn->prepare($sql);
                    $stmt->execute();
                    $name ="";
                    
                    if($result = $stmt->fetchAll(PDO::FETCH_ASSOC))
                        {
                            foreach ($result as $rows) {
                                    $name =$rows['Name'];
                                }
                                echo "$name";
                        }        
                }
            
        }
    }

    if($_POST['type']=="addSymptoms"){

        $MID = $_POST['MID'];
        $SID = 0;
        $Fever =  $_POST['Fever'];
        $Cough =  $_POST['Cough'];
        $SoreThroat =  $_POST['SoreThroat'];
        $SOB =  $_POST['SOB'];
        $BodyPain =  $_POST['BodyPain'];
        $Cold =  $_POST['Cold'];
        $LossSmell =  $_POST['LossSmell'];
        $Diarrhoea =  $_POST['Diarrhoea'];
        $Urine =  $_POST['Urine'];
        $CariveAbroad =  $_POST['CariveAbroad'];
        $CariveAbroadDate =  $_POST['CariveAbroadDate'];
        $CsuspectedPerson =  $_POST['CsuspectedPerson'];
        $CPcameAbroad =  $_POST['CPcameAbroad'];
        $CriskArea =  $_POST['CriskArea'];
        $CquarantineCamp =  $_POST['CquarantineCamp'];
        $Cworking =  $_POST['Cworking'];
        $heart =  $_POST['heart'];
        $highBlood =  $_POST['highBlood'];
        $Diabetes =  $_POST['Diabetes'];
        $lung =  $_POST['lung'];
        $other =  $_POST['other'];

        $db = new DbConnect;
        $sql = "INSERT INTO `record`(`MID`, `SID`, `fever`, `cough`, `soreThroat`, `difficultBreathe`, `bodyArchPain`, `cold`, `lossOfSmell`, `diarrhoea`, `urineOutput`, `ArriveFromAbroad`, `dateifYes`, `contactSuspect`, `personAbroad`, `personHighrisk`, `personQuarantine`, `personWorkQuarantine`, `heartDiseace`, `bloodPressure`, `Diabetes`, `LungDisease`, `OtherDisease`) VALUES ('$MID','$SID','$Fever','$Cough','$SoreThroat','$SOB','$BodyPain','$Cold','$LossSmell','$Diarrhoea','$Urine','$CariveAbroad','$CariveAbroadDate','$CsuspectedPerson', '$CPcameAbroad','$CriskArea','$CquarantineCamp','$Cworking','$heart','$highBlood','$Diabetes','$lung', '$other')";

        if(!$conn = $db->connect()){
            echo "SQL Error 0";
            exit();
        }
        else {
            $conn->exec($sql);
            $last_id = $conn->lastInsertId();
            //return $last_id;
            //add_to_queue($last_id,$priority);
            echo "Added to the queue Successfully $last_id";
        }
    }
       

    if(isset($_POST['type'])){

        if($_POST['type']=="creatSession"){
            $priority = $_POST['Priority'];
            $Rid =  $_POST['Rid'];

            $session = $opentok->createSession();
            $sessionId = $session->getSessionId();
            $token1 = $opentok->generateToken($sessionId);
            $token2 = $opentok->generateToken($sessionId);

            $myObj = new \stdClass();
            $myObj->SessionId = $sessionId;
            $myObj->TokenId1 = $token1;

            $myJSON = json_encode($myObj);

            add_to_queue($Rid,$priority,$sessionId,$token2,$myJSON);

        }
    }

}

?>

