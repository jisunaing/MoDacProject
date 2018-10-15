package com.modu.modac.service.impl;

public class PagingUtil2 {

	public static String pagingText(int totalRecordCount,int pageSize,int blockPage,int nowPage2,String page){
		String pagingStr="";
		
		//1.전체 페이지 구하기
		int totalPage= (int)(Math.ceil(((double)totalRecordCount/pageSize)));
		
		int intTemp = ((nowPage2 - 1) / blockPage) * blockPage + 1;

		//처음 및 이전을 위한 로직
		if(intTemp != 1){
                
			pagingStr+="<a href='"+page+"nowPage2=1'>◀◀</a>&nbsp;<a href='"+page+"nowPage2="+(intTemp -blockPage)+"'>◀</a>";
		}
		
		//페이지 표시 제어를 위한 변수
		int blockCount = 1;
		
		//페이지를 뿌려주는 로직
		//블락 페이지 수만큼 혹은 마지막 페이지가 될때까지 페이지를 표시한다1 
		while(blockCount <= blockPage && intTemp <= totalPage){  // 페이지 오버 를 체크
				//현재 페이지를 의미함
			if(intTemp == nowPage2){  
				pagingStr+="<span style='Color:red'>"+intTemp+"</span>&nbsp;";
			}
		     else
		    	 pagingStr+="<a href='"+page+"nowPage2="+intTemp+"'>"+intTemp+"</a>&nbsp;";
		       
			intTemp = intTemp + 1;
			blockCount = blockCount + 1;
		
		}

		//다음 및 마지막을 위한 로직
			
		if(intTemp <= totalPage){

			pagingStr+="<a href='"+page+"nowPage2="+intTemp+"'>▶</a>&nbsp;<a href='"+page+"nowPage2="+totalPage+"'>▶▶</a>"; 

				   
		}
		
		return pagingStr;
	}
	public static String pagingBootStrapStyle(int totalRecordCount,int pageSize,int blockPage,int nowPage2,String page){
		
		String pagingStr="<nav class='text-center'><ul class=\"pagination\" >";
		
		//1.전체 페이지 구하기
		int totalPage= (int)(Math.ceil(((double)totalRecordCount/pageSize)));
		
		int intTemp = ((nowPage2 - 1) / blockPage) * blockPage + 1;

		//처음 및 이전을 위한 로직
		if(intTemp != 1){
			pagingStr+="<li>\r\n" + 
					"<a href='"+page+"nowPage2=1'>\r\n" + 
					"<span >&laquo;</span>\r\n" + 
					"</a>\r\n" + 
					"</li>\r\n" + 
					"<li >\r\n" + 
					"<a href='"+page+"nowPage2="+(intTemp -blockPage)+"' >\r\n" + 
					"<span>&lsaquo;</span>\r\n" + 
					"</a>\r\n" + 
					"</li>";   
			
		}
		
		//페이지 표시 제어를 위한 변수
		int blockCount = 1;
		
		//페이지를 뿌려주는 로직
		//블락 페이지 수만큼 혹은 마지막 페이지가 될때까지 페이지를 표시한다1 
		while(blockCount <= blockPage && intTemp <= totalPage){  // 페이지 오버 를 체크
				//현재 페이지를 의미함
			if(intTemp == nowPage2){  
				pagingStr+="<li><a href='#'><span style='Color:red'>"+intTemp+"</span></a></li>";
			}
		     else
		    	 pagingStr+="<li><a href='"+page+"nowPage2="+intTemp+"'>"+intTemp+"</a></li>";
		       
			intTemp = intTemp + 1;
			blockCount = blockCount + 1;
		
		}

		//다음 및 마지막을 위한 로직
			
		if(intTemp <= totalPage){
			pagingStr+="<li>\r\n" + 
					"<a href='"+page+"nowPage2="+intTemp+"'>\r\n" + 
					"<span >&rsaquo;</span>\r\n" + 
					"</a>\r\n" + 
					"</li>\r\n" + 
					"<li>\r\n" + 
					"<a href='"+page+"nowPage2="+totalPage+"' >\r\n" + 
					"<span >&raquo;</span>\r\n" + 
					"</a>\r\n" + 
					"</li>";
							   
		}
		pagingStr+="</ul></nav>";
		return pagingStr;
	}
	
}
