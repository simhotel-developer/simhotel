<?php 

class home extends CI_Controller {

	public function __construct() {
		parent::__construct();
		$this->load->model('home_model');
	}

	
	public function index()
	{
		$data['tentang_kami'] 	= $this->home_model->TentangKami();
		$data['kamar'] 			= $this->home_model->Kamar();
		$this->template_home->load('template_home','home/data/index',$data);
	}

	//Awal Tentang Kami
	public function tentang_kami() {

		$data['tentang_kami'] = $this->home_model->TentangKami();

		$this->template_home->load('template_home','home/data/tentang_kami',$data);

	}
	//Akhir Tentang Kami


	//Awal Saran
	public function saran() {

		$data['tentang_kami'] = $this->home_model->TentangKami();

		$this->template_home->load('template_home','home/data/saran',$data);

	}

	public function saran_kirim () {

		$this->form_validation->set_rules('nama_saran','Nama','required');
		$this->form_validation->set_rules('email_saran','Email','required');
		$this->form_validation->set_rules('telp_saran','Telp','required');
		$this->form_validation->set_rules('isi_saran','Isi Kritik/Saran','required');

		if ($this->form_validation->run()==FALSE) {

			$data['tentang_kami'] = $this->home_model->TentangKami();

			$this->template_home->load('template_home','home/data/saran',$data);

		}
		else {

			$in['nama_saran']  	= $this->input->post('nama_saran');
			$in['email_saran']  = $this->input->post('email_saran');
			$in['telp_saran']  	= $this->input->post('telp_saran');
			$in['isi_saran']  	= $this->input->post('isi_saran');

			$this->db->insert('tbl_saran',$in);

			$this->session->set_flashdata('sukses','OK');
			redirect("home/saran");

		}



	}
	//Akhir Saran

	//Awal Kamar
	public function kamar() {

		$data['tentang_kami'] 	= $this->home_model->TentangKami();
		$data['kamar'] 			= $this->home_model->KamarAll();
		$data['kelas_kamar'] 	= $this->home_model->KelasKamar();

		$this->template_home->load('template_home','home/data/kamar',$data);

	}

	public function kamar_kelas_kamar () {

		$id = $this->input->post('kelas_kamar_id');

		$data['tentang_kami'] 	= $this->home_model->TentangKami();
		$data['kamar'] 			= $this->home_model->KamarKelasKamar($id);
		$data['kelas_kamar'] 	= $this->home_model->KelasKamar();

		$this->template_home->load('template_home','home/data/kamar_kelas_kamar',$data);

	}

	public function kamar_detail () {

		$id = $this->uri->segment(3);

		$data['tentang_kami'] 	= $this->home_model->TentangKami();
		$data['kamar'] 			= $this->home_model->KamarDetail($id);
		$data['kamar_gambar'] 	= $this->home_model->KamarGambarId($id);
		$data['kelas_kamar'] 	= $this->home_model->KelasKamar();

		$this->template_home->load('template_home','home/data/kamar_detail',$data);

	}

	public function reservasi() {
			$this->form_validation->set_rules('tgl_reservasi_masuk','Tanggal Masuk','required');
			$this->form_validation->set_rules('tgl_reservasi_keluar','Tanggal Keluar','required');
			$this->form_validation->set_rules('nama_reservasi','Nama','required');
			$this->form_validation->set_rules('telp_reservasi','Telp','required');
			$this->form_validation->set_rules('alamat_reservasi','Alamat','required');
			
		

			if ($this->form_validation->run()==FALSE) {

				$id = $this->input->post('id_kamar');

				$data['tentang_kami'] 	= $this->home_model->TentangKami();
				$data['kamar'] 			= $this->home_model->KamarDetail($id);
				$data['kamar_gambar'] 	= $this->home_model->KamarGambarId($id);
				$data['kelas_kamar'] 	= $this->home_model->KelasKamar();

				$this->template_home->load('template_home','home/data/kamar_detail',$data);

			}
			else {

		
					$in['tgl_reservasi_masuk'] 		= tgl_luar($this->input->post('tgl_reservasi_masuk'));
					$in['tgl_reservasi_keluar'] 	= tgl_luar($this->input->post('tgl_reservasi_keluar'));
					$in['kamar_id'] 				= $this->input->post('id_kamar');
					$in['nama_reservasi'] 			= $this->input->post('nama_reservasi');
					$in['telp_reservasi'] 			= $this->input->post('telp_reservasi');
					$in['alamat_reservasi'] 		= $this->input->post('alamat_reservasi');
					$in['status_reservasi'] 		= 0;
					
							
					$this->db->insert("tbl_reservasi",$in);
							
					$this->session->set_flashdata('berhasil','OK');
					$id = $this->input->post('id_kamar');
					redirect("home/kamar_detail/".$id);
			}
	}
	//Akhir Kamar

	//Awal Galeri

	public function galeri() {

		$data['tentang_kami'] 		= $this->home_model->TentangKami();
		$data['galeri_kategori'] 	= $this->home_model->GaleriKategori();

		$this->template_home->load('template_home','home/data/galeri',$data);

	}

	public function galeri_detail () {

		$id = $this->uri->segment(3);

		$data['tentang_kami'] 	= $this->home_model->TentangKami();
		$data['galeri'] 		= $this->home_model->GaleriDetail($id);
		

		$this->template_home->load('template_home','home/data/galeri_detail',$data);

	}

	//Akhir Galeri
}

