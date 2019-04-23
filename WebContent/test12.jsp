<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
$('tr td:first-child input[type="checkbox"]').click( function() {
   //enable/disable all except checkboxes, based on the row is checked or not
   $(this).closest('tr').find(":input:not(:first)").attr('disabled', !this.checked);
});
</script>


<style type="text/css">

table {
    border-collapse: collapse;
}
table, th, td {
    border: 1px solid black;
    padding: 2px;
}

table, th, td {
    text-align: center;
}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table>
  <tr>
    <th>Enable</th>
    <th>Text</th>
    <th>Select</th>
    <th>textinput</th>
    <th>Select 2</th>
  </tr>
  <tr>
    <td><input type="checkbox" checked/></td>
    <td><input type="text" value="1111"/></td>
    <td><select><option>A</option><option>B</option></select></td>
    <td><input type="text" value="AAAAA"/></td>
    <td><select><option>A</option><option>B</option></select></td>
  </tr>
  <tr>
    <td><input type="checkbox" checked/></td>
    <td><input type="text" value="2222"/></td>
    <td><select><option>A</option><option>B</option></select></td>
    <td><input type="text" value="BBBB"/></td>
    <td><select><option>A</option><option>B</option></select></td>
  </tr>
  <tr>
    <td><input type="checkbox" checked/></td>
    <td><input type="text" value="3333"/></td>
    <td><select><option>A</option><option>B</option></select></td>
    <td><input type="text" value="CCCC"/></td>
    <td><select><option>A</option><option>B</option></select></td>
  </tr>
</table>
</body>
</html>