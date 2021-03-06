<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Cập nhật
            <small>
                Danh Mục
            </small>
        </h1>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box box-default">
                    <div class="box-body">
                        <?php
                        echo form_open_multipart('', array('class' => 'form-horizontal'));
                        ?>
                        <div class="col-xs-12">
                            <h4 class="box-title">Basic Information</h4>
                        </div>
                        <div class="row">
                            <span><?php echo $this->session->flashdata('message'); ?></span>
                        </div>
                        <div class="form-group col-xs-12">
                            <label for="image_shared">Hình ảnh bên trái đang dùng</label>
                            <br>
                            <img src="<?php echo base_url('assets/upload/'. $controller .'/'. $detail['slug'] .'/'. $detail['image_left']); ?>" width=250px>
                            <br>
                        </div>
                        <div class="form-group col-xs-12">
                            <?php
                            echo form_label('Hình ảnh bên trái', 'image_left');
                            echo form_error('image_left');
                            echo form_upload('image_left', set_value('image_left'), 'class="form-control"');
                            ?>
                        </div>

                        <div class="form-group col-xs-12">
                            <label for="image_shared">Hình ảnh bên phải đang dùng</label>
                            <br>
                            <img src="<?php echo base_url('assets/upload/'. $controller .'/'. $detail['slug'] .'/'. $detail['image_right']); ?>" width=250px>
                            <br>
                        </div>
                        <div class="form-group col-xs-12">
                            <?php
                            echo form_label('Hình ảnh bên phải', 'image_right');
                            echo form_error('image_right');
                            echo form_upload('image_right', set_value('image_right'), 'class="form-control"');
                            ?>
                            <br>
                        </div>
                        <div class="form-group col-xs-12">
                            <?php
                            echo form_label('Slug', 'slug_shared');
                            echo form_error('slug_shared');
                            echo form_input('slug_shared', $detail['slug'], 'class="form-control" id="slug_shared" readonly');
                            ?>
                        </div>

                        <div>
                            <ul class="nav nav-pills nav-justified" role="tablist" style="margin-bottom: 5px">
                                <?php $i = 0; ?>
                                <?php foreach ($page_languages as $key => $value): ?>
                                    <li role="presentation" class="<?php echo ($i == 0)? 'active' : '' ?>">
                                        <a href="#<?php echo $key ?>" aria-controls="<?php echo $key ?>" role="tab" data-toggle="tab">
                                            <span class="badge"><?php echo $i + 1 ?></span> <?php echo $value ?>
                                        </a>
                                    </li>
                                <?php $i++; ?>
                                <?php endforeach ?>
                                
                            </ul>
                            <div class="tab-content">
                                <?php $i = 0; ?>
                                <?php foreach ($page_languages as $key => $value): ?>
                                    <div role="tabpanel" class="tab-pane fade<?php echo ($i == 0)? ' in active' : '' ?>" id="<?php echo $key ?>">
                                            <div class="form-group col-xs-12">
                                                <?php
                                                    echo form_label('Tiêu đề', 'title_'. $key);
                                                    echo form_error('title_'. $key);
                                                    echo form_input('title_'. $key, $detail['title_'. $key], 'class="form-control" id="title_'.$key.'"');

                                                    echo form_label('Mô tả', 'description_'. $key);
                                                    echo form_error('description_'. $key);
                                                    echo form_textarea('description_'. $key, $detail['description_'. $key], 'class="form-control" rows="5"');
                                                    
                                                    echo '<div style="display:none">';
                                                    echo form_label('Nội dung', 'content_'. $key);
                                                    echo form_error('content_'. $key);
                                                    echo form_textarea('content_'. $key, $detail['content_'. $key], 'class="tinymce-area form-control" rows="5"');
                                                    echo '</div>';

                                                    echo form_label('Từ khóa meta', 'metakeywords_'. $key);
                                                    echo form_error('metakeywords_'. $key);
                                                    echo form_input('metakeywords_'. $key, $detail['metakeywords_'. $key], 'class="form-control" id="metakeywords_'.$key.'"');

                                                    echo form_label('Mô tả meta', 'metadescription_'. $key);
                                                    echo form_error('metadescription_'. $key);
                                                    echo form_input('metadescription_'. $key, $detail['metadescription_'. $key], 'class="form-control" id="metadescription_'.$key.'"');
                                                ?>
                                            </div>
                                    </div>
                                <?php $i++; ?>
                                <?php endforeach ?>
                            </div>
                        </div>
                        <?php echo form_submit('submit_shared', 'OK', 'class="btn btn-primary"'); ?>
                        <?php echo form_close(); ?>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<!-- <script type="text/javascript" src="<?php echo base_url('assets/js/admin/script.js') ?>"></script> -->
