<?php
/**
 * Created by PhpStorm.
 * User: lenovo
 * Date: 5/5/2019
 * Time: 10:01 PM
 */
include 'config.php';


if ($_POST) {

    $id_user = $_POST['id_user'];
    $id_teknisi = $_POST['id_teknisi'];
    $id_pelapor = $_POST['id_pelapor'];
    $kesesuaian_pekerjaan = $_POST['kesesuaian_pekerjaan'];
    $lama_pengerjaan = $_POST['lama_pengerjaan'];
    $result = $_POST['result'];
    $point_feedback = $_POST['point_feedback'];

    $sql = "INSERT INTO feedback
(id_user, id_teknisi, point_feedback, kesesuaian_pekerjaan, lama_pengerjaan, result, status_feedback)
VALUE ('$id_user', '$id_teknisi', '$point_feedback', '$kesesuaian_pekerjaan', '$lama_pengerjaan', '$result', 'Sukses')";

    $updateStatusFeedback = mysqli_query($db, "UPDATE `pelapor` SET `status_feedback`='Sukses' WHERE `id_pelapor` = $id_pelapor");

    $query = mysqli_query($db, $sql);
    if ($query){
        $response["error"] = false;
        $response["error_msg"] = "Berhasil Feedback";
        echo json_encode($response);
    } else{
        $response["error"] = false;
        $response["error_msg"] = "Gagal Mengirim Feedback";
        echo json_encode($response);
    }

}
else{
    $response["error"] = true;
    $response["error_msg"] = "404";

    echo json_encode($response);
}
?>