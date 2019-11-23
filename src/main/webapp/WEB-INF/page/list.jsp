<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>电子文档列表</title>
</head>
<body>

<table  width="800" height="130" border="1" cellpadding="5" cellspacing="0" align="center"
        style="margin-top:40px;border-color: #ECFFFF">
    <thead>
    <tr>

        <th>编号</th>
        <th>文档名</th>
        <th>文档摘要</th>
        <th>上传人</th>
        <th>上传时间</th>

        <th colspan="2">操作</th>

    </tr>
    </thead>
    <tbody>
    <c:forEach items="${list}" var="doc">
        <tr>
            <td>
                    ${doc.id}
            </td>
            <td>
                    ${doc.docname}
            </td>
            <td>
                    ${doc.digest}
            </td>
            <td>
                    ${doc.name}
            </td>
            <td>
                    ${doc.date}
            </td>

        <td><a href='${pageContext.request.contextPath}/doc/delete?id=${doc.id}'>删除</a></td>
        <td><a href='${pageContext.request.contextPath}/doc/getId?id=${doc.id}'>修改</a></td>

        </tr>
    </c:forEach>

    </tbody>


</table>


</body>
</html>
