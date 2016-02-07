<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/*
	Transkrip Model - source code oleh Gede Lumbung
	lihat tutorial menarik lainnya di http://gedelumbung.com
	Powered by CodeIgniter 2.1
*/

class Transkrip_Model extends CI_Model 
{

	public function baca($tabel)
	{
		$q = $this->db->get($tabel);
		return $q;
	}

	public function baca_siswa($offset,$limit)
	{
		$this->db->join('mhsw', 'mhsw.Nama = krs.MhswID');
		$this->db->join('prodi', 'krs.Nama = mhsw.MhswID');
		$this->db->join('dosen', 'dosen.Nama = dosen.MhswID');
		$q = $this->db->get("krs",$limit,$offset);
		return $q;
	}

	public function baca_detail($tabel,$seleksi)
	{
		$q = $this->db->get_where($tabel,$seleksi);
		return $q;
	}
	/*
	public function nama_mhs($nama_mhs)
	{
		$q = $this->db->join('mhsw', 'Nama = MhswID')
					  ->join('prodi', 'Nama = MhswID')
					  ->join('dosen', 'Nama = MhswID');
		return $q;
	}
	*/
	public function transkrip_nilai($MhswID){
		$q = $this->db->query("
			SELECT k.MhswID, k.JadwalID, k.KRSID, k.MKKode, k.MKID, k.TahunID, k.Nama, MAX(k.NilaiAkhir) AS MaxNA, k.BobotNilai, k.GradeNilai, k.SKS, k.TahunID, k.Tinggi, (k.SKS * k.BobotNilai) AS NxB, k.IsiKuisioner

			FROM krs k
			WHERE NilaiAkhir = (SELECT MAX(NilaiAkhir) from krs as kr WHERE kr.MhswID = '$MhswID' AND kr.MKKode = k.MKKode AND kr.SKS = k.SKS)
			AND MhswID = '$MhswID'
			AND NA = 'N'
			
			AND k.GradeNilai != '-'
			GROUP BY MKKode, SKS, NilaiAkhir
			ORDER BY MKKode, GradeNilai ASC
			");
		$nilai = $q->result_array();
		$hasil =array();
		foreach($nilai as $v)
		{
			$hasil[$v['MKKode']] = $v;
		}
		return $nilai;
	}

	public function info_mhsw($MhswID)
	{
			$this->db->join('prodi', 'prodi.ProdiID= mhsw.ProdiID')
				 	 ->join('dosen', 'dosen.Login= mhsw.PenasehatAkademik','left')
				 ->select('mhsw.MhswID nim, mhsw.ProdiID ProdiID, mhsw.Nama Nama_mahasiswa, prodi.Nama Nama_prodi, prodi.TotalSKS TotalSKS,  prodi.NamaSesi NamaSesi, concat(dosen.Nama, ",",dosen.Gelar) as Nama_dosen', false);
   		    $this->db->where('MhswID',$MhswID);
		
		
		return $this->db->get('mhsw')->row();
	}
	
	public function pejabat($ProdiID){
		$this->db->select('*');
	
		$Jabatan = ('Kaprodi-'.$ProdiID);
		$this->db->where('KodeJabatan', $Jabatan);
		
		$data = $this->db->get('pejabat')->row();
	
		return $data;
	}
	
	public function popup_cetak(){
		$atts_cetak = array(
              'width'      => '800',
              'height'     => 'auto',
              'scrollbars' => 'yes',
              'status'     => 'yes',
              'resizable'  => 'yes',
            );
		return $atts_cetak;
	}
	
	public function total_sks($ProdiID){
		$this->db->select('*');
		$this->db->where('ProdiID',$ProdiID);
		$data = $this->db->get('prodi')->row();
		return $data;
	}
}
