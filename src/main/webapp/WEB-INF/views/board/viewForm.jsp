<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>view FORM</title>
</head>
<body>
<div>
	<글 조회>
    <form id="viewForm" name="viewForm" method="post">
        <div>
            <h2>글 쓰 기</h2>
            <div>
                <table>
                    <tr>
                        <th>제목</th>
                        <td><input style="width: 500px" height="30px" type="text" id="title" name="title" value="${result.title }"/></td>
                    </tr>
                    <tr>
                        <th>내용</th>
                        <td><textarea style="width: 500px" rows="10" cols="10" id="content" name="content"><c:out value="${result.content }"/></textarea></td>
                    </tr>
                    <tr>
                        <th>작성자</th>
                        <td><input style="width: 500px" height="30px type="text" id="writer" name="writer" value="${result.writer }"/></td>
                    </tr>
                </table>
                <div>
                    <a href='#' onClick='bUpdate()'>수정</a>
                    <a href='#' onClick='cancel()'>목록</a>
                    <a href='#' onClick='bRelay()'>답변</a>                    
                </div>
            </div>
        </div>
        <input type='hidden' id='userNO' name='userNO' value='${result.userNO }' />
    </form>
<script>

//목록
function cancel(){
    
    var form = document.getElementById("viewForm");
    form.action = "<c:url value='/board/boardList.do'/>";
    form.submit();
    
}
 
//수정
function bUpdate(){
    
    var form = document.getElementById("viewForm");
    form.action = "<c:url value='/board/updateboard.do'/>";
    form.submit();
}
 
//답변
function bRelay(){
    
    var form = document.getElementById("viewForm");
    form.action = "<c:url value='/board/relayForm.do'/>";
    form.submit();
    
}
</script>
</div>
</body>
</html>