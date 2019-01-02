<!--轮次设置-->
<!DOCTYPE html>
<html lang="ch">
<head style="font-size:35px">
    <meta name="viewport"
          content="width=device-width,user-scale=no,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0"
          charset="GB2312">
    <link rel="stylesheet" href="seminar.css" charset="GB2312"/>
    <title>轮次设置</title>
</head>
<body>
<center>
    <div id="header1">
        <span><</span>
        第${SeminarInfoList.roundSerial}轮
    </div>
    <div class="div2">
        <p class="p2">讨论课：</p>
        <table class="table_d2" cellspacing="" cellpadding="">
            <#list SeminarInfoList as seminar>
                <tr><td class="c">${seminar.seminarName}</td></tr>
            </#list>
        </table>
        </br>
    </div>
    <form action="/cm/teacher/course/setting" method="post" name="setRound">
        <div class="div2">
            <p class="p2">成绩设置:</p>
            <table class="table_d2" cellspacing="" cellpadding="">
                <tr>
                    <td class="c">展示：</td>
                    <td class="c">
                        <select id="pre">
                            <option value="0">最高分</option>
                            <option value="1">平均分</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td class="c">提问：</td>
                    <td class="c">
                        <select id="que">
                            <option value="0">最高分</option>
                            <option value="1">平均分</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td class="c">报告：</td>
                    <td class="c">
                        <select id="rep">
                            <option value="0">最高分</option>
                            <option value="1">平均分</option>
                        </select>
                    </td>
                </tr>
            </table>
        </div>
        <div class="div2">
            <p class="p2">本轮讨论课报名次数:</p>
            <table class="table_d2" cellspacing="" cellpadding="">
                <#list SeminarInfoList as seminar>
                    <tr><td class="c">${seminar.klassId}班：</td>
                        <td class="c">
                            <select id="${seminar.klassId}">
                            </select></td></tr>
                </#list>
            </table>
        </div>
        </br>
        <button class="button3" id="modify" onclick="modify();">修改</button>
    </form>
</center>
<script type="text/javascript">
    var objSelectNow=document.getElementById("${seminar.klassId}");
    var inner="<option value='1'>1(默认)</option>";
    objSelectNow.innerHTML=inner;
    var objOption = document.createElement("OPTION");
    objOption.text= 2;
    objOption.value=2;
    objSelectNow.options.add(objOption);
    var list=new Array();

    function modify(){
        var index=objSelectNow.selectedIndex;
        var value=objSelectNow.options[index].value;
        list.push(value);
        document.setRound.onsubmit;
        confirm("修改轮次成功！");
        window.location.replace("/cm/teacher/course/setting");
    }
</script>
</body>
</html>