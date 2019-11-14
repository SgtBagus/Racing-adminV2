

<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');



class Tbl_event extends MY_Controller {



	public function __construct()

	{

		parent::__construct();

	}



	public function index()

	{

		$data['page_name'] = "tbl_event";

		$this->template->load('template/template','master/tbl_event/all-tbl_event',$data);

	}

	public function create()

	{

		$data['page_name'] = "tbl_event";

		$this->template->load('template/template','master/tbl_event/add-tbl_event',$data);

	}

	public function validate()

	{

		$this->form_validation->set_error_delimiters('<li>', '</li>');

		$this->form_validation->set_rules('dt[title]', '<strong>Title</strong>', 'required');
		$this->form_validation->set_rules('dt[tgleventStart]', '<strong>TgleventStart</strong>', 'required');
		$this->form_validation->set_rules('dt[tgleventEnd]', '<strong>TgleventEnd</strong>', 'required');
		$this->form_validation->set_rules('dt[harga]', '<strong>Harga</strong>', 'required');
		$this->form_validation->set_rules('dt[deskripsi]', '<strong>Deskripsi</strong>', 'required');
		$this->form_validation->set_rules('dt[kota]', '<strong>Kota</strong>', 'required');
		$this->form_validation->set_rules('dt[tipe_pendaftaran]', '<strong>Tipe Pendaftaran</strong>', 'required');
		$this->form_validation->set_rules('dt[minraider]', '<strong>Minraider</strong>', 'required');
		$this->form_validation->set_rules('dt[maxraider]', '<strong>Maxraider</strong>', 'required');
		$this->form_validation->set_rules('dt[TglCloseDaftar]', '<strong>TglCloseDaftar</strong>', 'required');
		$this->form_validation->set_rules('dt[live_url]', '<strong>Live Url</strong>', 'required');
		$this->form_validation->set_rules('dt[latitude]', '<strong>Latitude</strong>', 'required');
		$this->form_validation->set_rules('dt[longitude]', '<strong>Longitude</strong>', 'required');
		$this->form_validation->set_rules('dt[statusEvent]', '<strong>StatusEvent</strong>', 'required');
		$this->form_validation->set_rules('dt[tipeEvent]', '<strong>TipeEvent</strong>', 'required');
		$this->form_validation->set_rules('dt[public]', '<strong>Public</strong>', 'required');
	}



	public function store()

	{

		die(var_dump($_POST));

		$this->validate();

		if ($this->form_validation->run() == FALSE){

			$this->alert->alertdanger(validation_errors());     

		}else{

			$dt = $_POST['dt'];



			$dt['created_by'] = $_SESSION['id'];

			$dt['created_at'] = date('Y-m-d H:i:s');

			$dt['status'] = "ENABLE";

			$str = $this->mymodel->insertData('tbl_event', $dt);

			$last_id = $this->db->insert_id();	    if (!empty($_FILES['file']['name'])){

				$dir  = "webfile/";

				$config['upload_path']          = $dir;

				$config['allowed_types']        = '*';

				$config['file_name']           = md5('smartsoftstudio').rand(1000,100000);



				$this->load->library('upload', $config);

				if ( ! $this->upload->do_upload('file')){

					$error = $this->upload->display_errors();

					$this->alert->alertdanger($error);		

				}else{

					$file = $this->upload->data();

					$data = array(

						'id' => '',

						'name'=> $file['file_name'],

						'mime'=> $file['file_type'],

						'dir'=> $dir.$file['file_name'],

						'table'=> 'tbl_event',

						'table_id'=> $last_id,

						'status'=>'ENABLE',

						'created_at'=>date('Y-m-d H:i:s')

					);

					$str = $this->mymodel->insertData('file', $data);

					$this->alert->alertsuccess('Success Send Data');    

				} 

			}else{

				$data = array(

					'id' => '',

					'name'=> '',

					'mime'=> '',

					'dir'=> '',

					'table'=> 'tbl_event',

					'table_id'=> $last_id,

					'status'=>'ENABLE',

					'created_at'=>date('Y-m-d H:i:s')

				);



				$str = $this->mymodel->insertData('file', $data);

				$this->alert->alertsuccess('Success Send Data');



			}





		}

	}



