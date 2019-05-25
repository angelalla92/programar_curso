<?php
Class Cn{
    public $cn;
    private $host;
    private $passwor;
    private $user;
    private $db;

    public function Cn(){
        $this->host="localhost";
        $this->db="senatiangela";
        $this->user="root";
        $this->passwor="123456";
        $this->cn=new mysqli($this->host, $this->user,$this->passwor,$this->db);
        //var_dump($this->cn);
        $this->cn->set_charset("utf8");
        if($this->cn->{'connect_errno'}>0){
            return NULL;
        }else{
            return $this->cn;
        }
    }
}

?>