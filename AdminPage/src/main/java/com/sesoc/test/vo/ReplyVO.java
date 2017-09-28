package com.sesoc.test.vo;

/**
 * ITR_REPLY 모델 클래스.
 * 
 * @author generated by ERMaster
 * @version $Id$
 */
public class ReplyVO {

	/** REPLY 번호. */
	private int replyNum;

	/** GALLERY 번호. */
	private int galleryNum;

	/** USER 아이디. */
	private String id;

	/** REPLY 내용. */
	private String text;

	/** REPLY 작성 날짜. */
	private String inputdate;

	public ReplyVO() {}

	public ReplyVO(int replyNum, int galleryNum, String id, String text, String inputdate) {
		super();
		this.replyNum = replyNum;
		this.galleryNum = galleryNum;
		this.id = id;
		this.text = text;
		this.inputdate = inputdate;
	}

	public int getReplyNum() {
		return replyNum;
	}

	public void setReplyNum(int replyNum) {
		this.replyNum = replyNum;
	}

	public int getGalleryNum() {
		return galleryNum;
	}

	public void setGalleryNum(int galleryNum) {
		this.galleryNum = galleryNum;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public String getInputdate() {
		return inputdate;
	}

	public void setInputdate(String inputdate) {
		this.inputdate = inputdate;
	}

}