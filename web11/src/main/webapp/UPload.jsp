<%@ page contentType="text/html;charset=EUC-KR"%>
<html>
<body>
<form name="frmName" method="post" enctype="multipart/form-data" 
action="UPload_process.jsp">
    user<br/> 
    <input type="text" name="user"><br/>
    title<br/> 
    <input type="text" name="title"><br/>
    file<br/> 
    <input type="file" name="uploadFile"><br/><br/>
    <input type="submit" value="UPLOAD"><br/>
</form>
</body>
</html>
