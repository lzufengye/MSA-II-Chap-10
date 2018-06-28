package com.msa.demo.sockshop.repositories;

import com.msa.demo.sockshop.model.Catalogue;
import com.msa.demo.sockshop.model.Tag;
import com.msa.demo.sockshop.repositories.mapper.CatalogueMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class CatalogueRepository {
    @Autowired
    private CatalogueMapper catalogueMapper;

    public List<Catalogue> all() {
        List<Catalogue> catalogues = new ArrayList<Catalogue>();
        catalogues = catalogueMapper.all();
        List<Tag> tags = new ArrayList<Tag>();
        tags.add(new Tag("fasion", "时尚"));
        tags.add(new Tag("winter", "冬款"));
        catalogues.add(new Catalogue("Fasion Sock", "For young people", null, 16.0f, 30, tags));
        catalogues.add(new Catalogue("Best Sock", "Best sock, you will love it", null, 68.0f, 20, tags));
        return catalogues;
    }

    public Catalogue find(String id) {
        return catalogueMapper.find(id);
    }
}
