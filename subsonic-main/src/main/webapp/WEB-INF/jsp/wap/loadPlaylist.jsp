<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE wml PUBLIC "-//WAPFORUM//DTD WML 1.1//EN" "http://www.wapforum.org/DTD/wml_1.1.xml">

<%@ page language="java" contentType="text/vnd.wap.wml; charset=utf-8" pageEncoding="iso-8859-1"%>

<wml>

    <%@ include file="head.jsp" %>

    <card id="main" title="Subsonic" newcontext="false">
        <p><small>

            <c:forEach items="${model.playlists}" var="playlist">
                <sub:url var="url" value="/wap/playlist.view">
                    <sub:param name="load" value="${playlist.name}"/>
                </sub:url>
                <b><a href="${url}">${fn:escapeXml(fn:substringBefore(playlist.name, '.'))}</a></b><br/>
            </c:forEach>
        </small></p>

    </card>
</wml>

