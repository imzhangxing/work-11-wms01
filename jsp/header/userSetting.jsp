<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div id="registration-form">
	<form role="form">
		<div class="form-title">头像设置</div>
		<div class="row">
			<div class="col-sm-6">
				<div class="form-group">
					<div>
				        <input type="file" style="display: none" id="upImg" onchange="changeImg(this)">
				        <label for="upImg" id="preview">
				            <img id="imghead" src="images/normal.png" width="198" height="198" alt="头像">
				        </label>
				    </div>
				
				    <div class="boxFooter">
				        <input type="hidden" name="x1" value="0">
				        <input type="hidden" name="y1" value="0">
				        <input type="hidden" name="x2" value="100">
				        <input type="hidden" name="y2" value="100"> 
				        <button name="confirm" id="subPhoto" >确&nbsp;定</button>
				        <div id="imgmsg"></div>
				    </div>
				</div>
			</div>
			<div class="col-sm-6">
				<div class="form-group">
					<label for="exampleInputName2">Name</label> <span class="input-icon icon-right"> <input type="text" class="form-control" id="exampleInputName2" placeholder="Name"> <i class="glyphicon glyphicon-user palegreen"></i>
					</span>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-12">
				<div class="form-group">
					<label for="exampleInputEmail2">Message</label> <span class="input-icon icon-right"> <textarea class="form-control" rows="10"></textarea> <i class="glyphicon glyphicon-briefcase darkorange"></i>
					</span>
					<p class="help-block">Your message will be in this text area.</p>
				</div>

			</div>
		</div>
		<div class="form-group">
			<div class="checkbox">
				<label> <input type="checkbox" class="colored-danger"> <span class="text">Notify me through E-mail</span>
				</label>
			</div>
		</div>
		<button type="submit" class="btn btn-danger">Submit</button>
	</form>
</div>
<script src="plug/jquery.imgareaselect-0.9.10/scripts/jquery.imgareaselect.min.js" type="text/javascript"></script>
<script>
	$(document).ready(function () { 
	  //提交图片剪切信息到后台
	  $("#subPhoto").click(function(){
	      var x1 = $("input[name='x1']").val();
	      var y1 = $("input[name='y1']").val();
	      var x2 = $("input[name='x2']").val();
	      var y2 = $("input[name='y2']").val();
	      var img64 = $("#imghead").attr("src");
	      alert(x1+":"+y1+":"+x2+":"+y2);
	      var url = "";
	      var param = {
	        'x1': x1,
	        'y1': y1,
	        'x2': x2,
	        'y2': y2,
	        'image': img64
	      }
	      $.post(url,param,function(data){
	        alert(data);
	      });
	  })

	}); 

	//点击图像区域选择图片
	function changeImg(obj){
	  //图片选择处理
	  var file = obj;
	  var MAXWIDTH  = 198; 
	  var MAXHEIGHT = 198;
	  var MAXSIZE = 2048*1024;
	  var div = document.getElementById('preview');
	  if (file.files && file.files[0]){
	    if (file.files[0].size > MAXSIZE) {
	      alert("more than " + (MAXSIZE/1024/1024) + "M");
	      return false;
	    };
	    div.innerHTML ='<img id=imghead>';
	    var img = document.getElementById('imghead');
	    img.onload = function(){
	       var rect = clacImgZoomParam(MAXWIDTH, MAXHEIGHT, img.offsetWidth, img.offsetHeight);
	       img.width  =  rect.width;
	       img.height =  rect.height;
	       img.style.marginTop = rect.top+'px';
	    }
	    var reader = new FileReader();
	    reader.onload = function(evt){
	      img.src = evt.target.result;
	    }
	    reader.readAsDataURL(file.files[0]);
	  }

	  //图片剪切区域处理
	  $('#imghead').imgAreaSelect({ 
	      x1:0, 
	      y1:0, 
	      x2:100, 
	      y2:100, 
	      aspectRatio: '1:1', //比例
	      handles: true, 
	      onSelectChange: function(img, selection){//图片剪切区域变化时触发
	        $("#imgmsg").html("x1:"+selection.x1+", y1:"+selection.y1+", x2:"+selection.x2+", y2:"+selection.y2);
	      }, 
	      onSelectEnd: function (img, selection) {//图片剪切区域结束时触发
	        $('input[name="x1"]').val(selection.x1);
	        $('input[name="y1"]').val(selection.y1);
	        $('input[name="x2"]').val(selection.x2);
	        $('input[name="y2"]').val(selection.y2);
	     }
	  }); 
	}

	//设置图片显示区域为固定大小,方便后台按统一比例截取图片
	function clacImgZoomParam( maxWidth, maxHeight, width, height ){
	   var param = {top:0, left:0, width:width, height:height};
	   if( width>maxWidth || height>maxHeight ){
	     rateWidth = width / maxWidth;
	     rateHeight = height / maxHeight;
	     if( rateWidth > rateHeight ){
	         param.width =  maxWidth;
	         param.height = Math.round(height / rateWidth);
	     }else {
	         param.width = Math.round(width / rateHeight);
	         param.height = maxHeight;
	     }
	   }
	   param.left = Math.round((maxWidth - param.width) / 2);
	   param.top = Math.round((maxHeight - param.height) / 2);
	   return param;
	}

</script>
