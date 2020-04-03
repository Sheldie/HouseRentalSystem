package com.dhu.pojo;

import java.util.Date;

public class Comment {
    private Integer commentid;

    private Integer houseid;

    private Integer userid;

    private String commentcontent;

    private String commentscore;

    private Date commenttime;

    public Integer getCommentid() {
        return commentid;
    }

    public void setCommentid(Integer commentid) {
        this.commentid = commentid;
    }

    public Integer getHouseid() {
        return houseid;
    }

    public void setHouseid(Integer houseid) {
        this.houseid = houseid;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getCommentcontent() {
        return commentcontent;
    }

    public void setCommentcontent(String commentcontent) {
        this.commentcontent = commentcontent == null ? null : commentcontent.trim();
    }

    public String getCommentscore() {
        return commentscore;
    }

    public void setCommentscore(String commentscore) {
        this.commentscore = commentscore == null ? null : commentscore.trim();
    }

    public Date getCommenttime() {
        return commenttime;
    }

    public void setCommenttime(Date commenttime) {
        this.commenttime = commenttime;
    }
}