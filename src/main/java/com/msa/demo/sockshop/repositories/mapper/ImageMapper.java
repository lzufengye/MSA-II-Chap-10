package com.msa.demo.sockshop.repositories.mapper;

import com.msa.demo.sockshop.model.Image;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface ImageMapper {
    @Select("SELECT * FROM IMAGES WHERE CATALOGUE_ID = #{catalogueId}")
    @Results({
            @Result(id=true,column="ID",property="id"),
            @Result(column="URL",property="url")
    })
    List<Image> findByCatalogueId(int catalogueId);
}
