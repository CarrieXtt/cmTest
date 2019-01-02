<#--新建课程-->
<!DOCTYPE html>
<html lang="ch">
<head style="font-size: 35px">
    <meta name="viewport"
          content="width=device-width,user-scale=no,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0"
          charset="GB2312">
    <link rel="stylesheet" href="seminar.css" charset="GB2312"/>
    <script type="text/javascript" src="http://ajax.microsoft.com/ajax/jquery/jquery-1.4.min.js"></script>
    <title>新建课程</title>
</head>
<body>
<center>
    <div id="header1">
        <span>X</span>
        <center>新建课程</center>
    </div>
    <form action="/cm/teacher/course/create" method="post" name="addForm">
        <input class="input_for_course" id="course_name" type="text" placeholder="课程名称" onfocus="this.value='';this.onfocus='';">
        <textarea class="textarea_for_course" id="course_ask" type="text" placeholder="课程要求" onfocus="this.value='';this.onfocus='';"></textarea>
        <div class="div2">
            <p4>成绩计算规则</p4>
            <table class="table_d2" cellspacing="" cellpadding="">
                <tr>
                    <td class="c">课堂展示</td>
                    <td class="c"></td>
                    <td class="c"><input class="input2" type="text" id="pre_pec" value="50%" onfocus="this.value='';this.onfocus='';"></td>
                </tr>
                <tr>
                    <td class="c">课堂提问</td>
                    <td class="c"></td>
                    <td class="c"><input class="input2" type="text" id="que_pec" value="20%" onfocus="this.value='';this.onfocus='';"></td>
                </tr>
                <tr>
                    <td class="c">书面报告</td>
                    <td class="c"></td>
                    <td class="c"><input class="input2" type="text" name="rep_pec" value="30%" onfocus="this.value='';this.onfocus='';"></td>
                </tr>
            </table>
        </div>
        <div class="div3">
            <p4>组员基本要求</p4>
        </div>
        <div class="div2">
            <table class="table_d2"cellspacing=""cellpadding="" id="table_new">
                <tr>
                    <td class="c">小组总人数(含组长)</td>
                    <td class="c"><input class="input2" type="text" id="team_max" value="上限" onfocus="this.value='';this.onfocus='';"></td>
                    <td class="c"><input class="input2" type="text" id="team_min" value="下限" onfocus="this.value='';this.onfocus='';"></td>
                </tr>
                <tr><td class="c">组内选修课程人数</td></tr>
                <tr>
                    <td></td><td></td>
                    <td class="c"><button class="button11" name="add_degree" onclick="addRow()">新增</button></td>
                </tr>
            </table>
        </div>
        <div class="div3"><p4>冲突课程</p4></div>
        <div class="div2" id="new_div">
            <table>
                <tr><td class="c"><button class="button_new" name="add_and" onclick="addDiv()">新增与</button></td></tr>
            </table>
            <table class="table_d2" cellspacing="" cellpadding="" id="new_table_1">
            </table>
        </div>
        </br>
        <div class="div2">
            <table class="table_d2" cellpadding="" cellspacing="">
                <tr><td class="c">组队开始时间</td>
                    <td class="c"><p5><input type="datetime-local" id="start_time"> </p5></td>
                </tr>
                <tr><td class="c">组队截止时间</td>
                    <td class="c"><p5><input type="datetime-local" id="end_time"> </p5></td>
                </tr>
            </table>
        </div>
        <button class="button1" type="button" id="publish" onclick="publish();">发布</button>
    </form>
</center>
<script type="text/javascript">
    function $(eleId) {
        return document.getElementById(eleId);
    }
    var list_3=new Array();
    var list_or=new Array();
    var list_and=new Array();
    function add_options(e1) {
        var texts=["teacher","teacher","teacher","teacher"];
        for(var i=0;i<texts.length;i++){
            var newOption=document.createElement("option");
            newOption.text=texts[i];
            newOption.value="i";
            e1.options.add(newOption);
        }
    }
    function addRow() {
        var table = $("table_new");
        var row;  //创建表格的行
        row = table.insertRow();
        var cell0 = row.insertCell(0); //创建表格的列
        var cell1 = row.insertCell(1);
        var cell2=row.insertCell(2);
        cell0.className="c";
        cell1.className="c";
        cell2.className="c";
        var e1 = document.createElement("select");
        add_options(e1);
        var e2 = document.createElement("input");
        e2.type = "text";
        e2.className="input2";
        e2.placeholder="上限";
        var e3 = document.createElement("input");
        e3.type = "text";
        e3.className="input2";
        e3.placeholder="下限";
        cell0.appendChild(e1);
        cell1.appendChild(e2);
        cell2.appendChild(e3);
        var index=e1.selectedIndex;
        var value=e1.options[index].value;
        list_3.push(value,e2,e3);
    }
    function addDiv() {
        var div=document.getElementById("new_div");
        var e=document.createElement("div");
        e.className="div_1";
        var table = $("new_table_1");
        var row;  //创建表格的行
        row = table.insertRow();
        var cell0 = row.insertCell(0); //创建表格的列
        var cell1 = row.insertCell(1);
        cell0.className="c";
        cell1.className="c";
        var e2 = document.createElement("select");
        add_options(e2);
        var e1 = document.createElement("input");
        e1.type = "submit";
        e1.value="新增或";
        e1.className="button_new";
        var index=e2.selectedIndex;
        var value=e2.options[index].value;
        list_or.push(value);
        e1.onclick=function () {
            var table = $("new_table_1");
            var row;  //创建表格的行
            row = table.insertRow();
            var cell0 = row.insertCell(0); //创建表格的列
            cell0.className="c";
            var e0 = document.createElement("select");
            add_options(e0);
            cell0.appendChild(e0);
            var index1=e0.selectedIndex;
            var value1=e0.options[index1].value;
            list_or.push(value1);
        };
        cell0.appendChild(e2);
        cell1.appendChild(e1);
        e.appendChild(table);
        div.appendChild(e);
        list_and.push(list_or);
    }
    function checkPost() {
        var courseName=document.getElementById("course_name");
        var introduction=document.getElementById("course_ask");
        var presentationPercentage=document.getElementById("pre_pec");
        var questionPercentage=document.getElementById("que_pec");
        var reportPercentage=document.getElementById("rep_pec");
        var teamStartTime=document.getElementById("start_time");
        var teamEndTime=document.getElementById("end");
        var =document.getElementById("team_max");
        var =document.getElementById("team_min")
        //选修课程的人数
        //一个List<List>
        var CourseMemberLimitStrategyList=new Array();
        for(var i=0;i<list_3.length;i+=3){
            var tmp=new Array();
            var courseId=list_3[i];
            var minMember=list_3[i+1];
            var maxMember=list_3[i+2];
            tmp.push(courseId,minMember,maxMember);
            CourseMemberLimitStrategyList.push(tmp);
        }
        //冲突课程，一个List<List>,外与里或
        var ConflictCourseStrategyList=list_and;
        if(courseName.value==''|presentationPercentage.value==''|questionPercentage.value==''|reportPercentage.value==''|
        teamStartTime.value==''|teamEndTime.value==''){
            alert("有项目为空!");
            return false;
        }
        else
            return true;
    }
    function publish() {
        if(checkPost()){
            document.addForm.onsubmit;
            confirm("创建成功！");
            window.location.href="/cm/teacher/course/teacher_courseList";
        }
    }
</script>
</body>
</html>