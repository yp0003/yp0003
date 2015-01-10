<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<div class="r myspace-slider">
        <div class="myspace-bg">
<%--            <img src='${pageContext.request.contextPath}/mycenter!showUserHeader.html?user.id=${sessionScope.userInfo.id}' width='220' height='220' /> --%>
         	<s:if test="byteArrayInputStream != null">
				<img src='${pageContext.request.contextPath}/mycenter!showUserHeader.html?user.id=${user.id}' width='220' height='220' />		
			</s:if>
			<s:else>
				<img src='http://img.mukewang.com/user/54584f0b000124f802200220-220-220.jpg' width='220' height='220' />
			</s:else>
            <div class="myspace-data">
              <h4 class="myname">${sessionScope.userInfo.userId}</h4>
              <p class="job-title"> 学生 </p>
              <div class="mysignature">
                  <div class="signWrap">
                    <p id="signed" class="signed"> 这位童鞋很懒，什么也没有留下～～！</p>
                    <em id="publishsign"></em>
                  </div>
<!--                   <textarea id="signing" class="signing">这位童鞋很懒，什么也没有留下～～！</textarea> -->
                  <p id="rlf-tip-wrap" class="rlf-tip-wrap"></p>
              </div>
              <div class="mp-wrap clearfix">
                <div class="hd">
                  <ul>
                    <li class="mp-item">
                      <a class="mp-atag" href="/space/experience">
                        <p class="mp-title">经验</p>
                        <p class="mp-num">0</p>
                      </a>
             
                    </li>
              
                  </ul>
                </div>
            
              </div>
            </div>
        </div>
<!--         <ul class="space-item bodybg"> -->
<!--             <li> -->
<!--               <span class="icon-time icon" title="学习"></span>学习： 0分 -->
<!--             </li> -->
<!--             <li> -->
<!--               <span class="icon-course icon" title="报名"></span>已学：<a href="/space/course/uid/476879" class="countCourse"><em>4</em>门课程</a> -->
<!--             </li> -->
<!--             <li> -->
<!--               <span class="icon-publish icon" title="发表"></span>提问：<a href="/space/question/t/ques">0条</a> -->
<!--             </li> -->
<!--             <li> -->
<!--               <span class="icon-answer icon" title="回答"></span>回答：<a href="/space/question/t/reply">0条</a> -->
<!--             </li> -->
<!--             <li> -->
<!--               <span class="icon-note icon" title="笔记"></span>笔记：<a href="/space/note/uid/476879" class="countNote"><em>0</em>条</a> -->
<!--             </li> -->
<!--             <li><span class="icon-code icon" title="代码"></span>代码：<a href="/space/code">0条</a></li> -->
<!--         </ul> -->
        <div class="bodybg">
          <h3 class="main-hd">最近访客</h3>
          <ul class="space-visitors main-bd">
                                <li class="unvisitor"></li>
                  <li class="unvisitortex">暂无同学拜访此页面</li>
                      </ul>
      </div>
    </div>