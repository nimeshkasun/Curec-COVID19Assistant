
<?php
    require 'dbconnect.php';

    require_once("vendor/autoload.php");

    use OpenTok\OpenTok;

    $apiKey = "46665872";
    $apiSecret = "1072db3cd6bc2e0a6d194a98d4a3995857944cb4";

    $opentok = new OpenTok($apiKey, $apiSecret);



    function creat_user($nic,$Password){
        $db = new DbConnect;
        $hashed = password_hash($Password, PASSWORD_BCRYPT);
        $sql = "INSERT INTO  `login`( `Username`, `Password`) VALUES ('$nic','$hashed')";

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
        $MOID = $_POST['MOID'];
        $bloodType = $_POST['bloodType'];
        $Location_lat = $_POST['Location_lat'];
        $Location_lan = $_POST['Location_lan'];
        $Password = $_POST['Password'];


        $LID = creat_user($nic,$Password);
        $db = new DbConnect;
        $sql = "INSERT INTO `member`( `FID`, `Name`, `NIC`, `Gender`, `Age`, `Bloodtype`, `Location_lat`, `Location_lan`, `City`, `phone`, `LID`, `MOID`) VALUES ('$familyID','$name','$nic','$gender','$age','$bloodType','$Location_lat','$Location_lan','$location','$phone', '$LID', '$MOID')";

        if(!$conn = $db->connect()){
            echo "SQL Error";
            exit();
        }
        else {
            $stmt = $conn->prepare($sql);
            $stmt->execute();
            $myObj3 = new \stdClass();
            $myObj3->Status = "1";
            $myObj3->LID = $LID;
            $myJSON3 = json_encode($myObj3);
            echo "$myJSON3";
        }
    }

    if($_POST['type']=="login"){
        $username =  $_POST['Username'];
        $password =  $_POST['Password'];
        if(empty($username) || empty($password)){
            echo "Empty fields";
        }
        else {
            //$sql = "SELECT * FROM login WHERE Username='$username' and Password='$password'";
            $sql = "SELECT * FROM login WHERE Username='$username'";
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
                    $tempPass ="";
                    $myObj2 = new \stdClass();
                    if($result = $stmt->fetchAll(PDO::FETCH_ASSOC))
                        {
                            foreach ($result as $rows) {
                                    $UID =$rows['LID'];
                                    $tempPass =$rows['Password'];
                                }

                                if(password_verify($password, $tempPass)){
                                    $myObj2->Status = "1";
                                    $myObj2->LID = $UID;
                                }else{
                                    $myObj2->Status = "0";
                                }
                        }
                        else {
                            $myObj2->Status = "0";
                            //echo "Invalid Credentials 0";
                        } 
                    $myJSON2 = json_encode($myObj2);
                    echo "$myJSON2";
                }
            
        }
    }

    if($_POST['type']=="load_member_name"){
        $LID =  $_POST['LID'];
        $lat =  $_POST['lat'];
        $lan =  $_POST['lan'];
        if(empty($LID)){
            echo "Empty fields";
        }
        else {
            $sql = "SELECT `MID`,`Name` FROM member WHERE LID='$LID'";
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
                    $mid ="";
                    
                    if($result = $stmt->fetchAll(PDO::FETCH_ASSOC))
                        {
                            foreach ($result as $rows) {
                                    $name =$rows['Name'];
                                    $mid =$rows['MID'];
                                }
                                $myObj1 = new \stdClass();
                                $myObj1->MID = $mid;
                                $myObj1->Name = $name;
                                if(!($lat=="111" || $lan=="111")){
                                    $stmt = $conn->prepare("INSERT INTO `location`( `MID`, `lat`, `lan`) VALUES ('$mid','$lat','$lan')");
                                     $stmt->execute();
                                }
                                $myJSON1 = json_encode($myObj1);
                                echo "$myJSON1";
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
        $priority =  $_POST['priority'];
        
        if(empty($CariveAbroadDate)){
            $CariveAbroadDate="null";
        }else{
            $CariveAbroadDate="'".$CariveAbroadDate."'";
        }

        $db = new DbConnect;
        $sql = "INSERT INTO `record`(`MID`, `SID`, `fever`, `cough`, `soreThroat`, `difficultBreathe`, `bodyArchPain`, `cold`, `lossOfSmell`, `diarrhoea`, `urineOutput`, `ArriveFromAbroad`, `dateifYes`, `contactSuspect`, `personAbroad`, `personHighrisk`, `personQuarantine`, `personWorkQuarantine`, `heartDiseace`, `bloodPressure`, `Diabetes`, `LungDisease`, `OtherDisease`, `priority`) VALUES ('$MID','$SID','$Fever','$Cough','$SoreThroat','$SOB','$BodyPain','$Cold','$LossSmell','$Diarrhoea','$Urine','$CariveAbroad',$CariveAbroadDate,'$CsuspectedPerson', '$CPcameAbroad','$CriskArea','$CquarantineCamp','$Cworking','$heart','$highBlood','$Diabetes','$lung', '$other', '$priority')";

         if(!$conn = $db->connect()){
            $myObj4 = new \stdClass();
            $myObj4->Status = "0";
            $myJSON4 = json_encode($myObj4);
            echo "$myJSON4";
            exit();
        }
        else {
            $conn->exec($sql);
            $last_id = $conn->lastInsertId();
            $myObj4 = new \stdClass();
            $myObj4->Status = "1";
            $myObj4->last = $last_id;
            $myJSON4 = json_encode($myObj4);
            echo "$myJSON4";
        }
    }

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

    if($_POST['type']=="load_member_data"){
        $MID =  $_POST['MID'];
        if(empty($MID)){
            echo "Empty fields";
        }
        else {
            $sql = "SELECT member.lid,`Name`, `NIC`, `Gender`, `Age`, `Bloodtype`, `City`, `phone`, `password` FROM `member`,`login` WHERE MID ='$MID' AND member.lid = login.lid ";
            $db = new DbConnect;
            if(!$conn = $db->connect())
                {
                    echo 'SQL Error';
                            exit();
                }
                else {
                    $stmt = $conn->prepare($sql);
                    $stmt->execute();
                    $LID ="";
                    $Name ="";
                    $NIC ="";
                    $Gender ="";
                    $Age ="";
                    $Bloodtype ="";
                    $City ="";
                    $phone ="";
                    $password ="";
                    
                    if($result = $stmt->fetchAll(PDO::FETCH_ASSOC))
                        {
                            foreach ($result as $rows) {
                                    $LID = $rows['LID'];
                                    $Name = $rows['Name'];
                                    $NIC = $rows['NIC'];
                                    $Gender = $rows['Gender'];
                                    $Age = $rows['Age'];
                                    $Bloodtype = $rows['Bloodtype'];
                                    $City = $rows['City'];
                                    $phone = $rows['phone'];
                                    $password = $rows['password'];
                                }
                                $myObj5 = new \stdClass();
                                $myObj5->LID = $LID;
                                $myObj5->Name = $Name;
                                $myObj5->NIC = $NIC;
                                $myObj5->Gender = $Gender;
                                $myObj5->Age = $Age;
                                $myObj5->Bloodtype = $Bloodtype;
                                $myObj5->City = $City;
                                $myObj5->phone = $phone;
                                $myObj5->password = $password;

                                $myJSON5 = json_encode($myObj5);
                                echo "$myJSON5";
                        }        
                }
            
        }
    }

    if($_POST['type']=="load_moh") {
		$db = new DbConnect;
		$conn = $db->connect();
		$stmt = $conn->prepare("SELECT `MOID`, `officernumber`, `Colony` FROM `moh` ORDER BY `Colony`");
		$stmt->execute();
		$rec = $stmt->fetchAll(PDO::FETCH_ASSOC);
		echo json_encode($rec);
    }

    if($_POST['type']=="load_record") {
        $MID =  $_POST['MID'];
		$db = new DbConnect;
		$conn = $db->connect();
		$stmt = $conn->prepare("SELECT record.RID, record.timestamp, `fever`, `cough`, `soreThroat`, `difficultBreathe`, `bodyArchPain`, `cold`, `lossOfSmell`, `diarrhoea`, `urineOutput`, `ArriveFromAbroad`, `dateifYes`, `contactSuspect`, `personAbroad`, `personHighrisk`, `personQuarantine`, `personWorkQuarantine`, `heartDiseace`, `bloodPressure`, `Diabetes`, `LungDisease`, `OtherDisease`, `priority`, `Comment`, diagnose.status, `name`, `lastname`, `phone`, `medicalRegID`, `nic`, `workArea` FROM record
        LEFT JOIN diagnose ON record.RID=diagnose.RID
        LEFT JOIN doctor ON doctor.DID=diagnose.DID
        WHERE record.MID ='$MID' ORDER BY record.timestamp DESC");
		$stmt->execute();
		$rec = $stmt->fetchAll(PDO::FETCH_ASSOC);
		echo json_encode($rec);
    }
    
}

?>