<!-- <script type="text/javascript" src="<?php echo base_url('assets/js/admin/common.js') ?>"></script> -->

<script type="text/javascript">
    switch(window.location.origin){
        case 'http://diamondtour.vn':
            var HOSTNAME = 'http://diamondtour.vn/';
            break;
        default:
            var HOSTNAME = 'http://localhost/weddingdress/';
    }
    function to_slug(str){
        str = str.toLowerCase();

        str = str.replace(/(à|á|ạ|ả|ã|â|ầ|ấ|ậ|ẩ|ẫ|ă|ằ|ắ|ặ|ẳ|ẵ)/g, 'a');
        str = str.replace(/(è|é|ẹ|ẻ|ẽ|ê|ề|ế|ệ|ể|ễ)/g, 'e');
        str = str.replace(/(ì|í|ị|ỉ|ĩ)/g, 'i');
        str = str.replace(/(ò|ó|ọ|ỏ|õ|ô|ồ|ố|ộ|ổ|ỗ|ơ|ờ|ớ|ợ|ở|ỡ)/g, 'o');
        str = str.replace(/(ù|ú|ụ|ủ|ũ|ư|ừ|ứ|ự|ử|ữ)/g, 'u');
        str = str.replace(/(ỳ|ý|ỵ|ỷ|ỹ)/g, 'y');
        str = str.replace(/(đ)/g, 'd');

        str = str.replace(/([^0-9a-z-\s])/g, '');

        str = str.replace(/(\s+)/g, '-');

        str = str.replace(/^-+/g, '');

        str = str.replace(/-+$/g, '');

        // return
        return str;
    }
    $(document).ready(function(){
        "use strict";
        tinymce.init({
            selector: ".tinymce-area",
            theme: "modern",
            height: 300,
            relative_urls: false,
            remove_script_host: false,
            plugins: [
                "advlist autolink link image lists charmap print preview hr anchor pagebreak spellchecker",
                "searchreplace wordcount visualblocks visualchars code fullscreen insertdatetime media nonbreaking",
                "save table contextmenu directionality emoticons template paste textcolor responsivefilemanager"
            ],
            toolbar: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | l      ink image | responsivefilemanager | print preview media fullpage | forecolor backcolor emoticons",
            style_formats: [
                {title: "Bold text", inline: "b"},
                {title: "Red text", inline: "span", styles: {color: "#ff0000"}},
                {title: "Red header", block: "h1", styles: {color: "#ff0000"}},
                {title: "Example 1", inline: "span", classes: "example1"},
                {title: "Example 2", inline: "span", classes: "example2"},
                {title: "Table styles"},
                {title: "Table row 1", selector: "tr", classes: "tablerow1"}
            ],
            external_filemanager_path: HOSTNAME + "filemanager/",
            filemanager_title: "Responsive Filemanager",
            external_plugins: {"filemanager": HOSTNAME + "filemanager/plugin.min.js"}
        });

        $('#title_vi').change(function(){
            $('#slug_shared').val(to_slug($('#title_vi').val()));
        });
    });
</script>

