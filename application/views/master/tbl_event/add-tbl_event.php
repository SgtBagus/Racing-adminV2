<div class="content-wrapper">
  <section class="content-header">
    <h1>Event</h1>
    <ol class="breadcrumb">
      <li><a href="<?= base_url() ?>"><i class="fa fa-dashboard"></i> Home</a></li>
      <li class="active">Event</li>
    </ol>
  </section>
  <section class="content">
    <div class="row">
      <div class="col-md-12">
        <div class="box">
          <div class="box-header">
            <h5 class="box-title">
              Tambah Event
            </h5>
          </div>
          <form method="POST" action="<?= base_url('master/Tbl_event/store') ?>" id="upload-create" enctype="multipart/form-data" class="form-horizontal">
            <div class="box-body">
              <div class="show_error"></div>
              <div class="form-group">
                <label for="inputEmail3" class="col-sm-3 control-label">Judul Event*</label>
                <div class="col-sm-9">
                  <input type="text" class="form-control" placeholder="Masukan Judul Event ..." name="dt[title]">
                </div>
              </div>
              <div class="form-group">
                <label for="inputEmail3" class="col-sm-3 control-label">Gambar Event</label>
                <div class="col-sm-9">
                  <div class="row">
                    <div class="col-md-5 col-xs-12">
                      <img src="<?= base_url('webfiles/event/event_default.jpg') ?>" alt="User Image" width="100%" height="250px" id="preview_image">
                    </div>
                    <div class="col-md-7 col-xs-12">
                      <button type="button" class="btn btn-sm btn-primary" id="btnFile"><i class="fa fa-file"></i> Browser File</button>
                      <input type="file" class="file" id="imageFile" style="display: none;" name="file" accept="image/x-png,image/jpeg,image/jpg" />
                      <p class="help-block">Gambar yang diupload disarankan memiliki format PNG, JPG, atau JPEG</p>
                    </div>
                  </div>
                </div>
              </div>
              <div class="form-group">
                <label for="inputEmail3" class="col-sm-3 control-label">Tanggal Event*</label>
                <div class="col-sm-4">
                  <div class="input-group">
                    <div class="input-group-addon">
                      Dimulai
                    </div>
                    <input type="text" name="dt[tgleventStart]" class="form-control tgl" placeholder="Masukan Tanggal Event">
                  </div>
                </div>
                <div class="col-sm-5">
                  <div class="input-group">
                    <div class="input-group-addon">
                      Berakhir
                    </div>
                    <input type="text" name="dt[tgleventEnd]" class="form-control tgl" placeholder="Masukan Tanggal Event">
                  </div>
                </div>
              </div>
              <div class="form-group">
                <label for="inputEmail3" class="col-sm-3 control-label">Harga Pendaftaran</label>
                <div class="col-sm-9">
                  <input type="number" name="dt[harga]" class="form-control">
                </div>
              </div>
              <div class="form-group">
                <label for="inputEmail3" class="col-sm-3 control-label">File Peraturan Event</label>
                <div class="col-sm-9">
                  <input type="file" class="form-control" name="rule">
                </div>
              </div>
              <div class="form-group">
                <label for="inputEmail3" class="col-sm-3 control-label">Deskripsi </label>
                <div class="col-sm-9">
                  <textarea class="textarea form-control" name="dt[deskripsi]"></textarea>
                </div>
              </div>
              <div class="form-group">
                <label for="inputEmail3" class="col-sm-3 control-label">Kota Event*</label>
                <div class="col-sm-9">
                  <input type="text" class="form-control" placeholder="Masukan Kota Event ..." name="dt[kota]">
                </div>
              </div>
              <div class="form-group">
                <label for="inputEmail3" class="col-sm-3 control-label">Pendaftaran Event</label>
                <div class="col-sm-9">
                  <select class="form-control select2" name="dt[tipe_pendaftaran]" id="pendaftaranEvent">
                    <option value="Individu">Individu</option>
                    <option value="Team">Team</option>
                  </select>
                </div>
              </div>
              <div class="form-group" id="RaiderMax">
                <label for="inputEmail3" class="col-sm-3 control-label">Dalam Satu Team</label>
                <div class="col-sm-4">
                  <div class="input-group">
                    <div class="input-group-addon">
                      Minim Raider
                    </div>
                    <input type="number" name="dt[minraider]" class="form-control" placeholder="Masukan Minim Raider">
                  </div>
                </div>
                <div class="col-sm-5">
                  <div class="input-group">
                    <div class="input-group-addon">
                      Maximal Raider
                    </div>
                    <input type="number" name="dt[maxraider]" class="form-control" placeholder="Masukan Minim Raider">
                  </div>
                </div>
              </div>
              <div class="form-group">
                <label for="inputEmail3" class="col-sm-3 control-label">Link Event</label>
                <div class="col-sm-9">
                  <input type="text" class="form-control" placeholder="Masukan Url Link Event ..." name="dt[live_url]">
                </div>
              </div>
              <div class="form-group">
                <label for="inputEmail3" class="col-sm-3 control-label">Status Event</label>
                <div class="col-sm-9">
                  <select class="form-control select2" name="dt[statusEvent]" style="width: 100%">
                    <option value="DIBUKA">DIBUKA</option>
                    <option value="DITUTUP">DITUTUP</option>
                    <option value="BERJALAN">BERJALAN</option>
                    <option value="COMMINGSOON">COMMING SOON</option>
                  </select>
                </div>
              </div>
              <div class="form-group">
                <label for="inputEmail3" class="col-sm-3 control-label">Tanggal Penutupan Pendaftaran</label>
                <div class="col-sm-9">
                  <input type="text" name="dt[TglCloseDaftar]" class="form-control tgl" placeholder="Masukan Tanggal Penutupan Pendaftaran">
                </div>
              </div>
              <div class="form-group">
                <label for="inputEmail3" class="col-sm-3 control-label">Tipe Event</label>
                <div class="col-sm-9">
                  <select class="form-control select2" name="dt[tipeEvent]" style="width: 100%">
                    <option value="UTAMA">UTAMA</option>
                    <option value="TIDAKUTAMA">TIDAK UTAMA</option>
                  </select>
                </div>
              </div>
              <div class="show_error"></div>
            </div>
            <div class="box-footer" align="right">
              <a href="<?= base_url('event') ?> ">
                <button type="button" class="btn btn-info"><i class="fa fa-stars"></i> Data Event</button>
              </a>
              <button type="submit" class="btn btn-primary btn-send"><i class="fa fa-save"></i> Save</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </section>
