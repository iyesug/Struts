$(function(){
	$(":submit").click(function(){
		//alert("ok");
//		$(":text").validate({
//			required:true,
//			messages:{
//				required:"必须输入"
//			}
//		});
		var v=$("#form1").validate({  //json格式  键值对  gson:google开发出的一套操作json的库
			rules:{   //规则
				username:{required:true,maxlength:10,minlength:5},
				email:{email:true}
			},
			messages:{  //提示信息
			username:{required:"必须输入",maxlength:"不超过10",minlength:"不小于5"},
			email:{email:"格式不对"}
		}			
			
		});
		//alert(v);
		//return false;
		
	});
	
});