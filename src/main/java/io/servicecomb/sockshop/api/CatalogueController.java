package io.servicecomb.sockshop.api;

import io.servicecomb.sockshop.repository.CatalogueRepository;
import io.servicecomb.sockshop.model.Catalogue;
import io.servicecomb.provider.rest.common.RestSchema;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RestSchema(schemaId = "catalogue")
@RequestMapping(value = "/catalogue")
public class CatalogueController {
    @Autowired
    private CatalogueRepository catalogueRepository;

    @ResponseStatus(HttpStatus.OK)
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public @ResponseBody List<Catalogue> getCatalogues() {
        List<Catalogue> catalogues = catalogueRepository.all();
        return catalogues;
    }
}
