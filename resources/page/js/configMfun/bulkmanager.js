/**
 * Author:26309358@qq.com
 * Data: 2016.12
 * 
 */

var Bulkmanager = function() {

	var InitiateSearchableDataTable = function() {
		var oTable = $('#searchable').dataTable({
			"sDom" : "Tflt<'row DTTTFooter'<'col-sm-6'i><'col-sm-6'p>>",
			"aaSorting" : [ [ 2, 'asc' ] ],
			"aLengthMenu" : [ [ 5, 15, 20, -1 ], [ 5, 15, 20, "All" ] ],
			"iDisplayLength" : 15,
			"language" : {
				"search" : "",
				"sLengthMenu" : "_MENU_",
				"oPaginate" : {
					"sPrevious" : "上页",
					"sNext" : "下页"
				}
			},
			"oTableTools" : {
				"sRowSelect" : "multi",
				"aButtons" : [ {
					"sExtends" : "print",
					"sButtonText" : "打印"
				} ]
			},
			"serverSide" : true,
			"colReorder" : {
				reorderCallback : function() {
					//  					console.log('callback');
				}
			},
			"ajax" : function(data, callback, settings) {
				var param = {};
				param.pageSize = data.length;
				param.pageNum = (data.start / data.length) + 1;
				param.draw = data.draw;
				//  				console.log(data);
				$.ajax({
					type : "GET",
					url : getRootPath() + "/bulk/findBaseBulksByPage",
					cache : false,
					data : param,
					dataType : "json",
					success : function(result) {
						var returnData = {};
						returnData.draw = data.draw;
						returnData.recordsTotal = result.recordsTotal;
						returnData.recordsFiltered = result.recordsTotal;
						returnData.data = result.data;
						callback(returnData);
						//ajaxClickFun();
					}
				});
			},
			"columns" : [ {
				"data" : "bulkId",
				"bSortable" : false
			}, {
				"data" : "name",
				"bSortable" : false
			}, {
				"data" : "createtime",
				"bSortable" : false
			} ],
			"columnDefs" : [ {
				"targets" : [ 0 ],
				"render" : function(data, type, full) {
					return "<input name='bulkId' value='" + data + "' style='display:none' />";
				}
			}, {
				"targets" : [ 1 ],
				"render" : function(data, type, full) {
					if(data.length<10){
						if(data.length==0) return "----";
						return data;
					}else{
						return data.substring(1,10)+"...";
					}
				}
			}, {
				"targets" : [ 2 ],
				"render" : function(data, type, full) {
					return new Date(data).toLocaleString().replace(/年|月/g, "-").replace(/日/g, " ");
				}
			} ]
		});

		/**
		 * 追加功能按钮
		 */
		$("div.DTTT.btn-group").empty();
		$("div.DTTT.btn-group").append('<button class="btn btn-default btn-palegreen addBulk"><i class="fa fa-plus"></i> 新增散支单位 </button>');
		$("div.DTTT.btn-group").append('<button class="btn btn-default btn-darkorange deleteBulk"><i class="fa fa-minus"></i> 批量删除</button>');
		$("div.DTTT.btn-group").append('<button class="btn btn-default btn-azure editBulk"><i class="fa fa-edit"></i>编辑</button>');

		/**
		 * 新增仓库
		 */
		$('button.addBulk').on("click", function() {
			$("#aboutBulkModal").modal({
				remote : getRootPath() + "/bulk/bulkAdd"
			});
		});
		
		/**
		 * 批量删除仓库
		 */
		$('button.deleteBulk').on("click", function() {
			var keys = [];
			$('#searchable tbody tr.active').find("input[name='bulkId']").each(function() {
				var key = $(this).val();
				keys.push(key);
			});
			if (keys.length > 0) {
				layer.confirm('你要删除这' + keys.length + '条数据?', {
					btn : [ '确认删除！', '取消操作' ]
				//按钮
				}, function() {
					$.ajax({
						url : getRootPath() + "/bulk/deleteBulk",
						type : 'post',
						data : {
							keys:keys
						},
						success : function(data) {
							if(data.code=='success'){
								$(".modal-backdrop").remove();
								jumpPageByUrl(getRootPath() + "/configmfun/bulkmanager");
								layer.msg('删除成功！', {icon: 1,time: 900});
							}
						},
						error : function(data) {
							alert("网络异常");
						},
						dataType : "json"
					});
				}, function() {
					layer.msg('取消操作', {
						icon: 9,time: 900
					});
				});
			}else{
				layer.msg('你没有选择任何数据', {
					icon: 6,time: 900
				});
			}
		});
		
		/**
		 * 编辑仓库
		 */
		$('button.editBulk').on("click", function() {
			var bulkIds = [];
			$('#searchable tbody tr.active').find("input[name='bulkId']").each(function() {
				var bulkId = $(this).val();
					bulkIds.push(bulkId);
			});
			if (bulkIds.length ==1 ) {
				var bulkId = bulkIds[0];
				$("#aboutBulkModal").modal({
					remote : getRootPath() + "/bulk/bulkEdit?bulkId=" + bulkId
				});
			}else{
				layer.msg('请选择 1 条数据！', {
					icon: 6,time: 900
				});
			}
		});
		
		$("#aboutBulkModal").on("hidden.bs.modal", function() {
			$(this).removeData("bs.modal");
		});
		
	}

	return {

		init : function() {
			InitiateSearchableDataTable();
		}

	};

}();
