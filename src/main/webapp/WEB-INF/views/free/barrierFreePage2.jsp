<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
						<div style="margin-top: 50px; float: left;">
					<c:forEach var="vo" items="${list}">
						<div class="local-object"
							style="float: left; height: 330px; width: 400px; margin-top: 30px;">
							<div class="card h-100">
								<img class="thumbnail" src=${vo.firstimage}
									alt="..." />
								<div class="text-center" style="margin-top: 5px;">
									<h5 class="fw-bolder">${vo.title}</h5>
									<br> <a class="btn btn-outline-dark mt-auto"
										href="barrierFreeDetail?contentid=${vo.contentid}">상세보기</a>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
