<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file = "header.html" %>
<div class="form_bloack" style="margin:50px 300px">
<h4>Camp Post Form</h4>
<form name="camp_registration form" action="CampEvent">
			<p>Title:<select name="cmp_Title"></p>
                <option value="blood_donation">Blood Donation</option>
                <option value="Education">Educational</option>
                <option value="Awareness">Awareness Program</option>
                <option value="other">Other</option></select>
            Other:<input type="text" name="cmp_TitleOth_camp" >
<!--                 <input type="text" name="title"> -->
            <p>Purpose of camp:<input type="text" name="purpose" required></p>
            
            <p>Start Date:<input type="date" name="start_date" required></p>
            <p>End Date:<input type="date"  name="end_date" required></p>
            <p>Location:<input type="text" name="location" required></p>
            <p>Target Number of People:<input type="number" name = "participants" required></p>
            <button type="submit" name="submit">Post Form</button>
            <button type="reset" name="reset">Reset Details</button>

        </form>
    </div>
    <%@ include file = "footer.html" %>
</body>
</html>