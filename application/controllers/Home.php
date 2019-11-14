<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Home extends MY_Controller {
	public function __construct()
	{
		parent::__construct();
	}
	public function index()
	{
        $data['page_name'] = "home";
        $data['totalevent'] = $this->mymodel->selectWithQuery("SELECT COUNT(id) as total FROM tbl_event");
        $data['totalregister'] = $this->mymodel->selectWithQuery("SELECT COUNT(id) as totalregister FROM tbl_event_register WHERE approve = 'WAITING' ");
        $data['totalmerchandise'] = $this->mymodel->selectWithQuery("SELECT COUNT(id) as totalmerchandise FROM tbl_merchandise");
        
        
        $data['tbl_event'] = $this->db->limit(5)->order_by('id', 'DESC')->get_where('tbl_event', array('status' => 'ENABLE'))->result_array();
        $data['tbl_wisata'] = $this->db->limit(5)->order_by('id', 'DESC')->get_where('tbl_wisata', array('status' => 'ENABLE'))->result_array();
        $data['tbl_blog'] = $this->db->limit(5)->order_by('id', 'DESC')->get_where('tbl_blog', array('status' => 'ENABLE'))->result_array();
        $data['master_imagegroup'] = $this->db->limit(5)->order_by('id', 'DESC')->get_where('master_imagegroup', array('status' => 'ENABLE'))->result_array();
        $data['tbl_merchandise'] = $this->db->limit(5)->order_by('id', 'DESC')->get_where('tbl_merchandise', array('status' => 'ENABLE'))->result_array();
		$this->template->load('template/template','template/index',$data);
		
	}

    function chart($value='')
    {
        $data['page_name'] = "chart";
        $this->template->load('template/template','chartscanvasjs/index',$data);
    }



    function get_autocomplete(){
        if (isset($_GET['term'])) {
        	$this->db->like('name',$_GET['term'],'both');
            $result = $this->mymodel->selectWhere('user',null);
            if (count($result) > 0) {
            foreach ($result as $row)
                $arr_result[] = [
                				'id'=>$row['id'],
                				'label'=>$row['name']
                				];

                echo json_encode($arr_result);
            }
        }
    }


    public function tes()
    {
        echo "'".$this->template->sonDecode('V7-BW2sw1V5UHGX51TW3mmm1s87WfWK0-3_tBBlBpbU~')."'";
        
    }

   

}
/* End of file Home.php */
/* Location: ./application/controllers/Home.php */