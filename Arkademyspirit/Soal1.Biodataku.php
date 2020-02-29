<?php
class Biodata{

    public $data = [];

    public function name($name){
      $this->data['name'] = $name;
      return $this;
    }

    public function age($age){
      $this->data['age'] = $age;
      return $this;
    }

    public function address($address){
      $this->data['address'] = $address;
      return $this;
    }

    public function hobbies($hobbies = array()){
      $this->data['hobbies'] = $hobbies;
      return $this;
    }

    public function is_married($is_married){
      $this->data['is_married'] = $is_married;
      return $this;
    }

    public function list_school($list_school){
      $this->data['list_school'] = $list_school;
      return $this;
    }

    public function skills($skills){
      $this->data['skills'] = $skills;
      return $this;
    }

    public function interest_in_coding($interest_in_coding){
      $this->data['coding'] = $interest_in_coding;
      return $this;
    }

    public function json(){
      return json_encode($this->data, JSON_PRETTY_PRINT);
    }
}

    $biodata 	= new Biodata();
    $name		= "Treido Alde Ristivan";
    $age = 23;
    $address		= "Jl Menteng 72a, Kec.Senen, Jakarta Pusat";
    $hobbies 		= ['Membaca','Menulis','Olahraga','Ngoding',];
    $list_school	= [
      'SD' => [
          'name' => 'SD Negeri Tambakasri 05',
          'year_in' => '2006',
          'year_out' => '2012',
          'major' => null ],
      'SMP' => [
          'name' => 'SMPN 1 Malang',
          'year_in' => '2012',
          'year_out' => '2015',
          'major' => null ],
      'SMK' => [
          'name' => 'SMKN NASIONAL Malang',
          'year_in' => '2015',
          'year_out' => '2018',
          'major' => null ]
      
        ];

    $skills	= [
          "PHP"		        => ['Advanced'],
          "Javascript"		=> ['Beginner'],
          "C++"	       	=> ['Beginner'],
          "CSS"	        	=> ['Beginner'],
          "MySql"       	=> ['Advanced']
          ];
    print_r($biodata->name($name)
          ->age($age)
          ->address($address)
          ->hobbies($hobbies)
          ->is_married(false)
          ->list_school($list_school)
          ->skills($skills)
          ->interest_in_coding(true)
          ->json()
    );
 ?>
