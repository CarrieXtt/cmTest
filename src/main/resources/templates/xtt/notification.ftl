<!--����-->
<!DOCTYPE html>
<html lang="ch">
<head style="font-size: 35px">
    <meta name="viewport"
          content="width=device-width,user-scale=no,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0"
          charset="GB2312">
    <link rel="stylesheet" href="ftl/seminar.css" charset="GB2312"/>
    <title>����</title>
</head>
<body>
<center>
    <!--ͷ������һ������Ҫ����-->
    <div id="header1">
        <center>
	            <span>
	                <b><</b>
	            </span>
            ����
            <span1>
                <b><li class="dao li1">+
                    <ul class="sub sub1">
                        <a href="/cm/teacher/notification"><li class="main">����</li></a>
                        <a href="/cm/teacher/index"><li class="main">����ҳ</li></a>
                        <a href="/cm/teacher/course/seminar/"><li class="main">���ۿ�</li></a>
                    </ul>
                </li>
                </b>
            </span1>
        </center>
    </div>
    <div class="r" onclick="showOtherDiv('r_1')">${}</div>
    <div id="r_1" >
        <br/>
        ${}-${}������${}
        <table>
            <tr><td><button class="button_r_1">ͬ��</button></td>
            <td><button class="button_r">�ܾ�</button></td></tr>
        </table>
    </div>
</center>
<script type="text/javascript">
    function showOtherDiv(id){
        var  obj=document.getElementById(id);
        if(obj.style.display=="none")
            obj.style.display="block";
        else
            obj.style.display="none";
    }
</script>
</body>
</html>