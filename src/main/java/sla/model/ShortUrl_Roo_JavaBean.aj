// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package sla.model;

import sla.model.ShortUrl;
import sla.model.UserInfo;

privileged aspect ShortUrl_Roo_JavaBean {
    
    public String ShortUrl.getShortUrl() {
        return this.shortUrl;
    }
    
    public void ShortUrl.setShortUrl(String shortUrl) {
        this.shortUrl = shortUrl;
    }
    
    public String ShortUrl.getEntityId() {
        return this.entityId;
    }
    
    public void ShortUrl.setEntityId(String entityId) {
        this.entityId = entityId;
    }
    
    public Integer ShortUrl.getVisitCountSum() {
        return this.visitCountSum;
    }
    
    public void ShortUrl.setVisitCountSum(Integer visitCountSum) {
        this.visitCountSum = visitCountSum;
    }
    
    public String ShortUrl.getComments() {
        return this.comments;
    }
    
    public void ShortUrl.setComments(String comments) {
        this.comments = comments;
    }
    
    public String ShortUrl.getLikes() {
        return this.likes;
    }
    
    public void ShortUrl.setLikes(String likes) {
        this.likes = likes;
    }
    
    public Integer ShortUrl.getLikeCount() {
        return this.likeCount;
    }
    
    public void ShortUrl.setLikeCount(Integer likeCount) {
        this.likeCount = likeCount;
    }
    
    public UserInfo ShortUrl.getUserInfo() {
        return this.userInfo;
    }
    
    public void ShortUrl.setUserInfo(UserInfo userInfo) {
        this.userInfo = userInfo;
    }
    
    public String ShortUrl.getUrl() {
        return this.url;
    }
    
    public String ShortUrl.getContent() {
        return this.content;
    }
    
    public void ShortUrl.setContent(String content) {
        this.content = content;
    }
    
    public boolean ShortUrl.isHide() {
        return this.hide;
    }
    
    public void ShortUrl.setHide(boolean hide) {
        this.hide = hide;
    }
    
}
