<%@page import="model.dto.WishListDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!-- 원화표시 functions함수집합 가져오기 -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- 원화표시 포맷 -->
<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>KOD 관리자 페이지</title>

<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome Icons -->
<link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="dist/css/adminlte.min.css">
<!-- DataTables -->
  <link rel="stylesheet" href="plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
  <link rel="stylesheet" href="plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
  <link rel="stylesheet" href="plugins/datatables-buttons/css/buttons.bootstrap4.min.css">
</head>
<body class="hold-transition sidebar-mini">
	<div class="wrapper">

		<!-- Navbar -->
		<nav
			class="main-header navbar navbar-expand navbar-white navbar-light">
			<!-- Left navbar links -->
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" data-widget="pushmenu"
					href="#" role="button"><i class="fas fa-bars"></i></a></li>
				<li class="nav-item d-none d-sm-inline-block"><a
					href="adminMain.jsp" class="nav-link">Home</a></li>
				<li class="nav-item d-none d-sm-inline-block"><a href="#"
					class="nav-link">매출 현황</a></li>
				<li class="nav-item d-none d-sm-inline-block"><a href="#"
					class="nav-link">회원 관리</a></li>
				<li class="nav-item d-none d-sm-inline-block"><a href="#"
					class="nav-link">상품 관리</a></li>
				<li class="nav-item d-none d-sm-inline-block"><a href="adminCouponManage.jsp"
					class="nav-link">쿠폰 관리</a></li>
				<li class="nav-item d-none d-sm-inline-block"><a href="#"
					class="nav-link">리뷰 관리</a></li>				
			</ul>

			<!-- Right navbar links -->
			<ul class="navbar-nav ml-auto">
				<!-- Navbar Search -->
				<li class="nav-item"><a class="nav-link"
					data-widget="navbar-search" href="#" role="button"> <i
						class="fas fa-search"></i>
				</a>
					<div class="navbar-search-block">
						<form class="form-inline">
							<div class="input-group input-group-sm">
								<input class="form-control form-control-navbar" type="search"
									placeholder="Search" aria-label="Search">
								<div class="input-group-append">
									<button class="btn btn-navbar" type="submit">
										<i class="fas fa-search"></i>
									</button>
									<button class="btn btn-navbar" type="button"
										data-widget="navbar-search">
										<i class="fas fa-times"></i>
									</button>
								</div>
							</div>
						</form>
					</div></li>

				<!-- Messages Dropdown Menu -->
				<li class="nav-item dropdown"><a class="nav-link"
					data-toggle="dropdown" href="#"> <i class="far fa-comments"></i>
						<span class="badge badge-danger navbar-badge">3</span>
				</a>
					<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
						<a href="#" class="dropdown-item"> <!-- Message Start -->
							<div class="media">
								<img src="dist/img/user1-128x128.jpg" alt="User Avatar"
									class="img-size-50 mr-3 img-circle">
								<div class="media-body">
									<h3 class="dropdown-item-title">
										건의 사항 <span class="float-right text-sm text-danger"><i
											class="fas fa-star"></i></span>
									</h3>
									<p class="text-sm">배송지를 잘못 입력했습니다..</p>
									<p class="text-sm text-muted">
										<i class="far fa-clock mr-1"></i> 4 Hours Ago
									</p>
								</div>
							</div> <!-- Message End -->
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item"> <!-- Message Start -->
							<div class="media">
								<img src="dist/img/user8-128x128.jpg" alt="User Avatar"
									class="img-size-50 img-circle mr-3">
								<div class="media-body">
									<h3 class="dropdown-item-title">
										건의 사항 <span class="float-right text-sm text-muted"><i
											class="fas fa-star"></i></span>
									</h3>
									<p class="text-sm">환불은 어떻게 신청하나요?...</p>
									<p class="text-sm text-muted">
										<i class="far fa-clock mr-1"></i> 4 Hours Ago
									</p>
								</div>
							</div> <!-- Message End -->
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item"> <!-- Message Start -->
							<div class="media">
								<img src="dist/img/user3-128x128.jpg" alt="User Avatar"
									class="img-size-50 img-circle mr-3">
								<div class="media-body">
									<h3 class="dropdown-item-title">
										건의 사항 <span class="float-right text-sm text-warning"><i
											class="fas fa-star"></i></span>
									</h3>
									<p class="text-sm">홈페이지에 에러가 있습니다...</p>
									<p class="text-sm text-muted">
										<i class="far fa-clock mr-1"></i> 4 Hours Ago
									</p>
								</div>
							</div> <!-- Message End -->
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item dropdown-footer">See All
							Messages</a>
					</div></li>
				<!-- Notifications Dropdown Menu -->
				<li class="nav-item dropdown"><a class="nav-link"
					data-toggle="dropdown" href="#"> <i class="far fa-bell"></i> <span
						class="badge badge-warning navbar-badge">15</span>
				</a>
					<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
						<span class="dropdown-header">15 Notifications</span>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item"> <i
							class="fas fa-envelope mr-2"></i> 4 new messages <span
							class="float-right text-muted text-sm">3 mins</span>
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item"> <i
							class="fas fa-users mr-2"></i> 8 friend requests <span
							class="float-right text-muted text-sm">12 hours</span>
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item"> <i class="fas fa-file mr-2"></i>
							3 new reports <span class="float-right text-muted text-sm">2
								days</span>
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item dropdown-footer">See All
							Notifications</a>
					</div></li>
				<li class="nav-item"><a class="nav-link"
					data-widget="fullscreen" href="#" role="button"> <i
						class="fas fa-expand-arrows-alt"></i>
				</a></li>
				<li class="nav-item"><a class="nav-link"
					data-widget="control-sidebar" data-slide="true" href="#"
					role="button"> <i class="fas fa-th-large"></i>
				</a></li>
			</ul>
		</nav>
		<!-- /.navbar -->

		<!-- Main Sidebar Container -->
		<aside class="main-sidebar sidebar-dark-primary elevation-4">
			<!-- Brand Logo -->
			<!-- <a href="index3.html" class="brand-link">
      <img src="dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
      <span class="brand-text font-weight-light">AdminLTE 3</span>
    </a> -->

			<!-- Sidebar -->
			<div class="sidebar">
				<!-- Sidebar user panel (optional) -->
				<div class="user-panel mt-3 pb-3 mb-3 d-flex">
					<div class="image">
						<img src="img/logo.gif" class="img-circle elevation-2"
							alt="User Image">
					</div>
					<div class="info">
						<a href="#" class="d-block">KOD 관리자</a>
					</div>
				</div>

				<!-- SidebarSearch Form -->
				<div class="form-inline">
					<div class="input-group" data-widget="sidebar-search">
						<input class="form-control form-control-sidebar" type="search"
							placeholder="Search" aria-label="Search">
						<div class="input-group-append">
							<button class="btn btn-sidebar">
								<i class="fas fa-search fa-fw"></i>
							</button>
						</div>
					</div>
				</div>

				<!-- Sidebar Menu -->
				<nav class="mt-2">
					<ul class="nav nav-pills nav-sidebar flex-column"
						data-widget="treeview" role="menu" data-accordion="false">
						<!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
						<li class="nav-item ">
						<a href="#" class="nav-link active"> 
						<i class="nav-icon fas fa-tachometer-alt"></i>
								<p>매출 현황 <i class="right fas fa-angle-left"></i></p>
						</a>
							<ul class="nav nav-treeview">
								<li class="nav-item">
									<a href="#" class="nav-link active">
										<i class="far fa-circle nav-icon"></i>
										<p>월 매출액</p>
									</a>
								</li>
								<li class="nav-item">
									<a href="#" class="nav-link"> 
									<i class="far fa-circle nav-icon"></i>
										<p>상품별 판매량</p>
									</a>
								</li>
							</ul>
						</li>
						<li class="nav-item ">
						<a href="#" class="nav-link active"> 
						<i class="nav-icon fas fa-user-alt"></i>
								<p>회원 관리<i class="right fas fa-angle-left"></i></p>
						</a>
							<ul class="nav nav-treeview">
								<li class="nav-item">
									<a href="#" class="nav-link">
										<i class="far fa-circle nav-icon"></i>
										<p>회원 등급 관리</p>
									</a>
								</li>
								<li class="nav-item">
									<a href="#" class="nav-link"> 
									<i class="far fa-circle nav-icon"></i>
										<p>회원 정보 관리</p>
									</a>
								</li>
							</ul>
						</li>
						<li class="nav-item ">
						<a href="#" class="nav-link active"> 
						<i class="nav-icon fas fa-store-alt"></i>
								<p>상품 관리 <i class="right fas fa-angle-left"></i></p>
						</a>
							<ul class="nav nav-treeview">
								<li class="nav-item">
									<a href="#" class="nav-link">
										<i class="far fa-circle nav-icon"></i>
										<p>상품 목록</p>
									</a>
								</li>
								<li class="nav-item">
									<a href="#" class="nav-link"> 
									<i class="far fa-circle nav-icon"></i>
										<p>상품 등록</p>
									</a>
								</li>
								<li class="nav-item">
									<a href="#" class="nav-link"> 
									<i class="far fa-circle nav-icon"></i>
										<p>재고 관리</p>
									</a>
								</li>
								<li class="nav-item">
									<a href="#" class="nav-link"> 
									<i class="far fa-circle nav-icon"></i>
										<p>상품 삭제</p>
									</a>
								</li>
							</ul>
						</li>
						<li class="nav-item ">
						<a href="#" class="nav-link active"> 
						<i class="nav-icon fas fa-ticket-alt"></i>
								<p>쿠폰 관리<i class="right fas fa-angle-left"></i></p>
						</a>
							<ul class="nav nav-treeview">
								<li class="nav-item">
									<a href="adminCouponIssue.jsp" class="nav-link">
										<i class="far fa-circle nav-icon"></i>
										<p>쿠폰 발행</p>
									</a>
								</li>
								<li class="nav-item">
									<a href="#" class="nav-link"> 
									<i class="far fa-circle nav-icon"></i>
										<p>쿠폰 발행 목록</p>
									</a>
								</li>
								<li class="nav-item">
									<a href="#" class="nav-link"> 
									<i class="far fa-circle nav-icon"></i>
										<p>쿠폰 사용 목록</p>
									</a>
								</li>
								<li class="nav-item">
									<a href="#" class="nav-link"> 
									<i class="far fa-circle nav-icon"></i>
										<p>쿠폰 삭제</p>
									</a>
								</li>
							</ul>
						</li>
						<li class="nav-item ">
						<a href="#" class="nav-link active"> 
						<i class="nav-icon fas fa-list-alt"></i>
								<p>리뷰 관리<i class="right fas fa-angle-left"></i></p>
						</a>
							<ul class="nav nav-treeview">
								<li class="nav-item">
									<a href="#" class="nav-link">
										<i class="far fa-circle nav-icon"></i>
										<p>리뷰 목록</p>
									</a>
								</li>
							</ul>
						</li>

						<!-- <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-th"></i>
              <p>
                Simple Link
                <span class="right badge badge-danger">New</span>
              </p>
            </a>
          </li> -->
					</ul>
				</nav>
				<!-- /.sidebar-menu -->
			</div>
			<!-- /.sidebar -->
		</aside>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<div class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1 class="m-0">대시보드</h1>
						</div>
						<!-- /.col -->
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="#">Home</a></li>
								<li class="breadcrumb-item active">대시보드</li>
							</ol>
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.container-fluid -->
			</div>
			<!-- /.content-header -->

			<!-- Main content -->
			<div class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-sm-6">
						
						<!-- 쇼핑몰 통계 -->
							<div class="card">
								<div class="card-header">
									<h3 class="card-title">
										<i class="far fa-chart-bar"></i> 쇼핑몰 통계
									</h3>

									<div class="card-tools">
										<button type="button" class="btn btn-tool"
											data-card-widget="collapse">
											<i class="fas fa-minus"></i>
										</button>
										<button type="button" class="btn btn-tool"
											data-card-widget="remove">
											<i class="fas fa-times"></i>
										</button>
									</div>
								</div>
								<!-- /.card-header -->
								<div class="card-body">
									<div class="row">
										<div class="col-6 col-md-3 text-center">
											<input type="text" class="knob" value="30" data-width="90"
												data-height="90" data-fgColor="#3c8dbc">

											<div class="knob-label">새로운 방문자 수</div>
										</div>
										<!-- ./col -->
										<div class="col-6 col-md-3 text-center">
											<input type="text" class="knob" value="70" data-width="90"
												data-height="90" data-fgColor="#f56954">

											<div class="knob-label">일일 방문자 수</div>
										</div>
										<!-- ./col -->
										<div class="col-6 col-md-3 text-center">
											<input type="text" class="knob" value="80" data-min="0"
												data-max="150" data-width="90" data-height="90"
												data-fgColor="#00a65a">

											<div class="knob-label">일일 매출액(단위 : 만원)</div>
										</div>
										<!-- ./col -->
										<div class="col-6 col-md-3 text-center">
											<input type="text" class="knob" value="10" data-width="90"
												data-height="90" data-fgColor="#00c0ef">

											<div class="knob-label">주문 취소 비율</div>
										</div>
										<!-- ./col -->
									</div>
									<!-- /.row -->

									<div class="row">
										<div class="col-6 text-center">
											<input type="text" class="knob" value="90" data-width="90"
												data-height="90" data-fgColor="#932ab6">

											<div class="knob-label">누적 방문자 수</div>
										</div>
										<!-- ./col -->
										<div class="col-6 text-center">
											<input type="text" class="knob" value="500" data-min="0"
												data-max="1000" data-width="90" data-height="90"
												data-fgColor="#39CCCC">

											<div class="knob-label">이번달 매출액(단위 : 만원)</div>
										</div>
										<!-- ./col -->
									</div>
									<!-- /.row -->
								</div>
								<!-- /.card-body -->
							</div>
							<!-- /쇼핑몰 통계 -->
						</div>
							
							<!-- 회원 목록 테이블 -->
							<div class="col-sm-6">
								<div class="card">
					              <div class="card-header">
					                <h3 class="card-title">KOD 회원 목록</h3>
					              </div>
					              <!-- /.card-header -->
					              <div class="card-body">
					                <table id="example2" class="table table-bordered table-hover">
					                  <thead>
					                  <tr>
					                    <th>번호</th>
					                    <th>아이디</th>
					                    <th>이름</th>
					                    <th>전화번호</th>
					                    <th>등급</th>
					                  </tr>
					                  </thead>
					                  <tbody>
					                  <tr>
					                    <td>1</td>
					                    <td>user1</td>
					                    <td>홍길동</td>
					                    <td>010-1234-5678</td>
					                    <td>USER</td>
					                  </tr>
					                   <tr>
					                    <td>2</td>
					                    <td>user2</td>
					                    <td>박현민</td>
					                    <td>010-1234-5678</td>
					                    <td>USER</td>
					                  </tr>
					                   <tr>
					                    <td>3</td>
					                    <td>user3</td>
					                    <td>김진영</td>
					                    <td>010-1234-5678</td>
					                    <td>USER</td>
					                  </tr>
					                   <tr>
					                    <td>4</td>
					                    <td>user4</td>
					                    <td>조형련</td>
					                    <td>010-1234-5678</td>
					                    <td>USER</td>
					                  </tr>
					                   <tr>
					                    <td>5</td>
					                    <td>user5</td>
					                    <td>정현진</td>
					                    <td>010-1234-5678</td>
					                    <td>USER</td>
					                  </tr>
					                   <tr>
					                    <td>6</td>
					                    <td>user6</td>
					                    <td>홍길동6</td>
					                    <td>010-1234-5678</td>
					                    <td>USER</td>
					                  </tr>
					                   <tr>
					                    <td>7</td>
					                    <td>user7</td>
					                    <td>홍길동7</td>
					                    <td>010-1234-5678</td>
					                    <td>USER</td>
					                  </tr>
					                   <tr>
					                    <td>8</td>
					                    <td>user8</td>
					                    <td>홍길동8</td>
					                    <td>010-1234-5678</td>
					                    <td>USER</td>
					                  </tr>
					                   <tr>
					                    <td>9</td>
					                    <td>user9</td>
					                    <td>홍길동9</td>
					                    <td>010-1234-5678</td>
					                    <td>USER</td>
					                  </tr>
					                   <tr>
					                    <td>10</td>
					                    <td>user10</td>
					                    <td>홍길동10</td>
					                    <td>010-1234-5678</td>
					                    <td>USER</td>
					                  </tr>
					                   <tr>
					                    <td>11</td>
					                    <td>user11</td>
					                    <td>홍길동11</td>
					                    <td>010-1234-5678</td>
					                    <td>USER</td>
					                  </tr>
					                   <tr>
					                    <td>12</td>
					                    <td>user12</td>
					                    <td>홍길동12</td>
					                    <td>010-1234-5678</td>
					                    <td>USER</td>
					                  </tr>
					                   <tr>
					                    <td>13</td>
					                    <td>user13</td>
					                    <td>홍길동13</td>
					                    <td>010-1234-5678</td>
					                    <td>USER</td>
					                  </tr>
					                   <tr>
					                    <td>14</td>
					                    <td>user14</td>
					                    <td>홍길동14</td>
					                    <td>010-1234-5678</td>
					                    <td>USER</td>
					                  </tr>
					                   <tr>
					                    <td>15</td>
					                    <td>user15</td>
					                    <td>홍길동15</td>
					                    <td>010-1234-5678</td>
					                    <td>USER</td>
					                  </tr>
					                   <tr>
					                    <td>16</td>
					                    <td>user16</td>
					                    <td>홍길동16</td>
					                    <td>010-1234-5678</td>
					                    <td>USER</td>
					                  </tr>
					                   <tr>
					                    <td>17</td>
					                    <td>user17</td>
					                    <td>홍길동17</td>
					                    <td>010-1234-5678</td>
					                    <td>USER</td>
					                  </tr>
					                   <tr>
					                    <td>18</td>
					                    <td>user18</td>
					                    <td>홍길동18</td>
					                    <td>010-1234-5678</td>
					                    <td>USER</td>
					                  </tr>
					                   <tr>
					                    <td>19</td>
					                    <td>user19</td>
					                    <td>홍길동19</td>
					                    <td>010-1234-5678</td>
					                    <td>USER</td>
					                  </tr>
					                   <tr>
					                    <td>20</td>
					                    <td>user21</td>
					                    <td>홍길동21</td>
					                    <td>010-1234-5678</td>
					                    <td>USER</td>
					                  </tr>
					                   <tr>
					                    <td>22</td>
					                    <td>user22</td>
					                    <td>홍길동22</td>
					                    <td>010-1234-5678</td>
					                    <td>USER</td>
					                  </tr>
					                   <tr>
					                    <td>23</td>
					                    <td>user23</td>
					                    <td>관리자</td>
					                    <td>010-1234-5678</td>
					                    <td>ADMIN</td>
					                  </tr>
					                </table>
					              </div>
					              <!-- /.card-body -->
					            </div>
            <!-- /.card -->
							</div>
							<!-- /회원 목록 테이블 -->
							
							
							<!-- /.card-body -->
						</div>
						<!-- /.card -->
					</div>
					<!-- /.col-md-6 -->

					<!-- /.col-md-6 -->
				</div>
				<!-- /.row -->
			</div>
			<!-- /.container-fluid -->
		</div>
		<!-- /.content -->
	</div>
	<!-- /.content-wrapper -->

	<!-- Control Sidebar -->
	<aside class="control-sidebar control-sidebar-dark">
		<!-- Control sidebar content goes here -->
		<div class="p-3">
			<h5>Title</h5>
			<p>Sidebar content</p>
		</div>
	</aside>
	<!-- /.control-sidebar -->

	<!-- Main Footer -->
	<footer class="main-footer">
		<!-- To the right -->
		<div class="float-right d-none d-sm-inline">Anything you want</div>
		<!-- Default to the left -->
		<strong>Copyright &copy; 2023-2024 <a
			href="https://adminlte.io">KOD</a>.
		</strong> All rights reserved.
	</footer>
	</div>
	<!-- ./wrapper -->

	<!-- REQUIRED SCRIPTS -->
	<script src="plugins/jquery/jquery.min.js"></script>
	<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="dist/js/adminlte.min.js"></script>
	<script src="dist/js/demo.js"></script>
	<!-- Bootstrap 4 -->
	<!-- AdminLTE App -->
	<script src="plugins/chart.js/Chart.min.js"></script>
	<script src="plugins/sparklines/sparkline.js"></script>
	<script src="plugins/jquery-knob/jquery.knob.min.js"></script>
	<!-- ChartJS -->
	<!-- DataTables  & Plugins -->
	<script src="plugins/datatables/jquery.dataTables.min.js"></script>
	<script src="plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
	<script src="plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
	<script src="plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
	<script src="plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
	<script src="plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
	<script src="plugins/jszip/jszip.min.js"></script>
	<script src="plugins/pdfmake/pdfmake.min.js"></script>
	<script src="plugins/pdfmake/vfs_fonts.js"></script>
	<script src="plugins/datatables-buttons/js/buttons.html5.min.js"></script>
	<script src="plugins/datatables-buttons/js/buttons.print.min.js"></script>
	<script src="plugins/datatables-buttons/js/buttons.colVis.min.js"></script>
	<script>
		$(function() {
			/* jQueryKnob */

			$('.knob').knob(
					{
						/*change : function (value) {
						 //console.log("change : " + value);
						 },
						 release : function (value) {
						 console.log("release : " + value);
						 },
						 cancel : function () {
						 console.log("cancel : " + this.value);
						 },*/
						draw : function() {

							// "tron" case
							if (this.$.data('skin') == 'tron') {

								var a = this.angle(this.cv) // Angle
								, sa = this.startAngle // Previous start angle
								, sat = this.startAngle // Start angle
								, ea // Previous end angle
								, eat = sat + a // End angle
								, r = true

								this.g.lineWidth = this.lineWidth

								this.o.cursor && (sat = eat - 0.3)
										&& (eat = eat + 0.3)

								if (this.o.displayPrevious) {
									ea = this.startAngle
											+ this.angle(this.value)
									this.o.cursor && (sa = ea - 0.3)
											&& (ea = ea + 0.3)
									this.g.beginPath()
									this.g.strokeStyle = this.previousColor
									this.g.arc(this.xy, this.xy, this.radius
											- this.lineWidth, sa, ea, false)
									this.g.stroke()
								}

								this.g.beginPath()
								this.g.strokeStyle = r ? this.o.fgColor
										: this.fgColor
								this.g.arc(this.xy, this.xy, this.radius
										- this.lineWidth, sat, eat, false)
								this.g.stroke()

								this.g.lineWidth = 2
								this.g.beginPath()
								this.g.strokeStyle = this.o.fgColor
								this.g.arc(this.xy, this.xy, this.radius
										- this.lineWidth + 1 + this.lineWidth
										* 2 / 3, 0, 2 * Math.PI, false)
								this.g.stroke()

								return false
							}
						}
					})
			/* END JQUERY KNOB */

			//INITIALIZE SPARKLINE CHARTS
			var sparkline1 = new Sparkline($('#sparkline-1')[0], {
				width : 240,
				height : 70,
				lineColor : '#92c1dc',
				endColor : '#92c1dc'
			})
			var sparkline2 = new Sparkline($('#sparkline-2')[0], {
				width : 240,
				height : 70,
				lineColor : '#f56954',
				endColor : '#f56954'
			})
			var sparkline3 = new Sparkline($('#sparkline-3')[0], {
				width : 240,
				height : 70,
				lineColor : '#3af221',
				endColor : '#3af221'
			})

			sparkline1
					.draw([ 1000, 1200, 920, 927, 931, 1027, 819, 930, 1021 ])
			sparkline2.draw([ 515, 519, 520, 522, 652, 810, 370, 627, 319, 630,
					921 ])
			sparkline3.draw([ 15, 19, 20, 22, 33, 27, 31, 27, 19, 30, 21 ])

		})
	</script>
	
<!-- 회원 목록 js -->
<!-- Page specific script -->
<script>
  $(function () {
    /* $("#example1").DataTable({
      "responsive": true, "lengthChange": false, "autoWidth": false,
      "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
    }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)'); */
    $('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false,
      "responsive": true,
      "columnDefs": [
    	  {"orderable": false, "targets":[1,2,3]} // target은 0부터 시작, 1,2,3(아이디, 이름, 전화번호)는 정렬에서 제외
      ],
    });
  });
</script>



	<!-- jQuery -->


</body>
</html>
