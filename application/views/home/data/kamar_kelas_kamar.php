<div class="inside-banner">
  <div class="container"> 
    
    <h2>Kamar</h2>
</div>
</div>
<!-- banner -->


<div class="container">
<div class="properties-listing spacer">

<div class="row">
<div class="col-lg-3 col-sm-4 ">

  <div class="search-form"><h4><span class="glyphicon glyphicon-search"></span> Search for</h4>
   
  
          <?php echo form_open('home/kamar_kelas_kamar');?>
          <div class="row">
          <div class="col-lg-12">
              <select class="form-control" name="kelas_kamar_id">
                <option value="">Pilih Kelas Kamar</option>
                <?php
                foreach ($kelas_kamar->result_array() as $value) { ?>
                    <option value="<?php echo $value['id_kelas_kamar'];?>"><?php echo $value['nama_kelas_kamar'];?></option>
                <?php
                }
                ?>
               
              </select>
              </div>
          </div>
          <button class="btn btn-primary">Find Now</button>

          <?php echo form_close();?>

  </div>





</div>

<div class="col-lg-9 col-sm-8">

<div class="row">

        
     <?php
      foreach ($kamar->result_array() as $value) { ?>
     <!-- properties -->
      <div class="col-lg-4 col-sm-6">

        
        <div class="properties">
          <div class="image-holder"><img src="<?php echo base_url();?>images/kamar_gambar/<?php echo $value['nama_kamar_gambar'];?>" class="img-responsive" alt="properties"/>
            <?php
            if ($value['status_kamar']=="0") { ?>
            <div class="status sold">Avaliable</div>

            <?php
            }
            else { ?>

            <div class="status new">No Avaliable</div>
            <?php
            }
            ?>
          </div>
          <h4><a href="<?php echo base_url();?>home/kamar_detail/<?php echo $value['id_kamar'];?>"><?php echo $value['nomer_kamar'];?></a></h4>
          <p class="price">Harga: <?php echo rupiah($value['harga_kamar']);?></p>
          <div class="listing-detail"><?php echo $value['nama_kelas_kamar'];?>   </div>
          <a class="btn btn-primary" href="<?php echo base_url();?>home/kamar_detail/<?php echo $value['id_kamar'];?>">selengkapnya</a>
        </div>


      </div>
      <!-- properties -->

      <?php
      }
      ?>

    
      <div class="center">

</div>

</div>
</div>
</div>
</div>
</div>