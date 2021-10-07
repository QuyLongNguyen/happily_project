<?php  
	//inlude file model vao day
	include "models/ModelCustomers.php";
	class ControllerCustomers extends Controller{
		//ke thua class model
		use ModelCustomers;
		public function index(){
			//quy dinh so ban ghi tren mot trang
			$recordPerPage = 4;
			//tinh so trang
			$numPage = ceil($this->modelTotalRecord()/$recordPerPage);
			//lay du lieu tu model
			$data = $this->modelRead($recordPerPage);
			//goi view, truyen du lieu ra view
			$this->loadView("ViewCustomers.php",array("data"=>$data,"numPage"=>$numPage));
		}
		public function update(){
			$id = isset($_GET["id"])&&$_GET["id"] > 0 ? $_GET["id"] : 0;
			//lay mot ban ghi
			$record = $this->modelGetRecord();
			//tao bien $action de biet duoc khi an nut submit se dan den dau
			$action = "index.php?controller=customers&action=updatePost&id=$id";
			//goi view, truyen du lieu ra view
			$this->loadView("ViewFormCustomers.php",array("record"=>$record,"action"=>$action));
		}
		public function updatePost(){
			$id = isset($_GET["id"])&&$_GET["id"] > 0 ? $_GET["id"] : 0;
			//goi ham modelUpdate de update ban ghi
			// $this->modelUpdate();
			//quay tro lai trang customers
			header("location:index.php?controller=customers");
		}
		public function create(){
			//tao bien $action de biet duoc khi an nut submit se dan den dau
			$action = "index.php?controller=customers&action=createPost";
			//goi view, truyen du lieu ra view
			$this->loadView("ViewFormCustomers.php",array("action"=>$action));
		}
		public function createPost(){
			//goi ham modelCreate de create ban ghi
			// $this->modelCreate();
			//quay tro lai trang customers
			header("location:index.php?controller=customers");
		}
		public function delete(){
			$id = isset($_GET["id"])&&$_GET["id"] > 0 ? $_GET["id"] : 0;
			//goi ham modelUpdate de update ban ghi
			$this->modelDelete();
			//quay tro lai trang customers
			header("location:index.php?controller=customers");
		}
	}
 ?>