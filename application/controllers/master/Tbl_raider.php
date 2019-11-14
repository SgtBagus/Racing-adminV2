

<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');



	class Tbl_raider extends MY_Controller {



		public function __construct()

		{

			parent::__construct();

		}



		public function index()

		{

			$data['page_name'] = "tbl_raider";

			$this->template->load('template/template','master/tbl_raider/all-tbl_raider',$data);

		}

		public function create()

		{

			$data['page_name'] = "tbl_raider";

			$this->template->load('template/template','master/tbl_raider/add-tbl_raider',$data);

		}

		public function validate()

		{

			$this->form_validation->set_error_delimiters('<li>', '</li>');

	$this->form_validation->set_rules('dt[team_id]', '<strong>Team Id</strong>', 'required');
$this->form_validation->set_rules('dt[name]', '<strong>Name</strong>', 'required');
$this->form_validation->set_rules('dt[alamat]', '<strong>Alamat</strong>', 'required');
$this->form_validation->set_rules('dt[kota]', '<strong>Kota</strong>', 'required');
$this->form_validation->set_rules('dt[tgllahir]', '<strong>Tgllahir</strong>', 'required');
$this->form_validation->set_rules('dt[nostart]', '<strong>Nostart</strong>', 'required');
$this->form_validation->set_rules('dt[namajersey]', '<strong>Namajersey</strong>', 'required');
$this->form_validation->set_rules('dt[ukuran_jersey]', '<strong>Ukuran Jersey</strong>', 'required');
$this->form_validation->set_rules('dt[motor_id]', '<strong>Motor Id</strong>', 'required');
$this->form_validation->set_rules('dt[nowa]', '<strong>Nowa</strong>', 'required');
$this->form_validation->set_rules('dt[goldarah]', '<strong>Goldarah</strong>', 'required');
$this->form_validation->set_rules('dt[verificacion]', '<strong>Verificacion</strong>', 'required');
$this->form_validation->set_rules('dt[email]', '<strong>Email</strong>', 'required');
$this->form_validation->set_rules('dt[eventikut]', '<strong>Eventikut</strong>', 'required');
	}



		public function store()

		{

			$this->validate();

	    	if ($this->form_validation->run() == FALSE){

				$this->alert->alertdanger(validation_errors());     

	        }else{

				$dt = $_POST['dt'];
				
				

				$dt['created_by'] = $_SESSION['id'];

				$dt['created_at'] = date('Y-m-d H:i:s');

				$dt['status'] = "ENABLE";

				$str = $this->mymodel->insertData('tbl_raider', $dt);

				$last_id = $this->db->insert_id();$this->alert->alertsuccess('Success Send Data');   

					

			}

		}



		public function json()

		{

			$status = $_GET['status'];

			if($status==''){

				$status = 'ENABLE';

			}

			header('Content-Type: application/json');

	        $this->datatables->select('id,team_id,name,alamat,kota,tgllahir,nostart,namajersey,ukuran_jersey,motor_id,nowa,goldarah,verificacion,email,password,eventikut,status');

	        $this->datatables->where('status',$status);

	        $this->datatables->from('tbl_raider');

	        if($status=="ENABLE"){

	        $this->datatables->add_column('view', '<div class="btn-group"><button type="button" class="btn btn-sm btn-primary" onclick="edit($1)"><i class="fa fa-pencil"></i> Edit</button></div>', 'id');



	    	}else{

	        $this->datatables->add_column('view', '<div class="btn-group"><button type="button" class="btn btn-sm btn-primary" onclick="edit($1)"><i class="fa fa-pencil"></i> Edit</button><button type="button" onclick="hapus($1)" class="btn btn-sm btn-danger"><i class="fa fa-trash-o"></i> Hapus</button></div>', 'id');



	    	}

	        echo $this->datatables->generate();

		}

		public function edit($id)

		{

			$data['tbl_raider'] = $this->mymodel->selectDataone('tbl_raider',array('id'=>$id));$data['page_name'] = "tbl_raider";

			$this->template->load('template/template','master/tbl_raider/edit-tbl_raider',$data);

		}





		public function update()

		{	

			$this->validate();

			



	    	if ($this->form_validation->run() == FALSE){

				$this->alert->alertdanger(validation_errors());     

	        }else{

				$id = $this->input->post('id', TRUE);		$dt = $_POST['dt'];

					$dt['updated_at'] = date("Y-m-d H:i:s");

					$str = $this->mymodel->updateData('tbl_raider', $dt , array('id'=>$id));

					return $str;  }

		}



		public function delete()

		{

				$id = $this->input->post('id', TRUE);

				$str = $this->mymodel->deleteData('tbl_raider',  array('id'=>$id));
				 return $str;
			


		}



		public function status($id,$status)

		{

			$this->mymodel->updateData('tbl_raider',array('status'=>$status),array('id'=>$id));


			redirect('master/Tbl_raider');

		}





	}

?>