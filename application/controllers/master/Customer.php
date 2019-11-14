

<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');



	class Customer extends MY_Controller {



		public function __construct()

		{

			parent::__construct();

		}



		public function index()

		{

			$data['page_name'] = "customer";

			$this->template->load('template/template','master/customer/all-customer',$data);

		}

		public function create()

		{

			$this->load->view('master/customer/add-customer');

		}

		public function validate()

		{

			$this->form_validation->set_error_delimiters('<li>', '</li>');

	$this->form_validation->set_rules('dt[nama]', '<strong>Nama</strong>', 'required');
$this->form_validation->set_rules('dt[email]', '<strong>Email</strong>', 'required');
$this->form_validation->set_rules('dt[telp]', '<strong>Telp</strong>', 'required');
$this->form_validation->set_rules('dt[alamat]', '<strong>Alamat</strong>', 'required');
	}



		public function store()

		{

			$this->validate();

	    	if ($this->form_validation->run() == FALSE){

				$this->alert->alertdanger(validation_errors());     

	        }else{

	        	$dt = $_POST['dt'];

				$dt['created_at'] = date('Y-m-d H:i:s');

				$dt['status'] = "ENABLE";

				$str = $this->mymodel->insertData('customer', $dt);

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

	        $this->datatables->select('id,nama,email,telp,alamat,status');

	        $this->datatables->where('status',$status);

	        $this->datatables->from('customer');

	        if($status=="ENABLE"){

	        $this->datatables->add_column('view', '<div class="btn-group"><button type="button" class="btn btn-sm btn-primary" onclick="edit($1)"><i class="fa fa-pencil"></i> Edit</button></div>', 'id');



	    	}else{

	        $this->datatables->add_column('view', '<div class="btn-group"><button type="button" class="btn btn-sm btn-primary" onclick="edit($1)"><i class="fa fa-pencil"></i> Edit</button><button type="button" onclick="hapus($1)" class="btn btn-sm btn-danger"><i class="fa fa-trash-o"></i> Hapus</button></div>', 'id');



	    	}

	        echo $this->datatables->generate();

		}

		public function edit($id)

		{

			$data['customer'] = $this->mymodel->selectDataone('customer',array('id'=>$id));$data['page_name'] = "customer";

			$this->load->view('master/customer/edit-customer',$data);

		}





		public function update()

		{

			$this->form_validation->set_error_delimiters('<li>', '</li>');

			

			$this->validate();

			



	    	if ($this->form_validation->run() == FALSE){

				$this->alert->alertdanger(validation_errors());     

	        }else{

				$id = $this->input->post('id', TRUE);		$dt = $_POST['dt'];

					$dt['updated_at'] = date("Y-m-d H:i:s");

					$str = $this->mymodel->updateData('customer', $dt , array('id'=>$id));

					return $str;  }

		}



		public function delete()

		{

				$id = $this->input->post('id', TRUE);

				$str = $this->mymodel->deleteData('customer',  array('id'=>$id));
				 return $str;
			


		}



		public function status($id,$status)

		{

			$this->mymodel->updateData('customer',array('status'=>$status),array('id'=>$id));


			redirect('master/Customer');

		}





	}

?>