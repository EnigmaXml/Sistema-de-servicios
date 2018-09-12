<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {
	public $page;

	function __construct()
	{
		parent::__construct();
        
		$this->page['navbar'] = $this->load->view('admin_interface/admin_interface_nav_bar.php','',true);
		$this->page['asidebar'] = $this->load->view('admin_interface/admin_interface_aside_bar.php','',true);
       $this->page['foot'] = $this->load->view('user_interface/user_interface_footer.php','',true);
       $this->page['right']=$this->load->view('admin_interface/admin_interface_right_sidebar.php','',true);
    

	}
	public function index()
	{
		
		$this->load->view('welcome_message',$this->page);
	}

	public function Register(){
		$this->load->view('user_interface/welcome/welcome_register.php');
	}

	public function Login(){
		$this->load->view('user_interface/welcome/welcome_login.php');
	}

	public function Pass(){
		$this->load->view('user_interface/welcome/welcome_recover_pass.php');
	}

	public function Company(){
		$this->load->view('user_interface/welcome/welcome_company.php',$this->page);
	}
	
	public function x(){
		$this->load->view('x.php');
	}
}

