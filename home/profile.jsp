<%
	String sUserName = session.getAttribute("userName");
	if(sUserName == null )
	{
		String redirectURL = "http://localhost:8080/friendZone-jsp/index.jsp";
        	response.sendRedirect(redirectURL);
	}
	if(request.getParameter("logout")!= null)
	{
		session.invalidate();
		System.out.println("<script type='text/javascript'>alert('Succesfully Logout');window.location.href = '../index.php';</script>");
	}
	if(request.getParameter("user1") != null && request.getParameter("user2")!= null)
	{
		Users user = new Users();
		int user1 = request.getParameter("user1");
		int user2 = request.getParameter("user2");
		String uName = request.getParameter("profile");
		boolean result = user.follow(user1,user2);
		if(result == true)
		{
			out.println("<script type='text/javascript'>alert('Could not follow.Try later.');</script>");
		}
		else
		{
			String redirectURL = "http://localhost:8080/friendZone-jsp/profile.php?profile="+uName;
        	response.sendRedirect(redirectURL);
		}
	}
	if( request.getParameter("like") != null && request.getParameter("likeBtn")!= null)
	{
		Users user = new Users();
		int wId = request.getParameter("uId");
		int postId = request.getParameter("like");
		String uName = request.getParameter("profile");
		Boolean like = user.likes(wId, postId);
		if(like == false)
			out.println("<script type='text/javascript'>alert('Could not like the post');</script>");
		else
			String redirectURL = "http://localhost:8080/friendZone-jsp/profile.php?profile="+uName;
        	response.sendRedirect(redirectURL);
	}

	if(request.getParameter("profile")!=null)	
	{
		Users user = new Users();
		String username = request.getParameter("profile");
		
	}


%>