<%-- 
    Document   : ViewTimeline
    Created on : 08-Mar-2018, 14:52:41
    Author     : jidev
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Timeline</title>
    </head>
    <body>
        <input type="button" value="Back to Register" onclick="location.href'TimelineRegister'"/>
        <br>
        </br>
        <h1>Timeline Title goes here</h1>
        <form action="afterSelectingEvent" method="POST"> 
            <table>	
                <tr>
                    <th>Event Title: </th>
                    <th>Location: </th>
                    <th>Attachments: </th>
                </tr>
		<c:forEach var="eventEntry" items="${eventBank.events}" >
                    <tr>
                        <th><input type="submit" name="selectedEvent" value= "${eventEntry.value.eventTitle}" onclick="location.href='ViewEvent'"</th>
                        <th><input type="text" name="selectedEvent" value="${eventEntry.value.eventLocation}"/></th>
                        <th><input type="text" name="selectedEvent" value="${eventEntry.value.eventAttachmentNo}"/></th>
                    </tr>
		</c:forEach>
            </table>
                <input type="submit" value="New Event" onclick="location.href='newEvent'"/>
        </form>
    </body>
</html>
