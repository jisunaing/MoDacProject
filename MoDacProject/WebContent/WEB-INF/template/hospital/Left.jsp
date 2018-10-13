<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
      <aside class="main-sidebar">
         <section class="sidebar">
            <div class="user-panel">
               <div class="pull-left image">
                  <img src="<c:url value="/Images/doctor.jpg"/>" class="user-image" alt="User Image">
               </div>
               <div class="pull-left info">
                  <p>병원이름</p>
                  <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
               </div>
            </div>
            <ul class="sidebar-menu" data-widget="tree">
               <li class="header">카테고리</li>
               <li class="active treeview"><a href="#">
               <i  class="fa fa-dashboard"></i> <span>예약/문의 관리</span>
               <span  class="pull-right-container"> <i
                        class="fa fa-angle-left pull-right"></i>
                  </span>
               </a>
                  <ul class="treeview-menu">
                     <li><a href="<c:url value="/partner/hospital/ReservationMove.do"/>"><i class="fa fa-circle-o"></i>예약관리</a></li>
                     <li><a href="<c:url value="/partner/hospital/ReservationListMove.do"/>"><i class="fa fa-circle-o"></i>예약지난내역</a></li>
                     <li><a href="<c:url value="/partner/hospital/ReceiptMove.do"/>"><i class="fa fa-circle-o"></i>접수관리</a></li>
                     <li><a href="<c:url value="/partner/hospital/ReservationListMove.do"/>"><i class="fa fa-circle-o"></i>접수지난내역</a></li>
                  </ul>
               </li>
               <li class="treeview"><a href="#">
               <i class="fa fa-pie-chart"></i>
               <span>마이페이지</span>
               <span class="pull-right-container">
                  <i class="fa fa-angle-left pull-right"></i>
               </span>
               </a>
                  <ul class="treeview-menu">
                     <li>
                        <a href="<c:url value="/partner/mypage/partnerInfo.do"/>"><i class="fa fa-circle-o"></i>병원정보보기</a>
                     </li>
                  </ul>
               </li>
               <li class="treeview"><a href="#">
               <i class="fa fa-pie-chart"></i>
               <span>문의</span>
               <span class="pull-right-container">
               <i class="fa fa-angle-left pull-right"></i>
               </span>
               </a>
               <ul class="treeview-menu">
                     <li><a href="<c:url value="/partner/partnerQnA/partner_QnA.do"/>"><i class="fa fa-circle-o"></i>일반회원 문의 확인하기</a></li>

                     <li><a href="<c:url value="/partner/partnerQnA/admin_QnA.do"/>"><i class="fa fa-circle-o"></i>관리자와 문의하기</a></li>
                     
               </ul></li>
               
               <li class="treeview"><a href="#">
               <i class="fa fa-pie-chart"></i>
               <span>제휴 탈퇴</span>
               <span class="pull-right-container">
               <i class="fa fa-angle-left pull-right"></i>
               </span>
               </a>
               <ul class="treeview-menu">
                  <li>
                  <a href="<c:url value="/partner/withdrawal/partner_withdrawal.do"/>"><i class="fa fa-circle-o"></i>제휴 탈퇴 신청</a>
                  </li>
               </ul></li>
            </ul>
         </section>
      </aside>