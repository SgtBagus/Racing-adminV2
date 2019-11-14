<?php 

if($this->session->userdata('session_sop')=="") {
  redirect('login/');
}
?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title><?= TITLE_APPLICATION  ?></title>
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <link rel="stylesheet" href="<?= base_url('assets/') ?>bower_components/bootstrap/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="<?= base_url('assets/') ?>bower_components/select2/dist/css/select2.min.css">
  <link rel="stylesheet" href="<?= base_url('assets/') ?>bower_components/font-awesome/css/font-awesome.min.css">
  <link rel="stylesheet" href="<?= base_url('assets/') ?>bower_components/Ionicons/css/ionicons.min.css">
  <link rel="stylesheet" href="<?= base_url('assets/') ?>fonts/material-icons/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="<?= base_url('assets/') ?>bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="<?= base_url('assets/') ?>dist/css/AdminLTE.min.css">
  <link rel="stylesheet" href="<?= base_url('assets/') ?>dist/css/skins/_all-skins.min.css">
  <link rel="stylesheet" href="<?= base_url('assets/') ?>bower_components/morris.js/morris.css">
  <link rel="stylesheet" href="<?= base_url('assets/') ?>bower_components/jvectormap/jquery-jvectormap.css">
  <link rel="stylesheet" href="<?= base_url('assets/') ?>bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
  <link rel="stylesheet" href="<?= base_url('assets/') ?>bower_components/bootstrap-daterangepicker/daterangepicker.css">
  <link rel="stylesheet" href="<?= base_url('assets/') ?>plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">

  <link rel="stylesheet" href="<?= base_url('assets/') ?>plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
  <link rel="stylesheet" href="https://maxcdn.icons8.com/fonts/line-awesome/1.1/css/line-awesome-font-awesome.min.css">

  <link rel="icon" href="<?= base_url('assets/') ?>logoku.jpg">
  <link rel="stylesheet" href="<?= base_url('assets/') ?>dist/css/main.css">
  <script src="<?= base_url('assets/') ?>bower_components/jquery/dist/jquery.min.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script src="<?= base_url('assets/') ?>bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
  <script src="<?= base_url('assets/') ?>bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.min.js"></script>
  <script src="<?= base_url('assets/') ?>bower_components/chart.js/Chart.js"></script>
  <style type="text/css">
    img {
      object-fit: cover;
      display: inline;
    }
  </style>
  <script type="text/javascript">
    $.fn.dataTableExt.oApi.fnPagingInfo = function(oSettings) {
      return {
        "iStart": oSettings._iDisplayStart,
        "iEnd": oSettings.fnDisplayEnd(),
        "iLength": oSettings._iDisplayLength,
        "iTotal": oSettings.fnRecordsTotal(),
        "iFilteredTotal": oSettings.fnRecordsDisplay(),
        "iPage": Math.ceil(oSettings._iDisplayStart / oSettings._iDisplayLength),
        "iTotalPages": Math.ceil(oSettings.fnRecordsDisplay() / oSettings._iDisplayLength)
      };
    };

    function idleLogout() {
      var t;
      window.onload = resetTimer;
      window.onmousemove = resetTimer;
      window.onmousedown = resetTimer;
      window.onclick = resetTimer;
      window.onscroll = resetTimer;
      window.onkeypress = resetTimer;

      function logout() {
        window.location.href = '<?= base_url('login/lockscreen?user=' . $this->session->userdata('nip')) ?>';
      }

      function resetTimer() {
        clearTimeout(t);
        t = setTimeout(logout, 900000); // time is in milliseconds //60000 = 1 minutes
      }
    }

    function formatNumber(num) {
      return num.toString().replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1,')
    }

    idleLogout();
  </script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.bundle.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.bundle.min.js"></script>
  <link href="https://fonts.googleapis.com/css?family=Poppins&display=swap" rel="stylesheet">

  <style>
    .ui-autocomplete {
      z-index: 2147483647;
    }
    *,
    body,
    h1,
    h2,
    h3,
    h4,
    h5,
    h6 {
      font-family: 'Poppins', sans-serif;
    }
  </style>

