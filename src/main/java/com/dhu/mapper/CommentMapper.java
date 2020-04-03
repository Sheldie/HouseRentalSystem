package com.dhu.mapper;

import com.dhu.pojo.Comment;
import com.dhu.pojo.House;

import java.util.List;

public interface CommentMapper {
    List<Comment> listComment(House house) ;
    void addComment(Comment comment);
}