</div>
<script type="text/javascript">
  $('#RaiderMax').hide();
  $('#pendaftaranEvent').change(function() {

    if ($('#pendaftaranEvent').val() == "Individu") {
      $('#RaiderMax').hide();
    } else {
      $('#RaiderMax').show();
    }
  })

  $(function() {

    $("#upload-create").submit(function() {
      var form = $(this);
      var mydata = new FormData(this);
      $.ajax({
        type: "POST",
        url: form.attr("action"),
        data: mydata,
        cache: false,
        contentType: false,
        processData: false,
        beforeSend: function() {
          $(".btn-send").addClass("disabled").html("<i class='la la-spinner la-spin'></i>  Processing...").attr('disabled', true);
          form.find(".show_error").slideUp().html("");
        },

        success: function(response, textStatus, xhr) {
          var str = response;
          if (str.indexOf("success") != -1) {
            form.find(".show_error").hide().html(response).slideDown("fast");
            setTimeout(function() {
              window.location.href = "<?= base_url('master/Tbl_event') ?>";
            }, 1000);

            $(".btn-send").removeClass("disabled").html('<i class="fa fa-save"></i> Save').attr('disabled', false);
          } else {
            form.find(".show_error").hide().html(response).slideDown("fast");
            $(".btn-send").removeClass("disabled").html('<i class="fa fa-save"></i> Save').attr('disabled', false);
          }
        },
        error: function(xhr, textStatus, errorThrown) {
          console.log(xhr);
          $(".btn-send").removeClass("disabled").html('<i class="fa fa-save"></i> Save').attr('disabled', false);
          form.find(".show_error").hide().html(xhr).slideDown("fast");
        }
      });
      return false;
    });
  });

  $('.textarea').wysihtml5();
</script>