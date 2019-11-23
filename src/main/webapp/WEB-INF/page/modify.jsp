<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改文档</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/doc/update" method="post">
    <table width="500" height="130" border="1" cellpadding="5" cellspacing="0" align="center"
           style="margin-top:40px;border-color: #ECFFFF">
        <tr>
            <td>
                编号：&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text" name="id" value="${id1.id}" readonly> <br>
            </td>
        </tr>
        <tr>
            <td>文档名称：<input type="text" name="docname" value="${id1.docname}"/></td>
        </tr>
        <tr>
            <td>文档摘要：<input type="text" name="digest" value="${id1.digest}"/></td>
        </tr>
        <tr>
            <td> 上传人:&nbsp&nbsp&nbsp&nbsp&nbsp <input type="text" name="name" value="${id1.name}"/></td>
        </tr>
        <tr>
            <td>上传日期：<input type="date" name="date" value="${id1.date}"/></td>
        </tr>
        <tr>
            <td><input type="reset" value="重置"/>
                <input type="submit" value="提交"/></td>
        </tr>


    </table>
</form>
</body>
</html>