</head>
<body class="hold-transition <?= SKIN  ?> sidebar-mini fixed" onload="startTime()">
  <?php //print_r($this->session->all_userdata())?>
  <div class="wrapper">

    <header class="main-header">
      <!-- Logo -->
      <a href="<?= base_url() ?>" class="logo">
        <!-- mini logo for sidebar mini 50x50 pixels -->
        <span class="logo-mini"><?= APPLICATION_SMALL  ?> </span>
        <!-- logo for regular state and mobile devices -->
        <span class="logo-lg"><?= APPLICATION  ?> </span>
      </a>
      <!-- Header Navbar: style can be found in header.less -->
      <nav class="navbar navbar-static-top">
        <!-- Sidebar toggle button-->
        <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
          <span class="sr-only">Toggle navigation</span>
        </a>

        <div class="navbar-custom-menu">
          <ul class="nav navbar-nav">
            <li>
              <a><i id="date"></i>&nbsp;<i id="clock"></i></a>
            </li>
            <!-- Notifications: style can be found in dropdown.less -->
            <li class="dropdown notifications-menu">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                <i class="fa fa-bell-o"></i>
                <span class="label label-warning">10</span>
              </a>
              <ul class="dropdown-menu">
                <li class="header">You have 10 notifications</li>
                <li>
                  <!-- inner menu: contains the actual data -->
                  <ul class="menu">
                    <li>
                      <a href="#">
                        <i class="fa fa-users text-aqua"></i> 5 new members joined today
                      </a>
                    </li>
                    <li>
                      <a href="#">
                        <i class="fa fa-warning text-yellow"></i> Very long description here that may not fit into the
                        page and may cause design problems
                      </a>
                    </li>
                    <li>
                      <a href="#">
                        <i class="fa fa-users text-red"></i> 5 new members joined
                      </a>
                    </li>
                    <li>
                      <a href="#">
                        <i class="fa fa-shopping-cart text-green"></i> 25 sales made
                      </a>
                    </li>
                    <li>
                      <a href="#">
                        <i class="fa fa-user text-red"></i> You changed your username
                      </a>
                    </li>
                  </ul>
                </li>
                <li class="footer"><a href="#">View all</a></li>
              </ul>
            </li>
            <!-- User Account: style can be found in dropdown.less -->
            <li class="dropdown user user-menu">
              <?php
              $id = $this->session->userdata('id');
              $file = $this->mymodel->selectDataone('file',array('table'=>'user','table_id'=>$id));
              ?>
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                <object data="<?= base_url($file['dir'])?>" type="image/png" class="user-image" alt="User Image">
                  <img src="https://www.library.caltech.edu/sites/default/files/styles/headshot/public/default_images/user.png?itok=1HlTtL2d" class="user-image" alt="User Image">
                </object>
                <span class="hidden-xs"><?= $this->session->userdata('name');?></span>
              </a>
              <ul class="dropdown-menu">
                <!-- User image -->
                <li class="user-header">
                  <object data="<?= base_url($file['dir'])?>" type="image/png" style="width: 100px;">
                    <img src="https://www.library.caltech.edu/sites/default/files/styles/headshot/public/default_images/user.png?itok=1HlTtL2d" alt="example">
                  </object>

                  <p>
                    <?= $this->session->userdata('name');?> - <?php $role = $this->mymodel->selectWhere('role',array('id'=>$this->session->userdata('role_id'))); echo $role[0]['role']; ?>
                  </p>
                </li>
                <!-- Menu Footer-->
                <li class="user-footer">
                  <!-- <div class="pull-left"> -->
                    <a href="<?= base_url('master/user/editUser/').$this->template->sonEncode($this->session->userdata('id')); ?>" class="btn btn-default btn-flat"><i class="fa fa-user"></i> Profile</a>
                    <a href="<?= base_url('login/lockscreen?user=').$this->session->userdata('nip'); ?>" class="btn btn-default btn-flat"><i class="fa fa-key"></i> Lockscreen</a>
                    <!-- </div> -->
                    <!-- <div class="pull-right"> -->
                      <a href="<?= base_url('login/logout') ?>" class="btn btn-default btn-flat"><i class="fa fa-sign-out"></i> Sign out</a>
                    </li>
                  </ul>
                </li>
                <!-- Control Sidebar Toggle Button -->
          <!-- <li>
            <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
          </li> -->
        </ul>
      </div>
    </nav>
  </header>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <form class="sidebar-form">
        <div class="input-group">
          <input type="text" name="q" class="form-control" placeholder="Search..." id="user-data-autocomplete">
          <span class="input-group-btn">
            <button type="button" name="search" id="search-btn" class="btn btn-flat">
              <i class="fa fa-search"></i>
            </button>
          </span>
        </div>
      </form>
      <!-- Sidebar user panel -->
      <!-- /.search form -->
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">MENU BUILD</li>
        
        <?php 
        $role = $this->mymodel->selectDataone('role',['id'=>$this->session->userdata('role_id')]);
        $jsonmenu = json_decode($role['menu']);
        $this->db->order_by('urutan asc');
        $this->db->where_in('id',$jsonmenu);
        $menu = $this->mymodel->selectWhere('menu_master',['parent'=>0,'status'=>'ENABLE']);
        foreach ($menu as $m) {
          $this->db->where_in('id',$jsonmenu);
          $parent = $this->mymodel->selectWhere('menu_master',['parent'=>$m['id'],'status'=>'ENABLE']);
          if(count($parent)==0){
            ?>
            <li class="<?php if($page_name==$m['name']) echo "active"; ?>">
              <a href="<?= base_url($m['link']) ?>">
                <i class="<?= $m['icon'] ?>"></i> <span><?= $m['name'] ?></span>
                <?php if($m['notif']!=""){ ?>
                  <span class="pull-right-container">
                    <small class="label pull-right label-danger" id="<?= $m['notif'] ?>">0</small>
                  </span>
                <?php } ?>
              </a>
            </li>
          <?php }else{ ?>

            <li class="treeview <?php if($page_name==$m['name']) echo "active"; ?>">
              <a href="#">
                <i class="<?= $m['icon'] ?>"></i> <span><?= $m['name'] ?></span>
                <span class="pull-right-container">
                  <i class="fa fa-angle-left pull-right"></i>
                </span>
              </a>
              <ul class="treeview-menu">
                <?php foreach ($parent as $p) { ?>
                  <li class="<?php if($page_name==$p['name']) echo "active"; ?>">
                    <a href="<?= base_url($p['link']) ?>">

                      <i class="<?= $p['icon'] ?>"></i> <?= $p['name'] ?>
                      <?php if($p['notif']!=""){ ?>
                        <span class="pull-right-container">
                          <small class="label pull-right label-danger" id="<?= $p['notif'] ?>">0</small>
                        </span>
                      <?php } ?>
                    </a>
                  </li>
                <?php } ?>

              </ul>
            </li>
          <?php } ?>
        <?php } ?>



        <!-- ================================================================== -->

        <li class="header">NAVIGATION MENU</li>
        <li class="">
          <a href="<?= base_url('assets/') ?>" target="_blank">
            <i class="fa  fa-globe"></i> <span>Template Admin LTE</span>
            <!-- <span class="pull-right-container">
              <small class="label pull-right bg-green">new</small>
            </span> -->
          </a>
        </li>
        <li class="">
          <a href="<?= base_url('crud-ajax') ?>">
            <i class="mdi mdi-database-check"></i> <span>Template CRUD Ajax</span>
            <!-- <span class="pull-right-container">
              <small class="label pull-right bg-green">new</small>
            </span> -->
          </a>
        </li>
        <li class="">
          <a href="<?= base_url('crud') ?>">
            <i class="mdi mdi-cellphone-settings-variant"></i> <span>CRUD Generator</span>
            <!-- <span class="pull-right-container">
              <small class="label pull-right bg-green">new</small>
            </span> -->
          </a>
        </li>
        <li class="">
          <a href="<?= base_url('dropdown') ?>">
            <i class="mdi mdi-message-settings-variant"></i> <span>Dropdown Generator</span>
            <!-- <span class="pull-right-container">
              <small class="label pull-right bg-green">new</small>
            </span> -->
          </a>
        </li>
        <li class="">
          <a href="<?= base_url('master/report') ?>">
            <i class="mdi mdi-file"></i> <span>Report Generator</span>
            <!-- <span class="pull-right-container">
              <small class="label pull-right bg-green">on develop</small>
            </span> -->
          </a>
        </li>
        <li class="treeview ">
          <a href="#">
            <i class="fa fa-info"></i> <span>Role Permmision</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
           <li class="">
            <a href="<?= base_url('access/') ?>">
              <i class="mdi mdi-account-network"></i> <span>Access Control</span>
                <!-- <span class="pull-right-container">
                  <small class="label pull-right bg-green">new</small>
                </span> -->
              </a>
            </li>
            <li class="">
              <a href="<?= base_url('master/menu_master') ?>">
                <i class="mdi mdi-folder-network"></i> <span>Master Menu</span>
                
              </a>
            </li>
            <li class="">
              <a href="<?= base_url('master/role') ?>">
                <i class="fa fa-info"></i> <span>Role</span>
                
              </a>
            </li>            
          </ul>
        </li>


        <li class="">
          <a href="<?= base_url('home/chart') ?>">
            <i class="fa fa-bar-chart"></i> <span>Chart</span>
            
          </a>
        </li>
        <li class="treeview ">
          <a href="#">
            <i class="mdi mdi-folder-account"></i> <span>Master</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li>
              <a href="<?= base_url('master/site') ?>"><i class="mdi mdi-checkbox-multiple-blank-circle"></i> Example 
               <span class="pull-right-container">
                <small class="label pull-right bg-green">Serverside</small>
              </span>
            </a>
          </li>
          <li>
            <a href="<?= base_url('master/site/site_custom') ?>"><i class="mdi mdi-checkbox-multiple-blank-circle"></i> Example 
             <span class="pull-right-container">
              <small class="label pull-right bg-green">Custom</small>
            </span>
          </a>
        </li>
        <li class="">
          <a href="<?= base_url('master/user') ?>"><i class="mdi mdi-human-child"></i> User</a>
        </li>

      </ul>
    </li>

    <li class="treeview ">
      <a href="#">
        <i class="mdi mdi-printer"></i> <span>Export Document</span>
        <span class="pull-right-container">
          <i class="fa fa-angle-left pull-right"></i>
        </span>
      </a>
      <ul class="treeview-menu">

        <li class="">
          <a href="<?= base_url('page/landscape') ?>" target="_blank"><i class="mdi mdi-crop-landscape"></i> Landscape</a>
        </li>
        <li class="">
          <a href="<?= base_url('page/portrait') ?>" target="_blank"><i class="mdi mdi-crop-portrait"></i> Portrait</a>
        </li>
        <li class="">
          <a href="<?= base_url('fitur/toPdf') ?>" target="_blank"><i class="mdi mdi-crop-portrait"></i> PDF</a>
        </li>
        <li class="">
          <a href="<?= base_url('tes/tesMpdf') ?>" target="_blank"><i class="mdi mdi-crop-portrait"></i> MPDF</a>
        </li>
        <li class="">
          <a href="<?= base_url('tes/tesHpdf') ?>" target="_blank"><i class="mdi mdi-crop-portrait"></i> HTML 2 PDF</a>
        </li>
      </ul>
    </li>

    <li class="">
      <a href="<?= base_url('backupdb') ?>">
        <i class="fa fa-hdd-o"></i> <span>Backup Database</span>

      </a>
    </li>

    <li class="">
      <a href="<?= base_url('sendemail') ?>">
        <i class="fa fa-envelope"></i> <span>Send Email</span>

      </a>
    </li>


    <li class="">
      <a href="<?= base_url('log_aktivitas') ?>">
        <i class="fa fa-history"></i> <span>Log Aktivitas</span>

      </a>
    </li>

    <li class="treeview ">
      <a href="#">
        <i class="fa fa-cogs"></i> <span>Library and Config</span>
        <span class="pull-right-container">
          <i class="fa fa-angle-left pull-right"></i>
        </span>
      </a>
      <ul class="treeview-menu">
        <li class="">
          <a href="<?= base_url('master/konfig')?>">
            <i class="mdi mdi-cogs"></i> <span>Application</span>
          </a>
        </li>
        <li class="">
          <a href="<?= base_url('debug/validation-form')?>">
            <i class="fa fa-bell"></i> <span>Form Validation</span>
          </a>
        </li>
        <li class="">
          <a href="<?= base_url('UploadImage')?>">
            <i class="mdi mdi-cloud-upload-outline"></i> <span>Image Upload</span>
          </a>
        </li>
        <li class="">
          <a href="<?= base_url('uploader')?>">
            <i class="fa fa-upload"></i> <span>Uploader</span>
          </a>
        </li>
        <li class="">
          <a href="<?= base_url('apiDoc')?>" target="_blank">
            <i class="mdi mdi-phone"></i> <span>ApiDoc.js</span>
          </a>
        </li>
        <li class="">
          <a href="https://cdn.materialdesignicons.com/3.0.39/" target="_blank">
            <i class="mdi mdi-material-design"></i> <span>MDI Icon</span>
          </a>
        </li>
        <li class="">
          <a href="<?= base_url('tinymce') ?>" target="_blank">
            <i class="fa fa-book"></i> <span>Tinymce</span>
          </a>
        </li>
        <li class="">
          <a href="<?= base_url('tablednd') ?>" target="">
            <i class="fa fa-hand-paper-o"></i> <span>Table Drag And Drop</span>
          </a>
        </li>
        <li class="">
          <a href="<?= base_url('form-input') ?>" target="">
            <i class="fa fa-list-alt"></i> <span>Form Input</span>
          </a>
        </li>


      </ul>
    </li>

  </ul>
