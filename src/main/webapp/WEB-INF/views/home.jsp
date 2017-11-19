<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>
<html>
  <head>
    <title>Team Delta</title>
  </head>
  <body>
    <h1>Team Delta MQTT interface</h1>

    <h2>Publish a message</h2>

    <form:form modelAttribute="message" action="/publish" method="post">
      <form:label for="value" path="value">Message to publish:</form:label>
      <form:input path="value" type="text"/>

      <input type="submit" value="Publish"/>
    </form:form>

    <c:if test="${published}">
      <p>Published a message!</p>
    </c:if>

    <h2>Get a message</h2>

    <form:form action="/get" method="post">
      <input type="submit" value="Get one"/>
    </form:form>


    <h2>Publish a Local Message</h2>
    <form:form modelAttribute="message" action="/publish-local-alert" method="post">
      <form:label for="value" path="value">Message to publish:</form:label>
      <form:input path="value" type="text"/>

      <input type="submit" value="Publish"/>
    </form:form>

    <h2>Get a Local message</h2>
    <form:form action="/get-local-alert" method="post">
      <input type="submit" value="Get Local"/>
    </form:form>


    <c:choose>
      <c:when test="${got_queue_empty}">
        <p>Queue empty</p>
      </c:when>
      <c:when test="${got != null}">
        <p>Got message: <c:out value="${got}"/></p>
      </c:when>
    </c:choose>
  </body>
</html>
