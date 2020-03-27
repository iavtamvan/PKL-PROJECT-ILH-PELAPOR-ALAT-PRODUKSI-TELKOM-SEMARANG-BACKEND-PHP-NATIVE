<?php
/**
 * Created by PhpStorm.
 * User: User
 * Date: 6/18/2019
 * Time: 11:33 PM
 */

include 'config.php';

if ($_GET){
    $change = $_GET['change'];

    switch ($change){
        case "dataPelapor" : //untuk validator
            $sql = mysqli_query($db, "Select * from pelapor where status='Belum Disetujui' || status ='Sedang Dalam Perbaikan'");
            $arrayJson = array();

            while($data = mysqli_fetch_assoc($sql)){
                $arrayJson[] = $data;
            }
            $response = $arrayJson;
            echo json_encode($response);
            break;
        case "onProgress" : // untuk validator | history
            $idUser = $_GET['id_user_validator'];
            $sql = mysqli_query($db, "Select * from pelapor where (status ='Sedang Dalam Perbaikan' || status = 'Sudah Diselesaikan' || status ='Ditolak Validator' || status='Disetujui Validator') AND id_user_validator='$idUser'");
//            $sql = mysqli_query($db, "Select * from pelapor where status ='Sedang Dalam Perbaikan' || status = 'Sudah Diselesaikan' where id_user = '$idUser'");
            $arrayJson = array();

            while($data = mysqli_fetch_assoc($sql)){
                $arrayJson[] = $data;
            }
            $response = $arrayJson;
            echo json_encode($response);
            break;

        case "disetujuiValidator" : //untuk teknisi
            $sql = mysqli_query($db, "Select * from pelapor where status ='Disetujui Validator' || status='Sedang Dalam Perbaikan'");
            $arrayJson = array();

            while($data = mysqli_fetch_assoc($sql)){
                $arrayJson[] = $data;
            }
            $response = $arrayJson;
            echo json_encode($response);
            break;
        case "historiTeknisi" : //untuk teknisi
            $idUser = $_GET['id_user_teknisi'];
            $sql = mysqli_query($db, "Select * from pelapor where id_user_teknisi ='$idUser'");
            $arrayJson = array();

            while($data = mysqli_fetch_assoc($sql)){
                $arrayJson[] = $data;
            }
            $response = $arrayJson;
            echo json_encode($response);
            break;

        case "historiPelapor" : //untuk teknisi
            $idUser = $_GET['id_user_akun'];
            $sql = mysqli_query($db, "Select * from pelapor where id_user_akun ='$idUser'");
            $arrayJson = array();

            while($data = mysqli_fetch_assoc($sql)){
                $arrayJson[] = $data;
            }
            $response = $arrayJson;
            echo json_encode($response);
            break;

        case "getTokenRegID" : //untuk mengirim notif
            $idUser = $_GET['id_user'];
            $sql = mysqli_query($db, "Select * from akun where id_user ='$idUser'");
            $user = mysqli_fetch_assoc($sql);
            $regID = "".$user['reg_id'];

            $response["error"] = false;
            $response["error_msg"] = "Fetch";
            $response["regID"] = $regID;

//            $arrayJson = array();
//
//            while($data = mysqli_fetch_assoc($sql)){
//                $arrayJson[] = $data;
//            }
//            $response = $arrayJson;
            echo json_encode($response);
            break;

        case "getDataPekerjaanWhereIdTeknisi" :
            $id_teknisi = $_GET['id_teknisi'];
            $sql = mysqli_query($db, "Select * from pelapor where id_user_teknisi ='$id_teknisi'");
            $arrayJson = array();

            while($data = mysqli_fetch_assoc($sql)){
                $arrayJson[] = $data;
            }
            $response = $arrayJson;
            echo json_encode($response);
            break;

        case "getFeedbackTeknisi" : //untuk mengirim notif
            $id_teknisi = $_GET['id_teknisi'];
            $sql = mysqli_query($db, "SELECT SUM(`point_feedback`) AS Total FROM feedback WHERE `id_teknisi` ='$id_teknisi'");
            $user = mysqli_fetch_assoc($sql);
            $totalPpint = "".$user['Total'];

            $sqlTotalPelaporTeknisi = mysqli_query($db, "SELECT COUNT(feedback.id_teknisi) AS totalPelaporTeknisi FROM feedback WHERE id_teknisi =$id_teknisi;");
            $totalFdbTeknisi = mysqli_fetch_assoc($sqlTotalPelaporTeknisi);
            $totalFeedbackTeknisi = "".$totalFdbTeknisi['totalPelaporTeknisi'];

            $sqlSemuaPelapor = mysqli_query($db, "SELECT COUNT(feedback.id_teknisi) AS totalPelapor FROM feedback;");
            $totalSemuaPelaporFetch = mysqli_fetch_assoc($sqlSemuaPelapor);
            $totalSemuaPelaporKeTeknisi = "".$totalSemuaPelaporFetch['totalPelapor'];

            $response["error"] = false;
            $response["total_point"] = $totalPpint;
            $response["total_fedback_teknisi"] = $totalFeedbackTeknisi;
            $response["total_pelapor"] = $totalSemuaPelaporKeTeknisi;

            echo json_encode($response);
            break;

    }
}



?>
