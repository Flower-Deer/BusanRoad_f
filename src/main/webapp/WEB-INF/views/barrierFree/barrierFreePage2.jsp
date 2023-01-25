<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
						<table class="table">
							<tr>
								<td>사진</td>
								<td>제목</td>
								<td>번호</td>
								<td>이동</td>
							</tr>
							<c:forEach var="vo" items="${list}">
								<tr>
									<td><img src =${vo.firstimage}></td>
									<td>${vo.title}</td>
									<td>${vo.contentid}</td>
									<td><button class="b2" type="button" class="btn btn-primary btn-sm">자세히</button></td>
	
								</tr>
							</c:forEach>
						</table>
