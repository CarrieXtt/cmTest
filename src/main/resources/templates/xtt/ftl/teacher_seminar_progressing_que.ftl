<#--提问-->
<!DOCTYPE html>
<html lang="ch">
<head style="font-size:35px">
    <link href="ftl/seminar.css" type="text/css" rel="stylesheet" charset="GB2312"/>

    <meta name="viewport"
          content="width=device-width,user-scale=no,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0"
          charset="GB2312">

    <title>提问</title>
</head>
<script type="text/javascript">
    $(document).ready(function(){
        connect();
    });
    var stompClient = null;
    function setConnected(connected) {
        document.getElementById('connect').disabled = connected;
        document.getElementById('disconnect').disabled = !connected;
        document.getElementById('conversationDiv').style.visibility = connected ? 'visible' : 'hidden';
        document.getElementById('response').innerHTML = '';
    }

    function disconnect() {
        if (stompClient != null) {
            stompClient.disconnect();
        }
        setConnected(false);
        console.log("Disconnected");
    }

    //this line.
    function connect() {
        var socket = new SockJS("http://localhost:8080/springmvc/hello");
        stompClient = Stomp.over(socket);
        stompClient.connect({}, function(frame) {
            setConnected(true);
            console.log('Connected: ' + frame);
            stompClient.subscribe('/topic/broadcast', function(SelectedQuestion){
                showGreeting(JSON.parse(SelectedQuestion.body).studentAccount,
                    JSON.parse(SelectedQuestion.body).studentName,
                    JSON.parse(SelectedQuestion.body).teamNumber,
                    JSON.parse(SelectedQuestion.body).status
                );
            });
        });
    }

    function sendPreScore(seminarId,klassId) {
        var name = document.getElementById('name').value;
        stompClient.send("/teacher/select/"+klassSeminarId+"/"+attendanceId, {}, JSON.stringify({ 'name': name }));
    }
    function sendQueScore(seminarId,klassId) {

    }

    function showGreeting(studentAccount,studentName,teamNumber,status) {
    }
</script>
<body class="body1">
<center>
    <!--头都用这一个，不要改了-->
    <div id="header1">
        <center>
            <span><b><</b></span>讨论课
            <span1><b><li class="dao li1">+
                        <ul class="sub sub1">
                            <li class="main">代办</li>
                            <li class="main">个人页</li>
                            <li class="main">讨论课</li>
                        </ul>
                    </li></b></span1>
        </center>
    </div>
    <div class="header1">
        <center>${seminarInfo.seminarName}</center></div></br>
    </br>
    <div class="middle">
        <table class="table_m" cellpadding="0" cellspacing="0">
            <tr><td class="c1">展示队列</td></tr>
            <#list seminarInfo.attendanceListVO as attendance>
                <tr><td class="c1">${attendance.teamName}</td></tr>
            </#list>
        </table>
    </div>
    <div class="middle1">
        <u2>提问分数</u2></br>
        <input class="div1" type="text" id="question_score" value="" onfocus="this.value='';this.onfocus='';"/><br/>
    </div>
    <div class="middle2">
        <table class="table_m2">
            <tr><td class="c1">当前提问：</td></tr>
            <tr><td class="c1">${}</td></tr>
        </table>
    </div>
    <div>
        <button class="button7" onclick="sendQueScore();">确认打分</button>
        </br>
        <button class="button3" onclick="sendQue()">提问</button>
        </br>
        <a href="#target_1"><button class="button4" onclick="">下组展示</button></a>
        </br>
    </div>
    <div id="target_1" class="fade">
        <div class="popupWindow">
            </br>
            <p>讨论课已结束</p>
            <p>请设定书面报告截至时间</p>
            <p class="p1"><input type="datetime-local" id="reportRollTime"/></p>
            </br>
            <div class="but">
                <a href="#">SURE</a>
            </div>
        </div>
    </div>
</center>
</body>
</html>