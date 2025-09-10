<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <jsp:useBean id="calc" scope="page" class="jsproject.cho3.CalcBean"/>
    <jsp:setProperty property="*" name="calc"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<DIV align="center">
	<H3>계산기</H3>

<form name=form1 method=post>
	<input type="text" name="num1" width=200 size="5">
	<select name="op">
	<option selected>+</option>
    <option>-</option>
	<option>*</option>
	<option>/</option>
	</select>
	
	<input type="text" name="num2" width=200 size="5">
	<input type="submit" name="b1" value="계산">
	<input type="reset" name ="b2" value="재입력">

</form>

<Hr>

계산결과(표현식 이용): <%=calc.calculate1() %>
<%calc.calculate2(); %>

계산결과(속성값 이용): <jsp:getProperty name="calc" property="result"/>

</DIV>
</body>
</html>