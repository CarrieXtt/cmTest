<!--新增共享-->
<!DOCTYPE html>
<html lang="ch">
<head style="font-size:35px">
    <meta name="viewport"
          content="width=device-width,user-scale=no,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0"
          charset="GB2312">
    <link rel="stylesheet" href="../static/seminar.css" charset="GB2312"/>
    <title>新增共享</title>
</head>
<body>
<center>
    <div id="header1">
        <span><</span>
        新增共享
    </div>
    <div class="div2">
        <table class="table_d2" cellspacing="" cellpadding="">
            <tr>
                <td class="c"><p5>共享类型：</p5></td>
                <td class="c"></td>
                <td class="c">
                    <form action="" method="get">
                        <select name="share_type">
                            <option value="0">共享讨论课</option>
                            <option value="1">共享分组</option>
                        </select>
                    </form>
                </td>
            </tr>
            <tr>
                <td class="c"><p5>共享对象：</p5></td>
                <td class="c"></td>
                <td class="c">
                    <form action="" method="get">
                        <select name="share_course">
                            <option>---请选择---</option>
                            <#list courseList as course>
                                <option value="${course}">${course}</option>
                            </#list>
                        </select>
                    </form>
                </td>
            </tr>
        </table>
    </div>
    </br>
    <button class="button1" name="sure_to_share">确认共享</button>
</center>
</body>
</html>