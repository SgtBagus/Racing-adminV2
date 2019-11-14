

<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');



	class Tbl_event_register extends MY_Controller {



		public function __construct()

		{

			parent::__construct();

		}



		public function index()

		{

			$data['page_name'] = "tbl_event_register";

			$this->template->load('template/template','master/tbl_event_register/all-tbl_event_register',$data);

		}

		public function create()

		{

			$data['page_name'] = "tbl_event_register";

			$this->template->load('template/template','master/tbl_event_register/add-tbl_event_register',$data);

		}

		public function validate()

		{

			$this->form_validation->set_error_delimiters('<li>', '</li>');

	$this->form_validation->set_rules('dt[team_id]', '<strong>Team Id</strong>', 'required');
$this->form_validation->set_rules('dt[event_id]', '<strong>Event Id</strong>', 'required');
$this->form_validation->set_rules('dt[approve]', '<strong>Approve</strong>', 'required');
$this->form_validation->set_rules('dt[note]', '<strong>Note</strong>', 'required');
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

				$str = $this->mymodel->insertData('tbl_event_register', $dt);

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

	        $this->datatables->select('id,team_id,event_id,approve,note,status');

	        $this->datatables->where('status',$status);

	        $this->datatables->from('tbl_event_register');

	        if($status=="ENABLE"){

	        $this->datatables->add_column('view', '<div class="btn-group"><button type="button" class="btn btn-sm btn-primary" onclick="edit($1)"><i class="fa fa-pencil"></i> Edit</button></div>', 'id');



	    	}else{

	        $this->datatables->add_column('view', '<div class="btn-group"><button type="button" class="btn btn-sm btn-primary" onclick="edit($1)"><i class="fa fa-pencil"></i> Edit</button><button type="button" onclick="hapus($1)" class="btn btn-sm btn-danger"><i class="fa fa-trash-o"></i> Hapus</button></div>', 'id');



	    	}

	        echo $this->datatables->generate();

		}

		public function edit($id)

		{

			$data['tbl_event_register'] = $this->mymodel->selectDataone('tbl_event_register',array('id'=>$id));$data['page_name'] = "tbl_event_register";

			$this->template->load('template/template','master/tbl_event_register/edit-tbl_event_register',$data);

		}





		public function update()

		{	

			$this->validate();

			



	    	if ($this->form_validation->run() == FALSE){

				$this->alert->alertdanger(validation_errors());     

	        }else{

				$id = $this->input->post('id', TRUE);		$dt = $_POST['dt'];

					$dt['updated_at'] = date("Y-m-d H:i:s");

					$str = $this->mymodel->updateData('tbl_event_register', $dt , array('id'=>$id));

					return $str;  }

		}



		public function delete()

		{

				$id = $this->input->post('id', TRUE);

				$str = $this->mymodel->deleteData('tbl_event_register',  array('id'=>$id));
				 return $str;
			


		}



		public function status($id,$status)

		{

			$this->mymodel->updateData('tbl_event_register',array('status'=>$status),array('id'=>$id));


			redirect('master/Tbl_event_register');

		}





	}

?>