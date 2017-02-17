<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div id="registration-form">
	<form role="form">
		<div class="form-title">${baseRegion }</div>
		<div class="form-group">
			<span class="input-icon icon-right"> <input type="text" class="form-control" id="userameInput" placeholder="储位名称"> <i class="glyphicon glyphicon-user circular"></i>
			</span>
		</div>
		<div class="form-group">
			<span class="input-icon icon-right"> <input type="text" class="form-control" id="emailInput" placeholder="托盘规格"> <i class="fa fa-envelope-o circular"></i>
			</span>
		</div>
		<div class="form-group">
			<span class="input-icon icon-right"> <input type="text" class="form-control" id="passwordInput" placeholder="Password" disabled="true"> <i class="fa fa-lock circular"></i>
			</span>
		</div>
		<div class="form-group">
			<span class="input-icon icon-right"> <input type="text" class="form-control" id="confirmPasswordInput" placeholder="Confirm Password"> <i class="fa fa-lock circular"></i>
			</span>
		</div>
		<div class="form-title">Personal Information</div>
		<div class="row">
			<div class="col-sm-6">
				<div class="form-group">
					<span class="input-icon icon-right"> <input type="text" class="form-control" placeholder="Name"> <i class="fa fa-user"></i>
					</span>
				</div>
			</div>
			<div class="col-sm-6">
				<div class="form-group">
					<span class="input-icon icon-right"> <input type="text" class="form-control" placeholder="Family"> <i class="fa fa-user"></i>
					</span>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-6">
				<div class="form-group">
					<span class="input-icon icon-right"> <input type="text" class="form-control" placeholder="Phone"> <i class="glyphicon glyphicon-earphone"></i>
					</span>
				</div>
			</div>
			<div class="col-sm-6">
				<div class="form-group">
					<span class="input-icon icon-right"> <input type="text" class="form-control" placeholder="Mobile"> <i class="glyphicon glyphicon-phone"></i>
					</span>
				</div>
			</div>
		</div>
		<hr class="wide">
		<div class="row">
			<div class="col-sm-6">
				<div class="form-group">
					<span class="input-icon icon-right"> <input class="form-control date-picker" id="id-date-picker-1" type="text" data-date-format="dd-mm-yyyy" placeholder="Birth Date"> <i class="fa fa-calendar"></i>
					</span>
				</div>
			</div>
			<div class="col-sm-6">
				<div class="form-group">
					<span class="input-icon icon-right"> <input type="text" class="form-control" placeholder="Birth Place"> <i class="fa fa-globe"></i>
					</span>
				</div>
			</div>
		</div>
		<div class="form-group">
			<div class="checkbox">
				<label> <input type="checkbox" class="colored-blue"> <span class="text">Auto Sign In After Registration</span>
				</label>
			</div>
		</div>
		<button type="submit" class="btn btn-blue">Register</button>
	</form>
</div>
