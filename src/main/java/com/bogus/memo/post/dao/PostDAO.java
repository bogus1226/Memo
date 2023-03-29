package com.bogus.memo.post.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.bogus.memo.post.model.Post;

@Repository
public interface PostDAO {

	public int insertPost(
			@Param("userId") int userId
			, @Param("title") String title
			, @Param("content") String content
			, @Param("imagePath") String imagePath);
	
	public List<Post> selectPostList(@Param("userId") int userId);
	
	public Post selectPost(@Param("id") int id);
	
	public int updatePost(
			@Param("id") int id
			, @Param("title") String title
			, @Param("content") String content);
	
	public int deletePost(@Param("id") int id);
}
