<%@include file="head/head.jsp"%>
<title>Registration page</title>

</head>
<body>

<div class="body1">
    <%@include file="head/menu.jsp"%>
    <h1>Register page</h1>
<center>
<form action="/save" method="post">
    Enter username:<input type="text" name="username" placeholder="username..."><br>
    Enter password:<input type="password" name="password" placeholder="password..."><br>
    Enter email:<input type="email" name="email" placeholder="email..."><br>
    Enter name:<input type="text" name="name" placeholder="name..."><br>
    Enter surname:<input type="text" name="surname" placeholder="surname..."><br>
    Enter age:<input type="number" name="age" placeholder="age..."><br>
    Enter pidrozdil_id:<input type="number" name="pidrozdil_id" placeholder="pidrozdil_id..."><br>
    <%--Enter id_del:<input type="bool!!!!" name="id_del" placeholder="id_del"><br>--%>
    <input type="submit" value="save">
    <input type="hidden"
           name="${_csrf.parameterName}"
           value="${_csrf.token}"/>
</form>
    <%--<th>id</th>--%>
    <%--<th>username</th>--%>
    <%--<th>password</th>--%>
    <%--<th>email</th>--%>
    <%--<th>name</th>--%>
    <%--<th>surname</th>--%>
    <%--<th>age</th>--%>
</center>

<%@include file="head/footer.jsp"%>
