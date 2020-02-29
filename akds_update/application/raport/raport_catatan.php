<?php 
    if (isset($_POST['simpan'])){
        $juml = mysql_num_rows(mysql_query("SELECT * FROM rb_siswa where kode_kelas='$_GET[kelas]'"));
        for ($ia=1; $ia<=$juml; $ia++){
          $c   = $_POST['c'.$ia];
          $nisn   = $_POST['nisn'.$ia];
          if ($c != ''){
            $cek = mysql_num_rows(mysql_query("SELECT * FROM rb_nilai_catatan_wakel where id_tahun_akademik='$_GET[tahun]' AND nisn='$nisn'"));
            if ($cek >= '1'){
              mysql_query("UPDATE rb_nilai_catatan_wakel SET deskripsi='$c' where id_tahun_akademik='$_GET[tahun]' AND nisn='$nisn'");
            }else{
              mysql_query("INSERT INTO rb_nilai_catatan_wakel VALUES('','$_GET[tahun]','$nisn','$c','$_SESSION[id]','".date('Y-m-d H:i:s')."')");
            }
          }
        }
        echo "<script>document.location='index.php?view=catatan&tahun=$_GET[tahun]&kelas=$_GET[kelas]';</script>";
    }

    echo "<div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Input Catatan Wali Kelas</b></h3>
                  <form style='margin-right:5px; margin-top:0px' class='pull-right' action='' method='GET'>
                    <input type='hidden' name='view' value='catatan'>
                    <select name='tahun' style='padding:4px'>";
        echo "<option value=''>- Pilih Tahun Akademik -</option>";
                            $tahun = mysql_query("SELECT * FROM rb_tahun_akademik");
                            while ($k = mysql_fetch_array($tahun)){
                              if ($_GET[tahun]==$k[id_tahun_akademik]){
                                echo "<option value='$k[id_tahun_akademik]' selected>$k[nama_tahun]</option>";
                              }else{
                                echo "<option value='$k[id_tahun_akademik]'>$k[nama_tahun]</option>";
                              }
                            }
echo "</select>
<select name='kelas' style='padding:4px'>";
        echo "<option value=''>- Filter Kelas -</option>";
                            $kelas = mysql_query("SELECT * FROM rb_kelas");
                            while ($k = mysql_fetch_array($kelas)){
                              if ($_GET[kelas]==$k[kode_kelas]){
                                echo "<option value='$k[kode_kelas]' selected>$k[kode_kelas] - $k[nama_kelas]</option>";
                              }else{
                                echo "<option value='$k[kode_kelas]'>$k[kode_kelas] - $k[nama_kelas]</option>";
                              }
                            }
echo "</select>
                    <input type='submit' style='margin-top:-4px' class='btn btn-info btn-sm' value='Lihat'>
                  </form>
                </div>
            
        <div class='box-body'>";
        if ($_GET['kelas'] != '' AND $_GET['tahun'] != ''){
          $d = mysql_fetch_array(mysql_query("SELECT * FROM rb_kelas where kode_kelas='$_GET[kelas]'"));
              echo "<div class='col-md-12'>
              <table class='table table-condensed table-hover'>
                  <tbody>
                    <input type='hidden' name='id' value='$s[kodekelas]'>
                    <tr><th width='120px' scope='row'>Kode Kelas</th> <td>$d[kode_kelas]</td></tr>
                    <tr><th scope='row'>Nama Kelas</th>               <td>$d[nama_kelas]</td></tr>
                  </tbody>
              </table>
              </div>

          <div class='panel-body'>
              <div class='col-md-12'>
                            <form action='index.php?view=catatan&tahun=$_GET[tahun]&kelas=$_GET[kelas]' method='POST'>
                            <input type='hidden' value='spiritual' name='status'>
                            <table class='table table-bordered table-striped'>
                                <tr>
                                  <th style='border:1px solid #e3e3e3' width='30px'>No</th>
                                  <th style='border:1px solid #e3e3e3' width='80px'>NISN</th>
                                  <th style='border:1px solid #e3e3e3' width='190px'>Nama Lengkap</th>
                                  <th style='border:1px solid #e3e3e3'><center>Catatan Wali Kelas</center></th>
                                </tr>
                              <tbody>";
                              $no = 1;
                              $tampil = mysql_query("SELECT * FROM rb_siswa a LEFT JOIN rb_kelas b ON a.kode_kelas=b.kode_kelas 
                                              LEFT JOIN rb_jenis_kelamin c ON a.id_jenis_kelamin=c.id_jenis_kelamin 
                                                LEFT JOIN rb_jurusan d ON b.kode_jurusan=d.kode_jurusan 
                                                  where a.kode_kelas='$_GET[kelas]' ORDER BY a.id_siswa");
                              while($r=mysql_fetch_array($tampil)){
                                $des = mysql_fetch_array(mysql_query("SELECT deskripsi FROM rb_nilai_catatan_wakel where id_tahun_akademik='$_GET[tahun]' AND nisn='$r[nisn]'"));
                                  echo "<tr>
                                        <td>$no</td>
                                        <td>$r[nisn]</td>
                                        <td>$r[nama]</td>
                                        <input type='hidden' name='nisn".$no."' value='$r[nisn]'>
                                        <td align=center><textarea name='c".$no."' class='form-control' style='width:100%; height:32px; color:blue' placeholder=' Tuliskan Deskripsi...'>$des[deskripsi]</textarea></td>
                                      </tr>";
                                  $no++;
                                }

                                echo "</tbody>
                            </table>
                            </div>
                            <div style='clear:both'></div>
                                <div class='box-footer'>
                                  <button type='submit' name='simpan' class='btn btn-info'>Simpan</button>
                                  <button type='reset' class='btn btn-default pull-right'>Cancel</button>
                                </div>
                            </form>
                  </div>
              </div>";
        }else{
          echo "<center style='padding:60px; color:red'>Silahkan Memilih Tahun akademik dan Kelas Terlebih dahulu...</center>";
        }
          echo "</div>
        </div>
      </div>";
?>