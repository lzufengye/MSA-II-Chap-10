package com.msa.demo.sockshop.repositories.mapper;

import com.msa.demo.sockshop.model.Image;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface TagMapper {
    @Select("SELECT * FROM TAGS WHERE CATALOGUE_ID = #{catalogueId}")
    @Results({
            @Result(id=true,column="ID",property="id"),
            @Result(column="NAME",property="name"),
            @Result(column="DISPLAY",property="display")
    })
    List<Image> findByCatalogueId(int catalogueId);
}
