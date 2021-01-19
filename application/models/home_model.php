<?php

class home_model extends CI_Model {


	//Awal tentang Kami
	function TentangKami() {
		return $this->db->query("select * from tbl_tentang_hotel");
	}
	//Akhir Tentang Kami

	//Awal Kamar
	function Kamar() {
		return $this->db->query("select a.*,b.*,c.*
			from tbl_kamar a join tbl_kelas_kamar b on a.kelas_kamar_id=b.id_kelas_kamar
			join tbl_kamar_gambar c on a.id_kamar=c.kamar_id
			group by c.kamar_id
			order by a.id_kamar desc
			limit 0,15");
	}

	function KamarAll () {

		return $this->db->query("select a.*,b.*,c.*
			from tbl_kamar a join tbl_kelas_kamar b on a.kelas_kamar_id=b.id_kelas_kamar
			join tbl_kamar_gambar c on a.id_kamar=c.kamar_id
			group by c.kamar_id
			order by a.id_kamar desc");

	}

	function KamarKelasKamar($id) {

		return $this->db->query("select a.*,b.*,c.*
			from tbl_kamar a join tbl_kelas_kamar b on a.kelas_kamar_id=b.id_kelas_kamar
			join tbl_kamar_gambar c on a.id_kamar=c.kamar_id
			where b.id_kelas_kamar='$id'
			group by c.kamar_id
			order by a.id_kamar desc");

	}

	function KamarDetail($id) {
		return $this->db->query("select a.*,b.* from tbl_kamar a
		join tbl_kelas_kamar b on a.kelas_kamar_id=b.id_kelas_kamar
		where a.id_kamar='$id' ");
	}

	function KamarGambarId($id) {
		return $this->db->query("select * from tbl_kamar_gambar where kamar_id='$id'");
	}
	//Akhir Kamar

	//Awal Kelas Kamar
	function KelasKamar () {
		return $this->db->query("select * from tbl_kelas_kamar order by id_kelas_kamar");
	}
	//Akhir Kelas Kamar


	//Awal Galeri
	function GaleriKategori() {
		return $this->db->query("select a.*,b.*
			from tbl_kategori_galeri a join tbl_galeri b on a.id_kategori_galeri=b.kategori_galeri_id
			group by a.id_kategori_galeri
			order by a.id_kategori_galeri asc
			");
	}

	function GaleriDetail($id) {
		return $this->db->query("select a.*,b.* from tbl_galeri a
		join tbl_kategori_galeri b on a.kategori_galeri_id=b.id_kategori_galeri
		where a.kategori_galeri_id='$id' ");
	}
	//Akhir galeri


}