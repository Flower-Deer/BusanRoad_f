package com.multi.www.barrierFree;

public class BarrierFreeVO {
	String addr1;
	String mapx;
	String mapy;
	String title;
	String contentid;
	String firstimage;

	
	public BarrierFreeVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public BarrierFreeVO(String addr1, String mapx, String mapy, String title, String contentid, String firstimage) {
		super();
		this.addr1 = addr1;
		this.mapx = mapx;
		this.mapy = mapy;
		this.title = title;
		this.contentid = contentid;
		this.firstimage = firstimage;
	}

	public String getContentid() {
		return contentid;
	}

	public void setContentid(String contentid) {
		this.contentid = contentid;
	}

	public String getFirstimage() {
		return firstimage;
	}

	public void setFirstimage(String firstimage) {
		this.firstimage = firstimage;
	}

	public String getAddr1() {
		return addr1;
	}

	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}

	public String getMapx() {
		return mapx;
	}

	public void setMapx(String mapx) {
		this.mapx = mapx;
	}

	public String getMapy() {
		return mapy;
	}

	public void setMapy(String mapy) {
		this.mapy = mapy;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	@Override
	public String toString() {
		return "BarrierFreeVO [addr1=" + addr1 + ", mapx=" + mapx + ", mapy=" + mapy + ", title=" + title
				+ ", contentid=" + contentid + ", firstimage=" + firstimage + "]";
	}



}
