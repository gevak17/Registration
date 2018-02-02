<ul class="menu">
    <li><a href="/">Main page</a></li>
    <t:authorize access="!hasRole('ROLE_USER')">
        <li><a href="/registration">Registration</a></li>
    </t:authorize>
    <%--<li><a href="/allUser">Show All User</a></li>--%>
    <%--<li><a href="/user">User page</a></li>--%>
    <%--<li><a href="/admin">Admin page</a></li>--%>
    <t:authorize access="hasRole('ROLE_USER')">
        <li><a href="/user">User page</a></li>
    </t:authorize>
    <%--<t:authorize access="hasRole('ROLE_USER')">--%>
    <li><a href="/allUser">List users</a></li>
    <%--</t:authorize>--%>
    <t:authorize access="!hasRole('ROLE_USER')">
        <li><a href="/login">Sign in</a></li>
    </t:authorize>
    <t:authorize access="hasRole('ROLE_USER')">
        <li><a href="/logout">Exit</a></li>
    </t:authorize>
    <%--<t:authorize access="hasRole('ROLE_ADMIN')">--%>
    <%--<li><a href="/admin">Admin page</a></li>--%>
    <%--</t:authorize>--%>
</ul>