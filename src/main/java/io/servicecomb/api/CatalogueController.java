package io.servicecomb.api;

import io.servicecomb.model.Catalogue;
import io.servicecomb.provider.rest.common.RestSchema;
import io.servicecomb.repository.CatalogueRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RestSchema(schemaId = "catalogue")
@RequestMapping(path = "/catalogue")
public class CatalogueController {
    @Autowired
    private CatalogueRepository catalogueRepository;

    @ResponseStatus(HttpStatus.OK)
    @RequestMapping("/")
    public @ResponseBody List<Catalogue> getCatalogues() {
        List<Catalogue> catalogues = catalogueRepository.all();
        return catalogues;
    }
}
