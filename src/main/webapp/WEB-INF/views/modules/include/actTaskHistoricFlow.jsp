<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<table class="table table-striped table-bordered table-condensed">
    <tr>
        <th>执行环节</th>
        <th>参与人员</th>
        <th>开始时间</th>
        <th>结束时间</th>
        <th>提交意见</th>
        <th>任务历时</th>
    </tr>
    <c:forEach items="${histoicFlowList}" var="act">
        <c:set var="candidateUsers"><c:forEach items="${act.candidateUsers}" var="userId" varStatus="status">
            <c:set var="user">${fns:getUserById(userId).name}</c:set>
                <c:if test="${empty user}">
                    ${fns:getMemberById(userId).memberName}(会员)
                </c:if>
                <c:if test="${not empty user}">
                    ${user}
                </c:if>
            <c:if test="${status.index < fn:length(act.candidateUsers) - 1}">,</c:if>
        </c:forEach></c:set>
        <tr>
            <td>${act.histIns.activityName}</td>
            <td title="${candidateUsers}">${candidateUsers}</td>
            <td><fmt:formatDate value="${act.histIns.startTime}" type="both"/></td>
            <td><fmt:formatDate value="${act.histIns.endTime}" type="both"/></td>
            <td title="${act.comment}" style="word-wrap:break-word;word-break:break-all;">${act.comment}</td>
            <td><c:if test="${not empty act.histIns.durationInMillis}"><fmt:formatNumber var="day" value="${act.histIns.durationInMillis/(24*60*60*1000)}" maxFractionDigits="1"/>${day}&nbsp;天</c:if></td>
        </tr>
    </c:forEach>
</table>