<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="http://cdn.bootcss.com/bootstrap/3.3.2/css/bootstrap.min.css" rel="stylesheet" />
<link href="./css/reset.css" rel="stylesheet" type="text/css" />
<link href="./css/mycustomer.css" rel="stylesheet" type="text/css" />
<link href="./css/page.css" rel="stylesheet" type="text/css" />
<link href="./css/qq.css" rel="stylesheet" type="text/css" />
<script src="./js/qq.js"></script>
<script src="http://cdn.bootcss.com/jquery/1.11.2/jquery.min.js"></script>
<script src="http://cdn.bootcss.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<title>365IT学院官网</title>
</head>
<body>
    <header>
    <div class="top">

        <c:if test="${sessionScope.userInfo == null}">

            <div class="w">
                <div class="denglu">
                    <a href="${pageContext.request.contextPath}/system!forwardLogin.html">登录 </a> |
                    <a href="${pageContext.request.contextPath}/system!forwardRegister.html">注册
                    </a> | <a href="${pageContext.request.contextPath}/product!forwardProductList.html">课程
                    </a> | <a href="">求课</a>
                </div>
                您好，欢迎来到365IT学院官网！
            </div>

        </c:if>
        <c:if test="${sessionScope.userInfo != null}">

            <div class="w">
                <div class="denglu">
                    <a>尊敬的${sessionScope.userInfo.userId}您好</a> | <a
                        href="${pageContext.request.contextPath}/mycenter!forwardMySetting.html">个人信息设置</a>
                    | <a href="${pageContext.request.contextPath}/mycenter!forwardMyOrderList.html">个人中心</a>
                </div>
                您好，欢迎来到365IT学院官网！
            </div>

        </c:if>
    </div>
    </header>
    <!-- Carousel
    ================================================== -->

    <img src="./image/logo.gif" style="min-width: 100%;" />

    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
        </ol>
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img src="./image/banner1.gif" alt="First slide" />
            </div>
            <div class="item">
                <img src="./image/banner2.gif" alt="Second slide" />
            </div>
        </div>
        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev"> <span
            class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> <span
            class="sr-only">Previous</span>
        </a> <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next"> <span
            class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span> <span
            class="sr-only">Next</span>
        </a>
    </div>
    <!-- /.carousel -->



    <div class="tabBar" style="margin: 0 auto">
        <div class="hd">
            <ul data-spy="affix" data-offset-top="125">
                <li><a href="#makeliyou"><img src="./image/gouji_l.gif" alt="成为架构师的理由" /></a></li>
                <li><a href="#xuanzeliyou"><img src="./image/xuanzhe_l.gif" alt="成为架构师的理由" /></a></li>
                <li><a href="#kaishixuexi"><img src="./image/jiaru.gif" alt="成为架构师的理由" /></a></li>
            </ul>
        </div>
        <div class="bd">
            <div class="liyou" id="makeliyou">
                <div class="conWrap">

                    <div class="con">
                        <img src="./image/liyou1.gif" />
                    </div>
                    <div class="con">
                        <img src="./image/liyou1.gif" />
                    </div>
                    <div class="con">
                        <img src="./image/liyou1.gif" />
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--理由end-->
    <!--10大理由 start-->
    <div class="liyou10">
        <div class="liyoutitle">
            <img src="./image/10daliyou.gif" alt="选择课程的10大理由" />
        </div>
        <!--1 -->
        <div id="xuanzeliyou" class="liyoulist img_1 L">
            <div class="w480 right">
                <img src="./image/1_title.gif" alt="绝对干货，一针见血" />
                <p>&nbsp;</p>
                <p>
                    1、学到最具有实用价值的知识和技巧体系。<br /> 2、学到的是综合技能，技术精要。<br /> 3、学到对重点，疑点，难点的解析。<br />
                    4、学到本质：代码说明一切,可以畅游于大量的大中小实践案例和项目的真实环境<br /> 5、学以致用：以四两拨千斤，取得立竿见影的效果。<br />
                    6、分享到：两位讲师近十年一线商业研发实战精华。<br /> 7、一次升华：社会优质资源再教育—工作了才知道自己欠缺太多，在校期间学的<br />
                    很多都没用！本培训可以得到再次弥补的机会。<br />
                    8、买的安心放心——作者利用了一切可以利用的时间，进一步研读大量国内外资料，提取出初步大纲后，又迚行反复推敲、提炼，验证和总结，不断优化，可谓字斟句酌，重点内容亦邀请同行切磋斟酌重点内容亦邀请同行与家来切磋斟酌。就这样，历时两年，产品终于问世。<br />
                    9、突破技术瓶颈—工作后一直盼望明师指引自己使技术有所突破，邁么机会来了<br />
                    10、避免成长弯路—也曾经寻找过架构师成长之路的培训课程，寻遍国内外都没有发现令人满意的课程。为此决定为大家做一款，如同西天取经，客服了各种困难也走过很多弯路。
                </p>
            </div>
            <div class="clear"></div>
        </div>

        <!--2 -->
        <div class="liyoulist img_2 R">
            <div class="h300 w480 left">
                <img src="./image/2_title.gif" alt="权威教材作者亲自讲授" />
                <p>&nbsp;</p>
                <p class="coler dian p23">
                    配套教材（机械工业出版社）:<br />《Java代码与架构之完美优化——实戓经典》
                </p>
            </div>
            <div class="clear"></div>
        </div>

        <!--3 -->
        <div class="liyoulist img_3 L">
            <div class="w480 right">
                <img src="./image/3_title.gif" alt="大型商业项目案例，绝对精品" />
                <p>&nbsp;</p>
                <p class="coler dian p23">课程以大型商业项目的设计与研发为主线:</p>
                <p class="p23">经典案例近130个—配套教材77个、设计模式23个及其他经典案例近30个；小项目3个—spring3、mybatis、
                    struts2架构模拟演练；中等项目1个—插件开发的实战演练；大项目2个——365IT学院教学平台及北大校友信息查询系统的实战演练</p>
                <p>&nbsp;</p>
                <p class="coler dian p23">总课时近200课时（40分钟每课时），由近1000个微视频组成</p>
                <p class="coler dian p23">大型商业项目研发的独家解密！</p>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
            </div>
            <div class="clear"></div>
        </div>

        <!--4 -->
        <div class="liyoulist img_4 R">
            <div class="w480 left">
                <img src="./image/4_title.gif" alt="课程优势挡不住" />
                <p>&nbsp;</p>
                <p class="coler dian p23">
                    初级课程<span>（十年磨一剑）：</span>
                </p>
                <p class="p23">以架构师必备的高级架构知识与技巧体系为目标，注重自我学习能力的培养。具有高级品质管理能力(编程篇)；具有扎实的架构设计高级技能；具有扎实的架构研发高级技能；具有主动学习、分析与解决问题能力。
                </p>
                <p class="coler dian p23">
                    中级课程<span>（华山论剑）：</span>
                </p>
                <p class="p23">以主流架构技术要点、架构模拟及搭建中大型项目基本构架为重点，注重研究与模仿能力的培养。具有搭建项目基本开发框架能力；具有文档的体系化与标准化能力；具有高级品质管理能力（文档篇）；具有常用重要架构模仿能力；具有主流架构与中间件技术精要能力
                </p>
                <p class="coler dian p23">
                    高级课程<span>（笑傲江湖）：</span>
                </p>
                <p class="p23">以大型项目构架及自动化工具研发技术为核心，注重创新能力的培养。具有高级插件设计及其研发能力；具有自动化代码生成工具设计能力；具有最佳权限体系解决方案能力；具有开元框架设计及其研发能力；具有较好的技术创新能力
                </p>
            </div>
            <div class="clear"></div>
        </div>

        <!--5 -->
        <div class="liyoulist img_5 L">
            <div class="w480 right">
                <img src="./image/5_title.gif" alt="技术前沿，实用给力" />
                <p>&nbsp;</p>
                <p class="coler dian p23">技术前沿，保证三年内不会落伍</p>
                <p class="p23">重要知识点和技巧不重复、深入浅出的原则下，精巧地溶于各大中小项目设计的研发过程；对各个层面架构师应该具有的知识体系技巧等进行横向和纵向分析，按照难易度和体系进行合理划分；学到知识和技巧的前后联系，使其由点到线，由线到面，由面到体，有序而不乱，清晰而明了，便于大家学习与消化可以快速形成自己的综合知识和技巧体系。
                </p>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
                <p>&nbsp;</p>

            </div>
            <div class="clear"></div>
        </div>

        <!--6 -->
        <div class="liyoulist img_6 R">
            <div class="w480 left">
                <img src="./image/6_title.gif" alt="阶梯式成长 学习不再难" />
                <p>&nbsp;</p>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
            </div>
            <div class="clear"></div>
        </div>


        <!--7 -->
        <div class="liyoulist img_7 L">
            <div class="w480 right">
                <img src="./image/7_title.gif" alt="全程体验设计开源框架全过程" />
                <p>&nbsp;</p>
                <p class="coler dian p23">学习开源框架思想设计和研发的全过程。</p>
                <p class="coler dian p23">欧美、日本等先进国家都有很多优秀开源框架，我们也应该有。抛砖引玉，可以引导我们设计与研发自己优秀的开源框架。</p>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
                <p>&nbsp;</p>

            </div>
            <div class="clear"></div>
        </div>

        <!--8 -->
        <div class="liyoulist img_8 R">
            <div class="w480 left">
                <img src="./image/8_title.gif" alt="首次尝试“翻转课堂”引入在线教育" />
                <p>&nbsp;</p>
                <p>&nbsp;</p>
                <p class="coler dian p23">翻转课堂是什么？</p>
                <p class="p23">翻转课堂（反转课堂）
                    ，2011年在美国各地兴起的一种新型的教育教学形式。传统的教学模式是老师在课堂上讲课，布置家庭作业，让学生回家练习。不传统的课堂教学模式不同，在“翻转课堂式教学模式”下，学生在家完成知识的学习，而课堂变成了老师与学生、学生与学生之间互动的场所：包括答疑解惑、知识的运用技巧，创新思维的引导等，从而达到更好的教育效果。
                </p>
                <p class="coler dian p23">翻转课堂给我们带来的好处:</p>
                <p class="p23">1.“翻转”，以学生学为核心，打造个性化、专业化、职业化、终身化学习计划与环境的引导等，从而达到更好的教育效果；2.“翻转”，让学生自己掌握学习，根据自身需求学习最想学习的内容，亦可以合理安排学习进度；3.“翻转”，增加了学习的主动性与师生的互动性；4.“翻转”，实现了真正意义的“师者传道受业解惑”的教育真谛；5.“翻转”，是学习方式的创新，是学习的革命！
                </p>
            </div>
            <div class="clear"></div>
        </div>

        <!--9 -->
        <div class="liyoulist img_9 L">
            <div class="w480 right">
                <img src="./image/9_title.gif" alt="授人以鱼,不如授人以渔" />

                <div class="huangse">颜廷吉</div>
                <p>
                    <samp>个人简介：</samp>
                    365IT学院创始人，首席架构师，软件架构专家。北京大学硕士毕业后赴日，进入日本一流企业后，曾潜心研究日本技术近10年，先后担任过多个国家大型项目架构设计。对各种开源框架，软件架构技术，品质管理技术等有深入的研究及独到的见解。
                </p>
                <p>
                    <samp>主要成就：</samp>
                    1.《Java代码与架构之完美优化——实战经典》作者；2.《颐凡Java应用开发平台》软件著作权人。3.拥有五项专利。4.亦拥有PMP，OCP，LIP-3等各种高级国际认证证书。5.日本国家厚生劳动省就业项目，社长奖。6.日本国家饮料自动贩卖机检量系统项目，优秀项目奖。7.日本国家香烟贩卖系统项目，社长奖。8.日本国家高度人才。
                </p>
                <div class="huangse">王 超</div>
                <p>
                    <samp>个人简介：</samp>
                    从事多年软件开发工作，历任项目经理、架构师等职务，
                    对常用web框架struts2、spring、springmvc,JBPM,activity和hibernate等框架有丰富的使用经验,参与用友新道教育平台的手写识别功能(JNI和C开发)和在线会议的开发工作,山东省民政厅数据采集金民系统，中国电信电子渠道管理系统等各大系统的研发，精通JAVA开发技术，尤其擅长架构，并有很多心得,喜欢分享自己的知识,擅长结合实际中的例子来讲解抽象的编程技术，授课风格幽默，思路清晰,使学员能够很形象得掌握各个知识点。
                </p>

            </div>
            <div class="clear"></div>
        </div>

        <!--10 -->
        <div class="liyoulist img_10 R boderone">
            <div class="w480 left">
                <img src="./image/10_title.gif" alt="首次尝试“翻转课堂”引入在线教育" />
                <p>&nbsp;</p>
                <p>&nbsp;</p>
                <p class="coler dian p23">QQ群组，轻松交流</p>
                <div class="qqkefu">
                    软件架构师QQ群1：<a href="#" target="_blank">197316935</a><br /> 软件架构师QQ群2：<a href="#"
                        target="_blank">250270467</a><br /> 软件架构师QQ群3：<a href="#" target="_blank">289280630</a>
                </div>
                <p class="coler dian p23">微信微博，最新动态抢先看</p>
                <p class="p23">
                    <a href="http://www.weibo.com/u/5385197038/home?topnav=1&wvr=6" target="_blank"><img
                        src="./image/xinlang.gif" class="left" /> </a><a href="#" target="_blank"><img
                        src="./image/weixin.png" class="left" /></a>
                </p>
                <p class="p23">&nbsp;</p>
            </div>
            <div class="clear"></div>
        </div>

    </div>
    <!--10大理由 end -->
    <!--敢想start-->
    <div class="ganxiang">
        <img src="./image/ganzuo.gif" />
    </div>
    <!--敢想 end-->
    <div class="xuexi" id="kaishixuexi">
        <p>
            <img src="./image/jiandan.gif" alt="365IT学院，让学习变得更简单！" />
        </p>
        <p>
            <a href="${pageContext.request.contextPath}/product!forwardProductList.html"
                target="_blank"><img src="./image/xuexi.gif" alt="开始学习" /></a>
        </p>
    </div>

    <!--footer start-->
    <div class="footer">
        <div class="w">

            <!-- Modal -->
            <div class="modal fade" id="myModal" tabindex="-1" role="dialog"
                aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-body">
                            <img src="./image/weixin.gif" class="img-rounded" width="200px"
                                height="200px;" />
                        </div>
                    </div>
                </div>
            </div>
            <p>
              <!--  --> <a href="#"> 关于我们 </a> | <a href="#"> 人才招聘 </a> | <a href="#"> 讲师招募 </a> | <a
                    href="#"> 联系我们 </a> | <a href="#"> 意见反馈 </a> | <a
                    href="${pageContext.request.contextPath}/oalogin!forwardLogin.html"> 后台入口</a>
            </p>
            <p>沪ICP备13043409号-1</p>
        </div>
    </div>

    <div id='cs_box'>
        <span class='cs_title'>在线咨询</span> <span class='cs_close'>x</span>
        <div class='cs_img'></div>
        <span class='cs_info'>有什么可以帮到你</span>
        <div class='cs_btn'>点击咨询</div>
    </div>
    <script>
    myEvent(window,'load',function(){
        cs_box.set({
            img_path : './image/kefu.png', //设置图片路径
            qq : '44497986',   //设置QQ号码
        });
    });
</script>

</body>
</html>