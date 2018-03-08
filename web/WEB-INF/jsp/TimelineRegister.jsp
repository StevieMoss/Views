<%-- 
    Document   : TimelineRegister
    Created on : 08-Mar-2018, 14:04:43
    Author     : jidev
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Timeline Register</title>
    </head>
    <body bgcolor="#95B9C7">
        <h1> Please Select a Timeline </h1>
        <input type="submit" value ="New Timeline" onclick ="location.href'newTimeline'"/>
        <br></br>
        <br></br>
        <table>
            <tr>
                <th>Timeline Title</th>
                <th>Date Created</th>
            </tr>
        <form action="afterSelectingTimeline" method="POST"> 
								
		<c:forEach var="timelineEntry" items="${TimelineBank.timelines}" >
                    <tr>
                    <th><input type="submit" name = "selectedTimeline" value= "${timelineEntry.value.timelineTitle}" onclick="location.href='ViewTimeline'"/></th>
                    <th><input type="text" name ="selectedTimeline" value="${timelineEntry.value.timelineDateString}"</th>
                    </tr>
		</c:forEach>
        </form>
        </table>
    </body>
</html>
