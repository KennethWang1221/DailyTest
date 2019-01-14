<%@ page import="UserDao.UserDao" %>
<%@ page import="java.util.List" %>
<%@ page import="user.vo.UserVo" %><%--
  Created by IntelliJ IDEA.
  User: wangxiang
  Date: 2017/12/2
  Time: 上午10:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>listAllUsers</h2>
<%
    //jsp 页面程序中，禁止导入java.sql 包
    //调用dao 对象的方法，获取封装记录映射的vo对象的集合
    List li=new UserDao().getAllUsers();
    //检测vo对象的集合有无数据
%>
<%
    if(li!=null&&li.size()>0){
%>
<table width="600" border="1" align="center" style="color: blue">
    <tr>
        <th>编号</th>
        <th>姓名</th>
        <th>密码</th>
        <th>年龄</th>
    </tr>
   <%
       for(int i=0;i<li.size();i++){
           UserVo user= (UserVo) li.get(i);
   %>
    <tr>
        <td><%=user.getId() %></td>
        <td><%=user.getName() %></td>
        <td><%=user.getPassword() %></td>
        <td><%=user.getAge() %></td>

    </tr>

    <%
       }
    %>
</table>
<%
    }
    else {
%>
<table width="800" border="1" align="center">
    <tr><td>暂无用户数据！</td></tr>
</table>
<%
    }

%>

</body>
</html>
