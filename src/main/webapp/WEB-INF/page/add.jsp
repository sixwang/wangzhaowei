<%@page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>添加文档</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/doc/add" method="post">
    <table width="500" height="130" border="1" cellpadding="5" cellspacing="0" align="center"
           style="margin-top:40px;border-color: #ECFFFF">

        <tr>
            <td>文档名称：<input type="text" name="docname"/> <br></td>
        </tr>
        <tr>
            <td>文档摘要：<input type="text" name="digest"/><br></td>
        </tr>
        <tr>
            <td>上传人:&nbsp&nbsp&nbsp&nbsp&nbsp <input type="text" name="name"/><br></td>
        </tr>
        <tr>
            <td>上传日期：<input type="date" name="date"/><br></td>
        </tr>
        <tr>
            <td><input type="reset" value="重置"/>
                <input type="submit" value="提交"/></td>
        </tr>


    </table>
</form>
</body>
</html>