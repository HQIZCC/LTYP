package cn.vworld.service.backservice;

import cn.vworld.bean.MovieInfo;
import cn.vworld.bean.Type;
import cn.vworld.bean.User;

import java.util.List;

public interface MovieService {

    public Integer findMovieNum();

    public Integer findMovieTypeNum();

    public Integer findUserNum();

    List<MovieInfo> findAllMovie();

    List<Type> findAllMovieType();

    // 通过评论总量去选取5个最活跃的用户
    List<User> findUserByCommentNum();

    // 查询当前要的数据
    List<MovieInfo> findMovieList(int showpage, int lines);

    // 存储电影信息
    public void saveMovie(MovieInfo movieInfo);
}
