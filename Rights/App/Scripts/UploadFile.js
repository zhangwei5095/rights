/* ******************************************
*	添加图片列表
* ****************************************** */
function addFileUrl(name, url) {
    var fileObj = $("#fileUrl").val();
    $("#" + fileObj).val(url);
    $("#showPic").attr("src",url);
}

var ValidateIndex;
// 文件上传
jQuery(function () {
    var $ = jQuery,
        $list = $('#thelist'),
        $btn = $('#ctlBtn'),
        state = 'pending',
        uploader;

    uploader = WebUploader.create({

        // 不压缩image
        resize: false,
        chunked: false,
        // swf文件路径
        swf: '/js/webuploader/js/Uploader.swf',
        disableGlobalDnd: true,
        // 文件接收服务端。
        server: uploadurl,
        sendAsBinary: true,
        // 选择文件的按钮。可选。
        // 内部根据当前运行是创建，可能是input元素，也可能是flash.
        pick: '#picker',
        accept: acceptFile,
        fileNumLimit: fileNum,
        fileSizeLimit: 200 * 1024 * 1024,    // 200 M
        fileSingleSizeLimit: fileSingleSize * 1024 * 1024    // 50 M
    });

    // 当有文件添加进来的时候
    uploader.on('fileQueued', function (file) {
       
        $list.append('<div id="' + file.id + '" class="item">' +
            '<h4 class="info">' + file.name + '</h4>' +
            '<p class="state">等待上传...<label id="scanel">删除</abel></p></div>');
        state = 'ready';
        $("#scanel").on('click', function () {
            removeFile(file);
        });
    });

    // 文件上传过程中创建进度条实时显示。
    uploader.on('uploadProgress', function (file, percentage) {
        var $li = $('#' + file.id),
            $percent = $li.find('.progress .progress-bar');

        // 避免重复创建
        if (!$percent.length) {
            $percent = $('<div class="progress progress-striped active">' +
              '<div class="progress-bar" role="progressbar" style="width: 0%">' +
              '</div>' +
            '</div>').appendTo($li).find('.progress-bar');
        }

        $li.find('p.state').text('上传中');

        $percent.css('width', percentage * 100 + '%');
    });

    uploader.on('uploadSuccess', function (obj,file) {
        $('#' + obj.id).find('p.state').text('已上传');
        var validate;
        for (var d in file) {
            validate = file[d];
        }
        ValidateIndex = validate.indexOf("<script");
        if (ValidateIndex > 0) {
            alert("验证未通过");
            state = 'done';
            location.reload();
        } else {
            addFileUrl(file.jsonrpc, file.result);
            state = 'uploading';
        }
    });

    uploader.on('uploadError', function (file) {
        $('#' + file.id).find('p.state').text('上传出错');
    });

    uploader.on('uploadComplete', function (file) {
        $('#' + file.id).find('.progress').fadeOut();
    });

    uploader.on('all', function (type) {
        if (type === 'startUpload') {
            state = 'uploading';
        } else if (type === 'stopUpload') {
            state = 'paused';
        } else if (type === 'uploadFinished') {
            state = 'done';
        }

        if (state === 'uploading') {
            $btn.text('暂停上传');
        } else {
            $btn.text('开始上传');
        }
    });
    // 负责view的销毁
    function removeFile(file) {
        uploader.removeFile(file);
        var $li = $('#' + file.id);
        $li.remove();
    }
    $btn.on('click', function () {
        if (state === 'ready') {
            uploader.upload();
        } else if (state === 'paused') {
            uploader.upload();
        } else if (state === 'uploading') {
            uploader.stop();
        }
    });
});