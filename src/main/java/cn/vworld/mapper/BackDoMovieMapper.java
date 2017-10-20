package cn.vworld.mapper;

import cn.vworld.bean.MovieInfo;

public interface BackDoMovieMapper {
    public MovieInfo findMovieInfoByMovieId(String movieId);
}
