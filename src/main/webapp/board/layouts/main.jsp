<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Vector"%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/board/layouts_main.css">
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<%@include file="/board/layouts/Bean.jsp" %>
<div class="mainPage">

<div class="w3-container">
  <h2>게시글 목록</h2>
  <br/> 
<%
int pageSize = 10; // Set your desired page size here
int pageNum = 1;

if (request.getParameter("pageNum") != null && !request.getParameter("pageNum").isEmpty()) {
    pageNum = Integer.parseInt(request.getParameter("pageNum"));

} 

BoardMgr bMgr = new BoardMgr();
/* List<boardBean> list = bMgr.getBoardList();  
 */
Vector<boardBean> vlist = bMgr.getBoardList1(pageNum, pageSize);
int listSize = vlist.size();
Long post_no, post_writer;
String post_time, post_title, post_content, post_filePath, post_writer_id;
Long post_viewcount, post_likecount;
Long count = 0L;

for (int i = 0; i < vlist.size(); i++) {
    post_no = vlist.get(i).getPost_no();
    post_time = vlist.get(i).getPost_time();
    post_title = vlist.get(i).getPost_title();
    post_content = vlist.get(i).getPost_content();
    post_filePath = vlist.get(i).getPost_filePath();
    post_writer = vlist.get(i).getPost_writer();
    post_writer_id = bMgr.findUser(post_writer);
    post_viewcount = vlist.get(i).getPost_viewcount();
    post_likecount = vlist.get(i).getPost_likecount(); 
    count++;
%>
<script>
document.addEventListener('DOMContentLoaded', function() {
    getFirstImageLink(`<%=post_content%>`, <%=post_no%>);
});
</script>
<%  String mysqlDatetime = post_time; %>
<%@include file="/board/layouts/timeCalculate.jsp" %>
<ul class="w3-ul">
    <li class="w3-bar w3-border">
        <a href="<%=request.getContextPath()%>/board/view/boardView.jsp?post_no=<%=post_no%>">
            <span class="w3-bar-item w3-button w3-white w3-xlarge w3-right"></span>
            <!-- 이미지를 동적으로 변경할 대상 -->
            <img id="thumbnail<%=post_no%>" src="<%=request.getContextPath()%>/assets/images/board/default-background.png" 
            class="w3-bar-item w3 w3-hide-small" style="width:100px">
            <div class="w3-bar-item">
                <span class="w3-large"><%=post_writer_id%></span>
                <span class="post_Formatted_time" id="post_Formatted_time"><%=formattedDateTime%></span>
                <br>
                <span><%=post_title%></span>
            </div>
        </a>
    </li>
</ul>

<%
   }
%>
	</div>
</div>
<div>
<%
    Vector<boardBean> vlistAll = bMgr.getBoardList1(0, pageSize);
    int listSizeAll = vlistAll.size();

    int totalPages = (int) Math.ceil((double) listSizeAll / pageSize);

%>

    <div class="pagination-container">
    	<% for (int i = 1; i <= totalPages; i++) { %>
        	<div class="pagination">
           	 <a href="<%=request.getContextPath()%>/board/index.jsp?pageNum=<%=i%>"><%= i %></a>
        	</div>
    	<% } %>
	</div>
</div>