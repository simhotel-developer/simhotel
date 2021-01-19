<div class="">
    

            <div id="slider" class="sl-slider-wrapper">

        <div class="sl-slider">
        
          <div class="sl-slide" data-orientation="horizontal" data-slice1-rotation="-25" data-slice2-rotation="-25" data-slice1-scale="2" data-slice2-scale="2">
            <div class="sl-slide-inner">
              <div class="bg-img bg-img-1"></div>
              <h2><a href="#">Hotel Elegan Nuansa Moderen</a></h2>
              <blockquote>              
              <p>Hotel yang sangat elegan dan mewah dengan nuansa moderen membuat anda beristirahat dengan nyaman</p>
              
              </blockquote>
            </div>
          </div>
          
          <div class="sl-slide" data-orientation="vertical" data-slice1-rotation="10" data-slice2-rotation="-15" data-slice1-scale="1.5" data-slice2-scale="1.5">
            <div class="sl-slide-inner">
              <div class="bg-img bg-img-2"></div>
              <h2><a href="#">Ruang Meeting</a></h2>
              <blockquote>              
              <p>Memiliki ruang meeting yang bisa anda gunakan untuk bisnis anda dalam pertemuan atau pembahasan bisnis anda.</p>

              </blockquote>
            </div>
          </div>
          
          <div class="sl-slide" data-orientation="horizontal" data-slice1-rotation="3" data-slice2-rotation="3" data-slice1-scale="2" data-slice2-scale="1">
            <div class="sl-slide-inner">
              <div class="bg-img bg-img-3"></div>
              <h2><a href="#">Ruang Meeting Santai</a></h2>
              <blockquote>              
             
              <p>Dilengkapi dengan ruang meeting yang santai dengan nuansa mewah dan elegan.</p>
          
              </blockquote>
            </div>
          </div>
          
          <div class="sl-slide" data-orientation="vertical" data-slice1-rotation="-5" data-slice2-rotation="25" data-slice1-scale="2" data-slice2-scale="1">
            <div class="sl-slide-inner">
              <div class="bg-img bg-img-4"></div>
              <h2><a href="#">2 Tempat Tidur dalam 1 Kamar</a></h2>
              <blockquote>              
              
              <p>Memiliki fasilitas ruang tempat tidur yang nyaman dan mewah, sangat cocok untuk menghilangkan rasa penat Anda.</p>
              </blockquote>
            </div>
          </div>
          
          <div class="sl-slide" data-orientation="horizontal" data-slice1-rotation="-5" data-slice2-rotation="10" data-slice1-scale="2" data-slice2-scale="1">
            <div class="sl-slide-inner">
              <div class="bg-img bg-img-5"></div>
              <h2><a href="#">Kamar Mandi</a></h2>
              <blockquote>              
              <p>Dilengkapi dengan kamar mandi yang sangat nyaman dan menyegarkan.</p>

              </blockquote>
            </div>
          </div>
        </div><!-- /sl-slider -->



        <nav id="nav-dots" class="nav-dots">
          <span class="nav-dot-current"></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
        </nav>

      </div><!-- /slider-wrapper -->
</div>


<!-- banner -->
<div class="container">
  <div class="properties-listing spacer"> <a href="<?php echo base_url();?>home/kamar" class="pull-right viewall">Lihat Semua Kamar</a>
    <h2>Daftar Kamar</h2>
    <div id="owl-example" class="owl-carousel">
      
    	<?php
    	foreach ($kamar->result_array() as $value) { ?>
    		
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
    	<?php
    	}
    	?>
      
     
      
    </div>
  </div>
  
</div>