	public function json()

	{

		$status = $_GET['status'];

		if($status==''){

			$status = 'ENABLE';

		}

		header('Content-Type: application/json');

		$this->datatables->select('id,title,tgleventStart,tgleventEnd,harga,deskripsi,kota,tipe_pendaftaran,minraider,maxraider,TglCloseDaftar,live_url,latitude,longitude,statusEvent,tipeEvent,public,status');

		$this->datatables->where('status',$status);

		$this->datatables->from('tbl_event');

		if($status=="ENABLE"){

			$this->datatables->add_column('view', '<div class="btn-group"><button type="button" class="btn btn-sm btn-primary" onclick="edit($1)"><i class="fa fa-pencil"></i> Edit</button></div>', 'id');



		}else{

			$this->datatables->add_column('view', '<div class="btn-group"><button type="button" class="btn btn-sm btn-primary" onclick="edit($1)"><i class="fa fa-pencil"></i> Edit</button><button type="button" onclick="hapus($1)" class="btn btn-sm btn-danger"><i class="fa fa-trash-o"></i> Hapus</button></div>', 'id');



		}

		echo $this->datatables->generate();

	}

	public function edit($id)

	{

		$data['tbl_event'] = $this->mymodel->selectDataone('tbl_event',array('id'=>$id));$data['file'] = $this->mymodel->selectDataone('file',array('table_id'=>$id,'table'=>'tbl_event'));$data['page_name'] = "tbl_event";

		$this->template->load('template/template','master/tbl_event/edit-tbl_event',$data);

	}





	public function update()

	{	

		$this->validate();





		if ($this->form_validation->run() == FALSE){

			$this->alert->alertdanger(validation_errors());     

		}else{

			$id = $this->input->post('id', TRUE);

			if (!empty($_FILES['file']['name'])){

				$dir  = "webfile/";

				$config['upload_path']          = $dir;

				$config['allowed_types']        = '*';

				$config['file_name']           = md5('smartsoftstudio').rand(1000,100000);

				$this->load->library('upload', $config);

				if ( ! $this->upload->do_upload('file')){

					$error = $this->upload->display_errors();

					$this->alert->alertdanger($error);		

				}else{

					$file = $this->upload->data();

					$data = array(

						'name'=> $file['file_name'],

						'mime'=> $file['file_type'],

					   				// 'size'=> $file['file_size'],

						'dir'=> $dir.$file['file_name'],

						'table'=> 'tbl_event',

						'table_id'=> $id,

						'updated_at'=>date('Y-m-d H:i:s')

					);

					$file = $this->mymodel->selectDataone('file',array('table_id'=>$id,'table'=>'tbl_event'));

					@unlink($file['dir']);

					if($file==""){

						$this->mymodel->insertData('file', $data);

					}else{

						$this->mymodel->updateData('file', $data , array('id'=>$file['id']));

					}





					$dt = $_POST['dt'];



					$dt['updated_at'] = date("Y-m-d H:i:s");

					$str =  $this->mymodel->updateData('tbl_event', $dt , array('id'=>$id));

					return $str;  


				}

			}else{

				$dt = $_POST['dt'];



				$dt['updated_at'] = date("Y-m-d H:i:s");

				$str = $this->mymodel->updateData('tbl_event', $dt , array('id'=>$id));

				return $str;  

			}}

		}



		public function delete()

		{

			$id = $this->input->post('id', TRUE);$file = $this->mymodel->selectDataone('file',array('table_id'=>$id,'table'=>'tbl_event'));

			@unlink($file['dir']);

			$this->mymodel->deleteData('file',  array('table_id'=>$id,'table'=>'tbl_event'));



			$str = $this->mymodel->deleteData('tbl_event',  array('id'=>$id));
			return $str;



		}



		public function status($id,$status)

		{

			$this->mymodel->updateData('tbl_event',array('status'=>$status),array('id'=>$id));


			redirect('master/Tbl_event');

		}





	}

	?>