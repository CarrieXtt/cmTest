<!--新建讨论课-->
<!DOCTYPE html>
<html lang="ch">
<head style="font-size: 35px">
    <meta name="viewport"
          content="width=device-width,user-scale=no,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0"
          charset="GB2312">
    <link rel="stylesheet" href="/seminar.css" charset="GB2312"/>
    <title>新建讨论课</title>
</head>
<body>
<center>
    <div id="header1">
        <span>X</span>
        <center>
            ${}
        </center>
    </div>
    <div class="div4">
        <p6>新建讨论课</p6>
    </div>
    <form action="/cm/teacher/course/seminar/create" method="post" name="SeminarCreate">
        <input class="input_for_course" id="seminar_name" type="text" placeholder="主题" onfocus="this.value='';this.onfocus='';">
        </br>
        <textarea class="textarea_for_course" id="seminar_ask" placeholder="讨论课具体要求" onfocus="this.value='';this.onfocus='';"></textarea>
        <div class="div2">
            <table class="table_d2_1">
                <tr>
                    <td class="c2">讨论课可见：</td>
                    <td class="c2"></td>
                    <td class="c2"><p7><select id="isVisible">
                                <option value="0">可见</option>
                                <option value="1">不可见</option>
                            </select></p7></td>
                </tr>
            </table>
        </div>
        <div class="div5">
            <form action="" method="post" id="basic_info">
                <table class="table_d5" cellspacing="" cellpadding="">
                    <tr>
                        <td class="c">展示报名开始时间：</td>
                        <td class="c"><p5><input type="datetime-local" id="start_time"> </p5></td>
                    </tr>
                    <tr>
                        <td class="c">展示报名截至时间：</td>
                        <td class="c"><p5><input type="datetime-local" id="end_time"> </p5></td>
                    </tr>
                    <tr>
                        <td class="c">报名小组数：</td>
                        <td class="c"></td>
                        <td><p7><input class="input1" type="text" id="team_num" placeholder="6" onfocus="this.value='';this.onfocus='';"></p7></td>
                    </tr>
                    <tr>
                        <td class="c">所属Round：</td>
                        <td class="c"></td>
                        <td><select id="round_serial">
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                            </select></td>
                    </tr>
                </table>
            </form>
        </div>
        <button class="button1" id="submit" onclick="create();">发布</button>
    </form>
</center>
<script type="text/javascript">
    function checkPost() {
        var seminarName=document.getElementById("seminar_name");
        var introduction=document.getElementById("seminar_ask");
        var iv=document.getElementById("isVisible");
        var seminarStatus=iv.options[iv.selectedIndex].value;
        var enrollStartTime=document.getElementById("start_time");
        var enrollEndTime=document.getElementById("end_time");
        var teamNumLimit=document.getElementById("team_num");
        var round_serial=document.getElementById("round_serial");
        var roundSerial=round_serial.options[round_serial.selectedIndex].value;
        if(seminarName.value==''|enrollEndTime.value==''|enrollStartTime.value==''|teamNumLimit.value==''){
            alert("有项目为空！");
            return false;
        }
        else
            return true;
    }
    function create(){
        if(checkPost()){
            confirm("创建成功！");
            document.SeminarCreate.onsubmit;
            window.location.replace("/cm/teacher/course/seminar");
        }
    }
</script>
</body>
</html>