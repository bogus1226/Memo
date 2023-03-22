package com.bogus.memo.post;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bogus.memo.post.bo.PostBO;
import com.bogus.memo.post.model.Post;

@Controller
@RequestMapping("/post")
public class PostController {
	
	@Autowired
	private PostBO postBO;

	@GetMapping("/list/view")
	public String memoList(
			Model model
			, HttpSession session) {
		Integer userId = (Integer)session.getAttribute("userId");
		
		List<Post> postList = postBO.getPostList(userId);
		model.addAttribute("postList", postList);
		
		return "/post/list";
	}
	
	@GetMapping("/create/view")
	public String memoCreate() {
		return "/post/create";
	}
	
	@GetMapping("/detail/view") 
	public String memoDetail(
			@RequestParam("id") int postId
			, Model model) {
		
		Post post =postBO.getPost(postId);
		model.addAttribute("post", post);
		
		return "/post/detail";
	}
}