</section>
<!-- /.sidebar -->
</aside>

<?=$contents?>

<footer class="main-footer">
  <div class="container" align="center">
    <strong>Copyright © 2019 by <a href="#">ENDURORALLY</a> All Right Reserved</strong>
  </div>
</footer>
<div class="control-sidebar-bg"></div>
</div>
<script>
  $.widget.bridge('uibutton', $.ui.button);
</script>
<script src="<?= base_url('assets/') ?>bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="<?= base_url('assets/') ?>bower_components/select2/dist/js/select2.full.min.js"></script>
<script src="<?= base_url('assets/') ?>bower_components/raphael/raphael.min.js"></script>
<script src="<?= base_url('assets/') ?>bower_components/morris.js/morris.min.js"></script>
<script src="<?= base_url('assets/') ?>bower_components/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
<script src="<?= base_url('assets/') ?>plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="<?= base_url('assets/') ?>plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<script src="<?= base_url('assets/') ?>bower_components/jquery-knob/dist/jquery.knob.min.js"></script>
<script src="<?= base_url('assets/') ?>bower_components/moment/min/moment.min.js"></script>
<script src="<?= base_url('assets/') ?>bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
<script src="<?= base_url('assets/') ?>bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
<script src="<?= base_url('assets/') ?>plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<script src="<?= base_url('assets/') ?>bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<script src="<?= base_url('assets/') ?>bower_components/fastclick/lib/fastclick.js"></script>
<script src="<?= base_url('assets/') ?>dist/js/adminlte.min.js"></script>
<script src="<?= base_url('assets/') ?>dist/js/pages/dashboard.js"></script>
<script src="<?= base_url('assets/') ?>dist/js/demo.js"></script>
<script src="<?= base_url('assets/') ?>plugins/input-mask/jquery.inputmask.js"></script>
<script src="<?= base_url('assets/') ?>plugins/input-mask/jquery.inputmask.extensions.js"></script>
<script src="<?= base_url('assets/') ?>plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<script src="<?= base_url('assets/') ?>bower_components/ckeditor/ckeditor.js"></script>
<script src="<?= base_url('assets/') ?>custom/number-separator.js"></script>

