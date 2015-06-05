<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Posts extends CI_Controller {

	public function __construct()
  {
      parent::__construct();
  }

	public function index()
	{
		$this->load->view('posts/index');
	}

	public function search()
	{
		$query = $this->input->get('query');
		$page = $this->input->get('page');
		if ($page == 0) $page = 1;

		$this->load->model("Post");
		$data=$this->Post->listall($query, $page);
		$count_all=$this->Post->countall($query);
		
		header('Content-Type: application/json');
		$result = array(
    	"page" => (int)$page,
    	"limit" => 20,
    	"count" => $count_all,
    	"data" => $data
		);

		echo json_encode($result);
	}
}