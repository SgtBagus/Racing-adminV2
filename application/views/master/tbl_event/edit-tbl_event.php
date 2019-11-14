

  <!-- Content Wrapper. Contains page content -->

  <div class="content-wrapper">

    <!-- Content Header (Page header) -->

    <section class="content-header">

      <h1>

        Tbl Event

        <small>Edit</small>

      </h1>

      <ol class="breadcrumb">

      <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>

      <li><a href="#">Master</a></li>

      <li class="#">Tbl Event</li>

      <li class="active">Edit</li>

      </ol>

    </section>

    <!-- Main content -->

    <section class="content">

    <form method="POST" action="<?= base_url('master/Tbl_event/update') ?>" id="upload-create" enctype="multipart/form-data">

    <input type="hidden" name="id" value="<?= $tbl_event['id'] ?>">





      <div class="row">

        <div class="col-xs-12">

          <div class="box">

            <!-- /.box-header -->

            <div class="box-header">

              <h5 class="box-title">

                  Edit Tbl Event

              </h5>

            </div>

            <div class="box-body">

                <div class="show_error"></div><div class="form-group">

                      <label for="form-title">Title</label>

                      <input type="text" class="form-control" id="form-title" placeholder="Masukan Title" name="dt[title]" value="<?= $tbl_event['title'] ?>">

                  </div><div class="form-group">

                      <label for="form-tgleventStart">TgleventStart</label>

                      <input type="text" class="form-control" id="form-tgleventStart" placeholder="Masukan TgleventStart" name="dt[tgleventStart]" value="<?= $tbl_event['tgleventStart'] ?>">

                  </div><div class="form-group">

                      <label for="form-tgleventEnd">TgleventEnd</label>

                      <input type="text" class="form-control" id="form-tgleventEnd" placeholder="Masukan TgleventEnd" name="dt[tgleventEnd]" value="<?= $tbl_event['tgleventEnd'] ?>">

                  </div><div class="form-group">

                      <label for="form-phone">Phone</label>

                      <input type="text" class="form-control" id="form-phone" placeholder="Masukan Phone" name="dt[phone]" value="<?= $tbl_event['phone'] ?>">

                  </div><div class="form-group">

                      <label for="form-harga">Harga</label>

                      <input type="text" class="form-control" id="form-harga" placeholder="Masukan Harga" name="dt[harga]" value="<?= $tbl_event['harga'] ?>">

                  </div><div class="form-group">

                      <label for="form-deskripsi">Deskripsi</label>

                      <input type="text" class="form-control" id="form-deskripsi" placeholder="Masukan Deskripsi" name="dt[deskripsi]" value="<?= $tbl_event['deskripsi'] ?>">

                  </div><div class="form-group">

                      <label for="form-kota">Kota</label>

                      <input type="text" class="form-control" id="form-kota" placeholder="Masukan Kota" name="dt[kota]" value="<?= $tbl_event['kota'] ?>">

                  </div><div class="form-group">

                      <label for="form-alamat">Alamat</label>

                      <input type="text" class="form-control" id="form-alamat" placeholder="Masukan Alamat" name="dt[alamat]" value="<?= $tbl_event['alamat'] ?>">

                  </div><div class="form-group">

                      <label for="form-minraider">Minraider</label>

                      <input type="text" class="form-control" id="form-minraider" placeholder="Masukan Minraider" name="dt[minraider]" value="<?= $tbl_event['minraider'] ?>">

                  </div><div class="form-group">

                      <label for="form-maxraider">Maxraider</label>

                      <input type="text" class="form-control" id="form-maxraider" placeholder="Masukan Maxraider" name="dt[maxraider]" value="<?= $tbl_event['maxraider'] ?>">

                  </div><div class="form-group">

                      <label for="form-live_url">Live Url</label>

                      <input type="text" class="form-control" id="form-live_url" placeholder="Masukan Live Url" name="dt[live_url]" value="<?= $tbl_event['live_url'] ?>">

                  </div><div class="form-group">

                      <label for="form-latitude">Latitude</label>

                      <input type="text" class="form-control" id="form-latitude" placeholder="Masukan Latitude" name="dt[latitude]" value="<?= $tbl_event['latitude'] ?>">

                  </div><div class="form-group">

                      <label for="form-longitude">Longitude</label>

                      <input type="text" class="form-control" id="form-longitude" placeholder="Masukan Longitude" name="dt[longitude]" value="<?= $tbl_event['longitude'] ?>">

                  </div><div class="form-group">

                      <label for="form-statusEvent">StatusEvent</label>

                      <input type="text" class="form-control" id="form-statusEvent" placeholder="Masukan StatusEvent" name="dt[statusEvent]" value="<?= $tbl_event['statusEvent'] ?>">

                  </div><div class="form-group">

                      <label for="form-public">Public</label>

                      <input type="text" class="form-control" id="form-public" placeholder="Masukan Public" name="dt[public]" value="<?= $tbl_event['public'] ?>">

                  </div><?php

                  if($file['dir']!=""){

                  $types = explode("/", $file['mime']);

                  if($types[0]=="image"){

                  ?>

                    <img src="<?= base_url($file['dir']) ?>" style="width: 200px" class="img img-thumbnail">

                    <br>

                  <?php }else{ ?>

                    

                    <i class="fa fa-file fa-5x text-danger"></i>

                    <br>

                    <a href="<?= base_url($file['dir']) ?>" target="_blank"><i class="fa fa-download"></i> <?= $file['name'] ?></a>

                    <br>

                  <br>

                <?php } ?>

                <?php } ?><div class="form-group">

                      <label for="form-file">File</label>

                      <input type="file" class="form-control" id="form-file" placeholder="Masukan File" name="file">

                  </div></div>

            <div class="box-footer">

                <button type="submit" class="btn btn-primary btn-send" ><i class="fa fa-save"></i> Save</button>

                <button type="reset" class="btn btn-danger"><i class="fa fa-refresh"></i> Reset</button>

             

            </div>

            <!-- /.box-body -->

          </div>

          <!-- /.box -->



          <!-- /.box -->

        </div>

        <!-- /.col -->

      </div>

      <!-- /.row -->

      </form>



    </section>

    <!-- /.content -->

  </div>

  <!-- /.content-wrapper -->

  <script type="text/javascript">

      $("#upload-create").submit(function(){

            var form = $(this);

            var mydata = new FormData(this);

            $.ajax({

                type: "POST",

                url: form.attr("action"),

                data: mydata,

                cache: false,

                contentType: false,

                processData: false,

                beforeSend : function(){

                    $(".btn-send").addClass("disabled").html("<i class='la la-spinner la-spin'></i>  Processing...").attr('disabled',true);

                    form.find(".show_error").slideUp().html("");

                },

                success: function(response, textStatus, xhr) {

                    // alert(mydata);

                   var str = response;

                    if (str.indexOf("success") != -1){

                        form.find(".show_error").hide().html(response).slideDown("fast");

                        setTimeout(function(){ 

                           window.location.href = "<?= base_url('master/Tbl_event') ?>";

                        }, 1000);

                        $(".btn-send").removeClass("disabled").html('<i class="fa fa-save"></i> Save').attr('disabled',false);





                    }else{

                        form.find(".show_error").hide().html(response).slideDown("fast");

                        $(".btn-send").removeClass("disabled").html('<i class="fa fa-save"></i> Save').attr('disabled',false);

                        

                    }

                },

                error: function(xhr, textStatus, errorThrown) {

                  console.log(xhr);

                    $(".btn-send").removeClass("disabled").html('<i class="fa fa-save"></i> Save').attr('disabled',false);

                    form.find(".show_error").hide().html(xhr).slideDown("fast");



                }

            });

            return false;

    

        });

  </script>