package com.msa.demo.sockshop.repositories.mapper;

import com.msa.demo.sockshop.model.Catalogue;
import com.msa.demo.sockshop.model.Image;
import org.apache.ibatis.annotations.*;
import org.apache.ibatis.mapping.FetchType;

import java.util.List;

@Mapper
public interface CatalogueMapper {
    @Select("SELECT * FROM CATALOGUES")
    @Results({
            @Result(id=true,column="ID",property="id"),
            @Result(column="NAME",property="name"),
            @Result(column="DESCRIPTION",property="description"),
            @Result(column="PRICE",property="price"),
            @Result(column="STOCK",property="stock"),
            @Result(column="ID",property="images",
                    many=@Many(
                            select="com.msa.demo.sockshop.repositories.mapper.ImageMapper.findByCatalogueId"))
    })
    List<Catalogue> all();

    @Select("SELECT * FROM CATALOGUES where id = #{id}")
    @Results({
            @Result(id=true,column="ID",property="id"),
            @Result(column="NAME",property="name"),
            @Result(column="DESCRIPTION",property="description"),
            @Result(column="PRICE",property="price"),
            @Result(column="STOCK",property="stock"),
            @Result(column="ID",property="images",
                    many=@Many(
                            select="com.msa.demo.sockshop.repositories.mapper.ImageMapper.findByCatalogueId"))
    })
    Catalogue find(String id);
}
