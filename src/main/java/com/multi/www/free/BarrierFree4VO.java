package com.multi.www.free;

public class BarrierFree4VO {
	String contentid;
	String contenttypeid;
	String title;
	String homepage;
	String overview;

	public BarrierFree4VO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public BarrierFree4VO(String contentid, String contenttypeid, String title, String homepage, String overview) {
		super();
		this.contentid = contentid;
		this.contenttypeid = contenttypeid;
		this.title = title;
		this.homepage = homepage;
		this.overview = overview;
	}

	public String getContentid() {
		return contentid;
	}

	public void setContentid(String contentid) {
		this.contentid = contentid;
	}

	public String getContenttypeid() {
		return contenttypeid;
	}

	public void setContenttypeid(String contenttypeid) {
		this.contenttypeid = contenttypeid;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getHomepage() {
		return homepage;
	}

	public void setHomepage(String homepage) {
		this.homepage = homepage;
	}

	public String getOverview() {
		return overview;
	}

	public void setOverview(String overview) {
		this.overview = overview;
	}

	@Override
	public String toString() {
		return "BarrierFree4VO [contentid=" + contentid + ", contenttypeid=" + contenttypeid + ", title=" + title
				+ ", homepage=" + homepage + ", overview=" + overview + "]";
	}

}
