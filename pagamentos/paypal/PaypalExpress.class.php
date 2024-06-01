<?php
/*
 * PaypalExpress Class
 * This class is used to handle PayPal API related operations
 * @author    CodexWorld.com
 * @url        http://www.codexworld.com
 * @license    http://www.codexworld.com/license
 */
class PaypalExpress{
    public $paypalEnv       = 'production'; // 'sandbox' ou 'production'
    public $paypalURL       = 'https://api.sandbox.paypal.com/v1/';  // 'https://api.sandbox.paypal.com/v1/'   ou   'https://api.paypal.com'
    public $paypalClientID  = 'AcfKdCsmRM_N5QDAMk4FMWP6wzr38atDl0z1Q4wc31LPzJl6iu6Okx_ziuJmi5fbHOq-mg7Wp_MBHvma';
    private $paypalSecret   = 'EMdPa63XR9I0gmK55BiBk7gAykeSzMTMP4z1QeKqiwbfZV_HxjrgX87-x2-qMhWFjZpB4Yodl8qY-fMa';

    //conta nova
    //public $paypalClientID  = 'AWEWgwj_TnBkyHYF-AD7nJyVJb29FDloLGlgWFofEuuioNN76ONyBLIPPX0X5YJ-vLz_bd64FnNMyEgO';
    //private $paypalSecret   = 'EER1EUFlUqeBoppTdMc249wFZd4PKOuZ9XzZM2e_vzMYPtIeMaQjgRErHoSFAaVxNp8aFB5VKmcC17Hd';
    
    public function validate($paymentID, $paymentToken, $payerID, $productID){
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $this->paypalURL.'oauth2/token');
        curl_setopt($ch, CURLOPT_HEADER, false);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_USERPWD, $this->paypalClientID.":".$this->paypalSecret);
        curl_setopt($ch, CURLOPT_POSTFIELDS, "grant_type=client_credentials");
        $response = curl_exec($ch);
        curl_close($ch);
        
        if(empty($response)){
            return false;
        }else{
            $jsonData = json_decode($response);
            $curl = curl_init($this->paypalURL.'payments/payment/'.$paymentID);
            curl_setopt($curl, CURLOPT_POST, false);
            curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);
            curl_setopt($curl, CURLOPT_HEADER, false);
            curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
            curl_setopt($curl, CURLOPT_HTTPHEADER, array(
                'Authorization: Bearer ' . $jsonData->access_token,
                'Accept: application/json',
                'Content-Type: application/xml'
            ));
            $response = curl_exec($curl);
            curl_close($curl);
            
            // Transaction data
            $result = json_decode($response);
            
            return $result;
        }
    
    }
}