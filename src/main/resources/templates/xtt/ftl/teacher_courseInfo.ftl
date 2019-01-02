<!--课程信息-->
<!DOCTYPE html>
<html lang="ch">
<head style="font-size: 35px">
    <meta name="viewport"
          content="width=device-width,user-scale=no,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0"
          charset="GB2312">
    <link rel="stylesheet" href="../static/seminar.css" charset="GB2312"/>
    <title>课程信息</title>
</head>
<body>
<center>
    <!--头都用这一个，不要改了-->
    <div id="header1">
        <center>
	            <span>
	                <b><</b>
	            </span>
            ${curCourse.courseName}
            <span1>
                <b><li class="dao li1">+
                        <ul class="sub sub1">
                            <a href="/cm/teacher/notification"><li class="main">代办</li></a>
                            <a href="/cm/teacher/index"><li class="main">个人页</li></a>
                            <a href="/cm/teacher/course/seminar/"><li class="main">讨论课</li></a>
                        </ul>
                    </li>
                </b>
            </span1>
        </center>
    </div>
    <div class="div3">
        课程要求
    </div>
    <div class="div2">
        <p4>成绩计算规则</p4>
        <table class="table_d2" cellspacing="" cellpadding="">
            <tr>
                <td class="c">课堂展示</td>
                <td class="c"></td>
                <td class="c">${curCourse.presentationPercentage}</td>
            </tr>
            <tr>
                <td class="c">课堂提问</td>
                <td class="c"></td>
                <td class="c">${curCourse.questionPercentage}</td>
            </tr>
            <tr>
                <td class="c">书面报告</td>
                <td class="c"></td>
                <td class="c">${curCourse.reportPercentage}</td>
            </tr>
        </table>
    </div>
    <div class="div3">
        <p4>组员基本要求</p4>
    </div>
    <div class="div2">
        <table class="table_d2"cellspacing=""cellpadding="">
            <tr>
                <td class="c">小组总人数(含组长)</td>
                <td class="c"></td>
                <td class="c">${TeamNeedVO.teamMemberLimitStrategy.minMember}-${TeamNeedVO.teamMemberLimitStrategy.maxMember}</td>
            </tr>
            <tr><td class="c">组内选修课程人数</td></tr>
            <#list TeamNeedVO.CourseMemberLimitStrategyList as course>
                <tr>
                    <td class="c">${course.courseId}</td>
                    <td class="c"></td>
                    <td class="c">${course.minMember}-${course.maxMember}</td></tr>
            </#list>
        </table>
    </div>
    <div class="div3"><p4>冲突课程</p4></div>
    <div class="div2">
        <#list TeamNeedVO.ConflictCourseStrategyList as courses>
            <div style="border: 1px solid #e8e8e8">
                <table class="table_d2" cellspacing="" cellpadding="">
                    <tr>
                        <#list courses as course>
                            <td class="c">${course.courseId}</td>
                        </#list>
                    </tr>
                </table>
            </div>
        </#list>
        </br>
    </div>
    <div class="div2">
        <table class="table_d2" cellpadding="" cellspacing="">
            <tr><td class="c">组队开始时间</td>
                <td class="c"></td>
                <td class="c">${curCourse.teamStartTime}</td>
            </tr>
            <tr><td class="c">组队截止时间</td>
                <td class="c"></td>
                <td class="c">${curCourse.teamEndTime}</td>
            </tr>
        </table>
    </div>
    <form action="/cm/teacher/course/${curCourse.courseId}" name="deleteCourse" method="post">
        <button class="button5" id="delete_course" onclick="deleteCourse()">删除该课程</button>
    </form>
</center>
<script type="text/javascript">
    function deleteCourse() {
        document.deleteCourse.onsubmit;
    }
</script>
</body>
</html>