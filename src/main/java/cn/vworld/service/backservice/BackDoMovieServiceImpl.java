package cn.vworld.service.backservice;

import cn.vworld.bean.MovieInfo;
import cn.vworld.mapper.BackDoMovieMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BackDoMovieServiceImpl implements BackDoMovieService {

    @Autowired
    private BackDoMovieMapper backDoMovieMapper;

    @Override
    public MovieInfo findMovieInfoByMovieId(String movieId) {

        return backDoMovieMapper.findMovieInfoByMovieId(movieId);
    }
}
