package cn.vworld.service;

import cn.vworld.bean.Comment;
import cn.vworld.bean.MovieImage;
import cn.vworld.bean.MovieInfo;

import java.util.ArrayList;
import java.util.List;

public interface MovieService {


    /**
     * 查找第一行的电影
     * @param page 当前页码
     * @return 第一行的电影对象集合
     */
    ArrayList<MovieInfo> findfirstfourMovie(Integer page);

    /**
     * 查找第二行的电影
     * @param page 当前页码
     * @return 第二行的电影对象集合
     */
    ArrayList<MovieInfo> findsecondfourMovie(Integer page);

    /**
     * 查找第三行的电影
     * @param page 当前页面
     * @return 第三行的电影对象集合
     */
    ArrayList<MovieInfo> findthirdfourMovie(Integer page);

    /**
     * 查找一共有多少部电影
     * @return 电影的数量
     */
    Integer findMovieNum();

    /**
     * 通过movieInfoid来查找movieInfo对象
     * @param movieInfoId movieInfo的id
     * @return 返回的是movieInfo对象
     */
    MovieInfo findMovieInfoByMovieInfoId(String movieInfoId);

    /**
     * 通过movieInfoId来查找movieImage表上的内容
     * @param movieInfoId movieInfo的id
     * @return 返回查找到的movie_image对象集合
     */
    List<MovieImage> findMovieImageByMovieInfoId(String movieInfoId);

    List<Comment> findCommentsByMovie(String movieInfoId);

    void insertComment(Comment comment);
}
