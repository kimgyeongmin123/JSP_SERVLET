<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@page import="C08.*" %>

	<%
	//Param
	String userid = request.getParameter("userid");
	String pwd = request.getParameter("pwd");
	
	//Attr
	request.setAttribute("R_KEY", "R_VALUE");
	request.setAttribute("S_KEY", "S_VALUE");
	
	//Context key 중복
	pageContext.setAttribute("KEY", "P_VALUE");
	request.setAttribute("KEY", "R_VALUE");
	session.setAttribute("KEY", "S_VALUE");
	
	//Person객체 생성
	Person obj = new Person("경미니",24,"대구");
	request.setAttribute("obj", obj);
	
	//null 확인
	Integer list1[]=null;
	Integer list2[]={1,2,3};
	request.setAttribute("list1",list1);
	request.setAttribute("list2",list2);
	
	
	%>
	USERID :
	<%=userid%><br /> PWD :
	<%=pwd%><br />

	<hr />
	<h2>EL</h2>
	[PARAM] USERID : ${param.userid}
	<br /> [PARAM] PW : ${param.pwd }
	<br />

	<hr />
	[ATTR] REQUEST ATTR : ${requestScope.R_KEY}
	<br /> [ATTR] REQUEST ATTR : ${R_KEY}
	<br /> [ATTR] SESSION ATTR : ${sessionScope.S_KEY}
	<br /> [ATTR] SESSION ATTR : ${S_KEY}
	<br /> 
	<hr/>
	[중복KEY] KEY : ${KEY }<br/>
	<hr/>
	[OBJECT] OBJ : ${obj }<br/>
	[OBJECT] OBJ : ${obj.name}<br/>
	[OBJECT] OBJ : ${obj.age}<br/>
	[OBJECT] OBJ : ${obj.addr}<br/>
	<hr/>
	[ETC] 연산처리 : <%=1+1 %><br/>
	[ETC] 연산처리 : ${1+"1" }<br/>
	<hr/>
	<%-- [NULL] empty null : <%=null %><br/> --%>
	[NULL] empty null : ${null }<br/>
	[NULL] empty null : ${empty null }<br/>
	[NULL] list1==null : ${list1==null }<br/>
	[NULL] list1==null : ${empty list1 }<br/>

</body>
</html>