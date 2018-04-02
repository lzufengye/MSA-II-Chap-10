package io.servicecomb.sockshop.repositories;

import io.servicecomb.sockshop.model.Catalogue;
import io.servicecomb.sockshop.model.Tag;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class CatalogueRepository {
    public List<Catalogue> all() {
        List<Catalogue> catalogues = new ArrayList<Catalogue>();
        List<Tag> tags = new ArrayList<Tag>();
        tags.add(new Tag("fasion", "时尚"));
        tags.add(new Tag("winter", "冬款"));
        catalogues.add(new Catalogue("Fasion Sock", "For young people", null, 16.0f, 30, tags));
        catalogues.add(new Catalogue("Best Sock", "Best sock, you will love it", null, 68.0f, 20, tags));
        return catalogues;
    }
}
