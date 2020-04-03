package com.dhu.service.impl;

import com.dhu.mapper.CommentMapper;
import com.dhu.pojo.Comment;
import com.dhu.pojo.House;
import com.dhu.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommentServiceImpl implements CommentService {
    @Autowired
    CommentMapper commentMapper;
    @Override
    public List<Comment> listComment(House house) {
        return commentMapper.listComment(house);
    }

    @Override
    public void addComment(Comment comment) {

        commentMapper.addComment(comment);

    }
}
