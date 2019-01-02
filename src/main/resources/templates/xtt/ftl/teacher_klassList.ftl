<#--班级信息-->
<!DOCTYPE html>
<html lang="ch">
<head style="font-size:35px">
    <meta name="viewport"
          content="width=device-width,user-scale=no,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0"
          charset="GB2312">
    <link rel="stylesheet" href="seminar.css" charset="GB2312"/>
    <title>班级信息</title>
</head>
<body>
<center>
    <#--头都用这一个，不要改了-->
    <div id="header1">
        <center>
	            <span>
	                <
	            </span>
            班级信息
            <span1>
                <li class="dao li1">+
                        <ul class="sub sub1">
                            <a href="/cm/teacher/notification"><li class="main">代办</li></a>
                            <a href="/cm/teacher/setting"><li class="main">个人页</li></a>
                            <a href="/cm/teacher/course/seminar/"><li class="main">讨论课</li></a>
                        </ul>
                    </li>
            </span1>
        </center>
    </div>
    <#--List<KlassVO> klassList-->
    <#list klassList as klass>
        <div class="div6">
            <table class="table_d6" cellpadding="" cellspacing="">
                <tr><td class="c"><p5>${klass.grade}-${klass.klassSerial}</p5></td> </tr>
                <tr>
                    <td class="c">讨论课时间</td>
                    <td class="c"></td>
                    <td class="c">${klass.klassTime}</td>
                </tr>
                <tr>
                    <td class="c">讨论课地点</td>
                    <td class="c"></td>
                    <td class="c">${klass.klassLocation}</td>
                </tr>
                <tr>
                    <td class="c">班级学生名单</td>
                    <td class="c"></td>
                    <#--List<UserVO>-->
                    <table id="add_student"></table>
                    <td class="c"><button type="button" class="button11" onclick="addStudent(${klass.studentVOList});">点击查看</button></td>
                </tr>
                <tr>
                    <td class="c"></td>
                    <form action="/cm/teacher/course/klass/${klass.Id}" method="post" name="deleteKlass">
                        <td class="c"><button class="button5_1" name="delete" onclick="deleteKlass();">删除班级</button> </td>
                    </form>
                </tr>
            </table>
        </div>
    </#list>
    </br>
    <form action="/cm/teacher/course/klass/create" method="post" name="addKlass">
        <button class="button1" onclick="addKlass();">+ 新建班级</button>
    </form>
</center>
<script type="text/javascript">
    function addKlass() {
        document.addKlass.onsubmit;
        // window.location.replace("/cm/teacher/course/klass/create");
    }
    function addStudent(e) {
        for(var i=0;i<e.size;i++){
            var td=document.getElementById("add");
            var tr=td.insertRow();
            var name=tr.insertCell(0);
            var account=tr.insertCell(1);
            var e1=document.createElement("input");
            e1.placeholder=${klassList.studentVOList.name};
            e1.className="toShowStudent";
            e1.readOnly=true;
            name.appendChild(e1);
            var e2=document.createElement("input");
            e2.placeholder=${klassList.studentVOList.account};
            e2.className="toShowStudent";
            e2.readOnly=true;
            account.appendChild(e2);
        }
    }
    function deleteKlass() {
        document.deleteKlass.onsubmit;
        confirm("删除班级成功！");
        window.location.replace("/cm/teacher/course/klass");
    }
</script>
</body>
</html>