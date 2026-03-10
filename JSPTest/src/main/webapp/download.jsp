<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder"%>
<%@ page import="java.io.File"%>
<%@ page import="java.io.*"%>
<%
	String fileName = request.getParameter("filename");
	String orgfileName = request.getParameter("orgfilename");

	String savePath = "files"; // 첨부파일 폴더의 경로: webapp > files
	ServletContext context = getServletContext();
	String sDownloadPath = context.getRealPath(savePath);

	String sFilePath = sDownloadPath + "/" + fileName;
	byte b[] = new byte[4096];
	FileInputStream in = new FileInputStream(sFilePath);
	String sMimeType = getServletContext().getMimeType(sFilePath);
	// System.out.println("sMimeType>>>" + sMimeType);

	if (sMimeType == null) {
		sMimeType = "application/octet-stream"; // 다운로드 강제
	}

	response.setContentType(sMimeType);
	String agent = request.getHeader("User-Agent");
	boolean ieBrowser = (agent.indexOf("MSIE") > -1) || (agent.indexOf("Trident") > -1);

	if (ieBrowser) {
		// 수정: 슬래시(/)가 아니라 역슬래시 두개(\\)와 더하기(+)
		orgfileName = URLEncoder.encode(orgfileName, "UTF-8").replaceAll("\\+", "%20");
	} else {
		orgfileName = new String(orgfileName.getBytes("UTF-8"), "iso-8859-1");
	}

	response.setHeader("Content-Disposition", "attachment; filename=\"" + orgfileName + "\"");

	// ⭐ 중요: JSP 환경에서 OutputStream 충돌을 막기 위한 마법의 두 줄
	out.clear();
	out = pageContext.pushBody();

	ServletOutputStream out2 = response.getOutputStream();
	int numRead;

	while ((numRead = in.read(b, 0, b.length)) != -1) {
		out2.write(b, 0, numRead);
	}
	
	out2.flush();
	out2.close();
	in.close();
%>