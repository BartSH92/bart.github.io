<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    char[] decbook1 = {'5', '2', '#', '8', '1', '3', '*', '%', '=', '(', ')', ';', '?', '@', ':', '7'};
        char[] decbook2 = {'a', 'b', 'd', 'e', 'f', 'g', 'n', 'o', 'p', 'r', 's', 't', 'u', 'v', 'y', ' '};
        String en_text = request.getParameter("en_text");
        
        char[] encbook = en_text.toCharArray();
        for(int i = 0; i < encbook.length; i++) {
        	for(int j = 0; j < decbook2.length;j++)
        	{
        		if(encbook[i] == decbook2[j]) {
        			encbook[i] = decbook1[j];
        		}
        		else if((encbook[i] !=decbook2[j]) && (j == decbook2.length)) {
        			encbook[i] = encbook[i];
        		}
        	}
        }
        
        String result = String.valueOf(encbook);
        de_text = result;
        out.println(de_text);
%>
<!DOCTYPE html>
<html>

<head>
  <title>BartSH's IT Lab</title>
</head>
<body>
    <h2><%=result %></h2>
</body>
</html>