<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
	int result =0;

	if(request.getMethod().equals("POST")) {
		String op = request.getParameter("operator");
		
		int num1= Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));
		
		if(op.equals("+")) {
			result= num1 + num2;
		}else if(op.equals("-")) {
			result= num1- num2;
		}else if(op.equals("*")) {
			result = num1 * num2;
		}else if(op.equals("/")) {
			result = num1  / num2;
	}
	}
%>
<html>
<head>
<meta charset="UTF-8">
<title>간단한 계산기</title>


</head>
<body>
<div>
<H3>계산기</H3>
<hr>
<form name=form1 method=post>
	<input type="text" name="num1" width=200 size="5">
	<select name="operator">
		<option selected>+</option>
		<option>-</option>
		<option>*</option>
		<option>/</option>
		
	
	</select>
	<input type="text" name="num2" width=200 size="5">
	<input type="submit" name="b1" value="계산">
	<input type="reset" name ="b2" value="재입력">
	<hr>
	계산결과: <%=result %>
</form>
</div>
</body>
</html>