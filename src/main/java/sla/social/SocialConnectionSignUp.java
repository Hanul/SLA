package sla.social;


import java.util.Date;
import java.util.List;

import org.springframework.social.connect.Connection;
import org.springframework.social.connect.ConnectionSignUp;
import org.springframework.social.facebook.api.Facebook;
import org.springframework.social.facebook.api.FacebookProfile;

import sla.model.Achievement;
import sla.model.UserInfo;

/**
 * @author 심영재
 */
public final class SocialConnectionSignUp implements ConnectionSignUp {


	@Override
	public String execute(Connection<?> connection) {
		
		// 유저 정보를 생성하고 저장
		UserInfo userInfo = new UserInfo();
		
		userInfo.setJoinDate(new Date());
		
		userInfo.setSocialUser(true);
		userInfo.setSocialDisplayName(connection.getDisplayName());
		userInfo.setSocialImageUrl(connection.getImageUrl());
		userInfo.setSocialProfileUrl(connection.getProfileUrl());
		userInfo.setSocialProviderId(connection.getKey().getProviderId());
		userInfo.setSocialProviderUserId(connection.getKey().getProviderUserId());
		if (connection.getApi() instanceof Facebook) {
			Facebook facebook = (Facebook) connection.getApi();
			FacebookProfile fp = facebook.userOperations().getUserProfile();
			userInfo.setSocialName(fp.getName());
			userInfo.setSocialBirthday(fp.getBirthday());
			userInfo.setSocialEmail(fp.getEmail());
			userInfo.setSocialGender(fp.getGender());
			List<String> friendList=facebook.friendOperations().getFriendIds();
			userInfo.setSocialFriendCount(friendList.size());
		}
		System.out.println("가입"+userInfo.getLoginCount());

		userInfo.persist();
		if(userInfo.getLoginCount()==0){
			Achievement.addAchievementToUser(userInfo.getId(), Achievement.get("first_login").getId());
		}
		
		return userInfo.getId().toString();
	}

}
