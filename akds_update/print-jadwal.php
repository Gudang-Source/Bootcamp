<?php 
session_start();
error_reporting(0);
include "config/koneksi.php"; 
include "config/fungsi_indotgl.php"; 
?>
<html>
<head>
<title>Data Jadwal Pelajaran Kelas <?php echo $_GET[kelas]; ?></title>
<link rel="stylesheet" href="bootstrap/css/printer.css">
</head>
<body onload="window.print()">
<?php
echo "<h2><center>Data Jadwal Pelajaran Kelas $_GET[kelas] Tahun $_GET[tahun]</center></h2>
<table width='100%' id='tablemodul1'>
    <thead>
      <tr>
        <th style='width:20px'>No</th>
        <th>Jadwal Pelajaran</th>
        <th>Kelas</th>
        <th>Guru</th>
        <th>Hari</th>
        <th>Mulai</th>
        <th>Selesai</th>
        <th>Ruangan</th>
      </tr>
    </thead>
    <tbody>";

                    if (isset($_GET[kelas]) AND isset($_GET[tahun])){
                      $tampil = mysql_query("SELECT a.*, e.nama_kelas, b.namamatapelajaran, b.kode_kurikulum, b.kode_pelajaran, c.nama_guru, d.nama_ruangan FROM rb_jadwal_pelajaran a 
                                            JOIN rb_mata_pelajaran b ON a.kode_pelajaran=b.kode_pelajaran
                                              JOIN rb_guru c ON a.nip=c.nip 
                                                JOIN rb_ruangan d ON a.kode_ruangan=d.kode_ruangan
                                                  JOIN rb_kelas e ON a.kode_kelas=e.kode_kelas 
                                                  where a.kode_kelas='$_GET[kelas]' AND 
                                                    a.id_tahun_akademik='$_GET[tahun]' AND 
                                                      b.kode_kurikulum='$kurikulum[kode_kurikulum]' ORDER BY a.hari DESC");
  }
  $no = 1;
  while($r=mysql_fetch_array($tampil)){
  echo "<tr><td>$no</td>
            <td>$r[namamatapelajaran]</td>
            <td>$r[nama_kelas]</td>
            <td>$r[nama_guru]</td>
            <td>$r[hari]</td>
            <td>$r[jam_mulai]</td>
            <td>$r[jam_selesai]</td>
            <td>$r[nama_ruangan]</td>
        </tr>";
    $no++;
  }
?>
  </tbody>
</table>
</body>
</html>


<table border=0 width=100%>
  <tr>
    <td width="260" align="left">Orang Tua / Wali</td>
    <td width="520"align="center">Mengetahui <br> Kepala SMA Negeri 1 Padang</td>
    <td width="260" align="left">Padang, <?php echo tgl_raport(date("Y-m-d")); ?> <br> Wali Kelas</td>
  </tr>
  <tr>
    <td align="left"><br /><br /><br /><br /><br />
      ................................... <br /><br /></td>

    <td align="center" valign="top"><br /><br /><br /><br /><br />
      <b>DRS. AMRI JUNA, M.Pd<br>
      NIP : 196209051987031007</b>
    </td>

    <td align="left" valign="top"><br /><br /><br /><br /><br />
      <b><?php echo $s[walikelas]; ?><br />
      NIP : <?php echo $s[nip]; ?></b>
    </td>
  </tr>
</table> 
</body>