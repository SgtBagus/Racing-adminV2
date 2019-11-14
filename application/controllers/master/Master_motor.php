

<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');



	class Master_motor extends MY_Controller {



		public function __construct()

		{

			parent::__construct();

		}



		public function index()

		{

			$data['page_name'] = "master_motor";

			$this->template->load('template/template','master/master_motor/all-master_motor',$data);

		}

		public function create()

		{

			$this->load->view('master/master_motor/add-master_motor');

		}

		public function validate()

		{

			$this->form_validation->set_error_delimiters('<li>', '</li>');

	$this->form_validation->set_rules('dt[value]', '<strong>Value</strong>', 'required');
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

				$str = $this->mymodel->insertData('master_motor', $dt);

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

	        $this->datatables->select('id,value,status');

	        $this->datatables->where('status',$status);

	        $this->datatables->from('master_motor');

	        if($status=="ENABLE"){

	        $this->datatables->add_column('view', '<div class="btn-group"><button type="button" class="btn btn-sm btn-primary" onclick="edit($1)"><i class="fa fa-pencil"></i> Edit</button></div>', 'id');



	    	}else{

	        $this->datatables->add_column('view', '<div class="btn-group"><button type="button" class="btn btn-sm btn-primary" onclick="edit($1)"><i class="fa fa-pencil"></i> Edit</button><button type="button" onclick="hapus($1)" class="btn btn-sm btn-danger"><i class="fa fa-trash-o"></i> Hapus</button></div>', 'id');



	    	}

	        echo $this->datatables->generate();

		}

		public function edit($id)

		{

			$data['master_motor'] = $this->mymodel->selectDataone('master_motor',array('id'=>$id));$data['page_name'] = "master_motor";

			$this->load->view('master/master_motor/edit-master_motor',$data);

		}





		public function update()

		{	

			$this->validate();

			



	    	if ($this->form_validation->run() == FALSE){

				$this->alert->alertdanger(validation_errors());     

	        }else{

				$id = $this->input->post('id', TRUE);		$dt = $_POST['dt'];

					$dt['updated_at'] = date("Y-m-d H:i:s");

					$str = $this->mymodel->updateData('master_motor', $dt , array('id'=>$id));

					return $str;  }

		}



		public function delete()

		{

				$id = $this->input->post('id', TRUE);

				$str = $this->mymodel->deleteData('master_motor',  array('id'=>$id));
				 return $str;
			


		}



		public function status($id,$status)

		{

			$this->mymodel->updateData('master_motor',array('status'=>$status),array('id'=>$id));


			redirect('master/Master_motor');

		}





	}

?>