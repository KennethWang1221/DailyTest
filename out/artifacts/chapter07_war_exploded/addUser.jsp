<%@ page import="user.vo.UserVo" %>
<%@ page import="UserDao.UserDao" %><%--
  Created by IntelliJ IDEA.
  User: wangxiang
  Date: 2017/12/1
  Time: 下午8:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
    //真正接收表单信息，组织数据单位（封装为vo对象），diao用dao对象，完成数据库访问
    String name = request.getParameter("name");
    String password = request.getParameter("password");
    String password2 = request.getParameter("password2");
    String age = request.getParameter("age");


    //数据校验
    if (!password.equals(password2)) {
%>
<script type="text/javascript">
    alert("两次密码不一致");
    window.location.href = "addUserForm.jsp";
</script>
<%
        return;
    }

    //封装vo对象
    UserVo user = new UserVo();
    user.setName(name);
    user.setPassword(password);
    user.setAge(age);


    //访问dao对象，完成入库添加
    int res = new UserDao().addUserByObj(user);
    if (res > 0) {
%>
<script type="text/javascript">
    alert("用户添加成功");
    window.location.href = "listUsers.jsp";
</script>
<%
} else {
%>
<script type="text/javascript">
    alert("用户添加失败");
    window.location.href = "addUserForm.jsp";
</script>
<%
    }

%>

</body>
</html>
