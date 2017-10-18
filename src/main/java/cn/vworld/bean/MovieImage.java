package cn.vworld.bean;

public class MovieImage {
    private String imgageId;     //图片id
    private String movieId;     //电影id
    private String imgUrl;      //图片地址

    public String getImgageId() {
        return imgageId;
    }

    public void setImgageId(String imgageId) {
        this.imgageId = imgageId;
    }

    public String getMovieId() {
        return movieId;
    }

    public void setMovieId(String movieId) {
        this.movieId = movieId;
    }

    public String getImgUrl() {
        return imgUrl;
    }

    public void setImgUrl(String imgUrl) {
        this.imgUrl = imgUrl;
    }
}
