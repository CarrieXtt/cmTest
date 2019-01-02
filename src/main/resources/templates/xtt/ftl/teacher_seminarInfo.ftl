<!--修改讨论课-->
<!DOCTYPE html>
<html lang="ch">
<head style="font-size: 35px">
    <meta name="viewport"
          content="width=device-width,user-scale=no,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0"
          charset="GB2312">
    <link rel="stylesheet" href="seminar.css" charset="GB2312"/>
    <title>修改讨论课</title>
</head>
<body>
<center>
    <div id="header1">
        <span>X</span>
        <center>
            ${SeminarModifyVO.courseName}
        </center>
    </div>
    <div class="div4">
        <p6>修改讨论课</p6>
    </div>
    <form action="/cm/teacher/course/info" method="post" name="modify">
        <input class="input_for_course" id="seminar_name" type="text" placeholder="${SeminarModifyVO.seminarName}">
        </br>
        <textarea class="textarea_for_course" id="seminar_ask" placeholder="${SeminarModifyVO.introduction}"></textarea>
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
                        <td class="c"><p5><input type="datetime-local" id="start_time" value="${SeminarModifyVO.enrollStartTime}"> </p5></td>
                    </tr>
                    <tr>
                        <td class="c">展示报名截至时间：</td>
                        <td class="c"><p5><input type="datetime-local" id="end_time" value="${SeminarModifyVO.enrollEndTime}"> </p5></td>
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
        <div class="div5">
            书面报告提交截止时间：
            <table class="table_d5_1" cellspacing="" cellpadding="">
                <#list SeminarModifyVO.reportDDLVOList as rddl>
                    <tr><td class="c">${rddl.klassName}</td>
                        <td class="c"><input type="datetime-local" id="${rddl.klassName}" placeholder="${rddl.reportDDL}"> </td> </tr>
                </#list>
            </table>
        </div>
        <button class="button1" id="save" onclick="save();">保存</button>
    </form>
    <form action="/cm/teacher/course/info/${SeminarModifyVO.seminarId}" method="post" name="deleteSeminar">
        <button class="button6" id="delete_seminar" onclick="deleteSeminar();">删除该讨论课</button>
    </form>
</center>
<script type="text/javascript">
    function checkForm() {
        var iv=document.getElementById("isVisible");
        var seminarStatus=iv.options[iv.selectedIndex].value;
        var enrollStartTime=document.getElementById("start_time");
        var enrollEndTime=document.getElementById("end_time");
        var teamNumLimit=document.getElementById("team_num");
        var round_serial=document.getElementById("round_serial");
        var roundSerial=round_serial.options[round_serial.selectedIndex].value;
        var list=new Array();
        for(var i=0;i<${SeminarModifyVO}.length;i++){
            var t=document.getElementById(${SeminarModifyVO[i].klassName}).value;
            list.push(t);
        }
        return true;
    }
    function save(){
        if(checkForm()){
            document.modify.onsubmit;
        }
    }
    function deleteSeminar(){
        document.deleteSeminar.onsubmit;
        confirm("删除讨论课成功！");
        window.location.replace("/cm/teacher/course/info");
    }
</script>
</body>
</html>