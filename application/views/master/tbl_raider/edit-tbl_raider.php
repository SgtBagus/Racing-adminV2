

  <!-- Content Wrapper. Contains page content -->

  <div class="content-wrapper">

    <!-- Content Header (Page header) -->

    <section class="content-header">

      <h1>

        Tbl Raider

        <small>Edit</small>

      </h1>

      <ol class="breadcrumb">

      <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>

      <li><a href="#">Master</a></li>

      <li class="#">Tbl Raider</li>

      <li class="active">Edit</li>

      </ol>

    </section>

    <!-- Main content -->

    <section class="content">

    <form method="POST" action="<?= base_url('master/Tbl_raider/update') ?>" id="upload-create" enctype="multipart/form-data">

    <input type="hidden" name="id" value="<?= $tbl_raider['id'] ?>">





      <div class="row">

        <div class="col-xs-12">

          <div class="box">

            <!-- /.box-header -->

            <div class="box-header">

              <h5 class="box-title">

                  Edit Tbl Raider

              </h5>

            </div>

            <div class="box-body">

                <div class="show_error"></div><div class="form-group">

                      <label for="form-team_id">Team Id</label>

                      <input type="text" class="form-control" id="form-team_id" placeholder="Masukan Team Id" name="dt[team_id]" value="<?= $tbl_raider['team_id'] ?>">

                  </div><div class="form-group">

                      <label for="form-name">Name</label>

                      <input type="text" class="form-control" id="form-name" placeholder="Masukan Name" name="dt[name]" value="<?= $tbl_raider['name'] ?>">

                  </div><div class="form-group">

                      <label for="form-alamat">Alamat</label>

                      <input type="text" class="form-control" id="form-alamat" placeholder="Masukan Alamat" name="dt[alamat]" value="<?= $tbl_raider['alamat'] ?>">

                  </div><div class="form-group">

                      <label for="form-kota">Kota</label>

                      <input type="text" class="form-control" id="form-kota" placeholder="Masukan Kota" name="dt[kota]" value="<?= $tbl_raider['kota'] ?>">

                  </div><div class="form-group">

                      <label for="form-tgllahir">Tgllahir</label>

                      <input type="text" class="form-control" id="form-tgllahir" placeholder="Masukan Tgllahir" name="dt[tgllahir]" value="<?= $tbl_raider['tgllahir'] ?>">

                  </div><div class="form-group">

                      <label for="form-nostart">Nostart</label>

                      <input type="text" class="form-control" id="form-nostart" placeholder="Masukan Nostart" name="dt[nostart]" value="<?= $tbl_raider['nostart'] ?>">

                  </div><div class="form-group">

                      <label for="form-namajersey">Namajersey</label>

                      <input type="text" class="form-control" id="form-namajersey" placeholder="Masukan Namajersey" name="dt[namajersey]" value="<?= $tbl_raider['namajersey'] ?>">

                  </div><div class="form-group">

                      <label for="form-ukuran_jersey">Ukuran Jersey</label>

                      <input type="text" class="form-control" id="form-ukuran_jersey" placeholder="Masukan Ukuran Jersey" name="dt[ukuran_jersey]" value="<?= $tbl_raider['ukuran_jersey'] ?>">

                  </div><div class="form-group">

                      <label for="form-motor_id">Motor Id</label>

                      <input type="text" class="form-control" id="form-motor_id" placeholder="Masukan Motor Id" name="dt[motor_id]" value="<?= $tbl_raider['motor_id'] ?>">

                  </div><div class="form-group">

                      <label for="form-nowa">Nowa</label>

                      <input type="text" class="form-control" id="form-nowa" placeholder="Masukan Nowa" name="dt[nowa]" value="<?= $tbl_raider['nowa'] ?>">

                  </div><div class="form-group">

                      <label for="form-goldarah">Goldarah</label>

                      <input type="text" class="form-control" id="form-goldarah" placeholder="Masukan Goldarah" name="dt[goldarah]" value="<?= $tbl_raider['goldarah'] ?>">

                  </div><div class="form-group">

                      <label for="form-verificacion">Verificacion</label>

                      <input type="text" class="form-control" id="form-verificacion" placeholder="Masukan Verificacion" name="dt[verificacion]" value="<?= $tbl_raider['verificacion'] ?>">

                  </div><div class="form-group">

                      <label for="form-email">Email</label>

                      <input type="text" class="form-control" id="form-email" placeholder="Masukan Email" name="dt[email]" value="<?= $tbl_raider['email'] ?>">

                  </div><div class="form-group">

    <label for="form-password">Password</label>

    <input type="text" class="form-control" id="form-password" placeholder="Masukan Password" name="dt[password]">

</div><div class="form-group">

                      <label for="form-eventikut">Eventikut</label>

                      <input type="text" class="form-control" id="form-eventikut" placeholder="Masukan Eventikut" name="dt[eventikut]" value="<?= $tbl_raider['eventikut'] ?>">

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

                           window.location.href = "<?= base_url('master/Tbl_raider') ?>";

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