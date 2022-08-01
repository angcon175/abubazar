<?php

namespace App\Http\Traits;
use Twilio\Rest\Client;
use Exception;

trait SmsTrait
{
    public function sendSms($message,$receiverNumber){

        $account_sid = 'ACaaf33ab5331af28b9ef1e8d22cadc9ac';
        $auth_token = '0aa16e285aae7d6445fedb48ec9df615';
        $twilio_number = '+18305327356';

        try {
        $client = new Client($account_sid, $auth_token);
        $client->messages->create($receiverNumber, [
            'from' => $twilio_number,
            'body' => $message]);
            return 1;
        } catch (Exception $e) {
            return 0;
        }

    }

}
