<#--新建班级-->
<!DOCTYPE html>
<html lang="ch">
<head style="font-size:35px">
    <meta name="viewport"
          content="width=device-width,user-scale=no,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0"
          charset="GB2312">
    <link rel="stylesheet" href="seminar.css" charset="GB2312"/>
    <title>新建班级</title>
</head>
<body>
<center>
    <div id="header1">
        <span><</span>
        <center>新建班级</center>
    </div>
    <form action="/cm/teacher/course/klass/create" name="addForm" method="post">
        <div class="div6">
            <table class="table_d6" cellpadding="" cellspacing="">
                <tr>
                    <td class="c">班级</td>
                    <td class="c"><input class="input1" type="text" id="grade" value="年级" onfocus="this.value='';this.onfocus='';"></td>
                    <td class="c"><input class="input1" type="text" id="klass" value="班级" onfocus="this.value='';this.onfocus='';"></td>
                </tr>
                <tr>
                    <td class="c">上课时间</td>
                    <td class="c"><input class="input1" type="time" id="time" value="" onfocus="this.value='';this.onfocus='';"></td>
                </tr>
                <tr>
                    <td class="c">上课地点</td>
                    <td class="c"><input class="input3" type="text" id="location" value="" onfocus="this.value='';this.onfocus='';"></td>
                </tr>
                <tr>
                    <td class="c">班级学生名单</td>
                    <td class="c"><form id="uploadFile" class="upload" action="/cm/teacher/course/klass" method="post"
                                        enctype="multipart/form-data">
                            <p>
                                选择文件:<input type="file" name="multipartFile"/>
                            </p>
                            <p></p>
                            <p style="margin-top: 20px;">
                                <input style="" type="submit" value="上传"/>
                            </p>
                        </form>
                    </td>
                </tr>
            </table>
        </div>
        </br>
        <button class="button1" id="save" onclick="save();">保 存</button>
    </form>
</center>
<script type="text/javascript">
    function checkForm() {
        var grade=document.getElementById("grade");
        var klass=document.getElementById("klass");
        var time=document.getElementById("time");
        var location=document.getElementById("location");
        if(grade.value==''|klass.value==''|time.value==''|location.value==''){
            alert("有项目为空!");
            return false;
        }
        else
            return true;
    }
    function save() {
        if(checkForm()){
            document.addForm.onsubmit;
            confirm("创建成功！");
            window.location.href="/cm/teacher/course/klassList/teacher_klassList";
        }
    }
</script>
</body>
</html>