<script type="text/javascript">
  $(document).ready(function() {
    $('#user-data-autocomplete').autocomplete({
      source: "<?php echo site_url('home/get_autocomplete'); ?>",

      select: function(event, ui) {
        window.location.href = "<?= base_url('master/user/editUser_redirect/') ?>" + ui.item.id;
      }
    });
  });

  var url = window.location;
  $('ul.sidebar-menu a').filter(function() {
    return this.href == url;
  }).parent().siblings().removeClass('active').end().addClass('active');

  $('ul.treeview-menu a').filter(function() {
    return this.href == url;
  }).parentsUntil(".sidebar-menu > .treeview-menu").siblings().removeClass('active menu-open').end().addClass('active menu-open');
</script>

<script type="text/javascript">
  function slugify(string) {
    return string.toString().trim().toLowerCase().replace(/\s+/g, "-").replace(/[^\w\-]+/g, "").replace(/\-\-+/g, "-").replace(/^-+/, "").replace(/-+$/, "");
  }

  $('.select2').select2();
  $('.tgl').datepicker({
    autoclose: true,
    format: 'dd M yyyy'
  });

  $(function() {
    $('.datatable').DataTable({
      'paging': false,
      'lengthChange': false,
      'searching': false,
      'ordering': true,
      'info': false,
      'autoWidth': false,
      "language": {
        "search": "<b> Pencarian : </b>",
        "zeroRecords": function() {
          return "<img src='https://icon-library.net/images/no-data-icon/no-data-icon-20.jpg' width='100px' height='100px'><p><b>Tidak Ada Data</b><p>";
        },
        "paginate": {
          "previous": "<i class='fa fa-arrow-left'></i>",
          "next": "<i class='fa fa-arrow-right'></i>",
        },
        "lengthMenu": '<label>Tampilkan <select name="datatable_length" aria-controls="datatable" class="form-control input-sm"><option value="10">10</option><option value="25">25</option><option value="50">50</option><option value="100">100</option></select> Data</label>'
      }
    });

    $('#datatable').DataTable({
      'paging': true,
      'lengthChange': true,
      'searching': true,
      'ordering': true,
      'info': false,
      'autoWidth': false,
      "language": {
        "search": "<b> Pencarian : </b>",
        "zeroRecords": function() {
          return "<img src='https://icon-library.net/images/no-data-icon/no-data-icon-20.jpg' width='100px' height='100px'><p><b>Tidak Ada Data</b><p>";
        },
        "paginate": {
          "previous": "<i class='fa fa-arrow-left'></i>",
          "next": "<i class='fa fa-arrow-right'></i>",
        },
        "lengthMenu": '<label>Tampilkan <select name="datatable_length" aria-controls="datatable" class="form-control input-sm"><option value="10">10</option><option value="25">25</option><option value="50">50</option><option value="100">100</option></select> Data</label>'
      }
    });
  });

  function startTime() {
    var today = new Date();
    var hr = today.getHours();
    var min = today.getMinutes();
    var sec = today.getSeconds();
    ap = (hr < 12) ? "<span>AM</span>" : "<span>PM</span>";
    hr = (hr == 0) ? 12 : hr;
    hr = (hr > 12) ? hr - 12 : hr;
    hr = checkTime(hr);
    min = checkTime(min);
    sec = checkTime(sec);
    document.getElementById("clock").innerHTML = hr + ":" + min + ":" + sec + " " + ap;

    var months = ['Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni', 'Juli', 'Agustus', 'September', 'Oktober', 'November', 'Desember'];
    var days = ['Minggu', 'Senin', 'Selasa', 'Rabu', 'Kamis', 'Jumat', 'Sabtu'];
    var curWeekDay = days[today.getDay()];
    var curDay = today.getDate();
    var curMonth = months[today.getMonth()];
    var curYear = today.getFullYear();
    var date = curWeekDay + ", " + curDay + " " + curMonth + " " + curYear + " /";
    document.getElementById("date").innerHTML = date;

    var time = setTimeout(function() {
      startTime()
    }, 500);
  }

  function checkTime(i) {
    if (i < 10) {
      i = "0" + i;
    }
    return i;
  }

  function fungsiRupiah() {
    $(".rupiah").keyup(function() {
      $(this).val(formatRupiah(this.value, ''));
    });

    function formatRupiah(angka, prefix) {
      var number_string = angka.replace(/[^,\d]/g, '').toString(),
      split = number_string.split(','),
      sisa = split[0].length % 3,
      rupiah = split[0].substr(0, sisa),
      ribuan = split[0].substr(sisa).match(/\d{3}/gi);
      if (ribuan) {
        separator = sisa ? '.' : '';
        rupiah += separator + ribuan.join('.');
      }

      rupiah = split[1] != undefined ? rupiah + ',' + split[1] : rupiah;
      return prefix == undefined ? rupiah : (rupiah ? '' + rupiah : '');
    }
  }

  fungsiRupiah();

  function maskRupiah(angka) {
    var bilangan = angka;

    var reverse = bilangan.toString().split('').reverse().join(''),
    ribuan = reverse.match(/\d{1,3}/g);
    ribuan = ribuan.join('.').split('').reverse().join('');

    return ribuan;
  }

  $("#btnFile").click(function() {
    document.getElementById('imageFile').click();
  });

  $("#imageFile").change(function() {
    imagePreview(this);
  });

  function imagePreview(input) {
    if (input.files && input.files[0]) {
      var reader = new FileReader();

      reader.onload = function(e) {
        $('#preview_image').attr('src', e.target.result);
      }

      reader.readAsDataURL(input.files[0]);
    }
  };
  
  $('[data-mask]').inputmask();

  $("#btnFile-many").click(function() {
    document.getElementById('uploadFile').click();
  });

  $("#uploadFile").change(function(){
    $('#detail_image_open #detail_image_edit').remove();
    $('#note_image').text('Detail Gambar Diubah !');

    var total_file=document.getElementById("uploadFile").files.length;
    for(var i=0;i<total_file;i++){
      $('#detail_image_open').append('<tr id="detail_image_edit"><td><img src="'+URL.createObjectURL(event.target.files[i])+'" class="round" alt="User Image" height="150px" style="margin: 15px"></td><td>'+event.target.files[i].name+'</td></tr>');
    }
    $("#btnFile-many").html('<i class="fa fa-file"></i> Pilih Gambar Kembali (<b>'+total_file+'</b> telah Terpilih)');
  });
  
  
  $("#btnFile-gallery").click(function() {
    document.getElementById('uploadFileGallery').click();
  });
  $("#uploadFileGallery").change(function() {
    $('#detail_image_open_gallery #detail_image_edit_gallery').remove();
    $('#note_image_gallery').text('');
    var total_file = document.getElementById("uploadFileGallery").files.length;
    for (var i = 0; i < total_file; i++) {
      $('#detail_image_open_gallery').append('<tr id="detail_image_edit_gallery"><td><img src="' + URL.createObjectURL(event.target.files[i]) + '" class="round" alt="User Image" height="150px" style="margin: 15px"></td><td>' +
        '<div class="form-group" style="margin-left: 0px;">' +
        '<label>Judul Gambar*</label>' +
        '<input type="text" class="form-control" placeholder="Masukan Nama gambar" name="dt[title][' + i + ']">' +
        '</div>' +
        '<div class="form-group" style="margin-left: 0px;">' +
        '<label>Caption Gambar</label>' +
        '<textarea class="form-control" name="dt[caption][' + i + ']" rows="5"></textarea>' +
        '</div>' +
        '</td></tr>');
    }
    $("#btnFile-gallery").html('<i class="fa fa-file"></i> Pilih Gambar Kembali (<b>' + total_file + '</b> telah Terpilih)');
  });
  
</script>
</body>

</html>