package cn.vworld.bean;

public class Comment extends BaseEntity {
    private String commId;      //评论id
    private String userId;      //userId
    private String movieId;     //电影id
    private String commDetail;  //评论内容

    public String getCommId() {
        return commId;
    }

    public void setCommId(String commId) {
        this.commId = commId;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getMovieId() {
        return movieId;
    }

    public void setMovieId(String movieId) {
        this.movieId = movieId;
    }

    public String getCommDetail() {
        return commDetail;
    }

    public void setCommDetail(String commDetail) {
        this.commDetail = commDetail;
    }
}
