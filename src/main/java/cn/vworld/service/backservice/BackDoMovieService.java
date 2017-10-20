package cn.vworld.service.backservice;

import cn.vworld.bean.MovieInfo;

public interface BackDoMovieService {
    public MovieInfo findMovieInfoByMovieId(String movieId);
}
