package com.dhu.service;

import com.dhu.pojo.Comment;
import com.dhu.pojo.House;

import java.util.List;

public interface CommentService {
    List<Comment> listComment(House house);
    void addComment(Comment comment);
}
