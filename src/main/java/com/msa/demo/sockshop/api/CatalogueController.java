package com.msa.demo.sockshop.api;

import com.msa.demo.sockshop.model.Catalogue;
import com.msa.demo.sockshop.repositories.CatalogueRepository;
import org.apache.servicecomb.provider.rest.common.RestSchema;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestSchema(schemaId = "catalogue")
@RequestMapping(value = "/")
public class CatalogueController {
    @Autowired
    private CatalogueRepository catalogueRepository;

    @ResponseStatus(HttpStatus.OK)
    @RequestMapping(value = "/catalogues", method = RequestMethod.GET)
    public @ResponseBody List<Catalogue> getCatalogues() {
        List<Catalogue> catalogues = catalogueRepository.all();
        return catalogues;
    }

    @ResponseStatus(HttpStatus.OK)
    @RequestMapping(value = "/catalogues/{id}", method = RequestMethod.GET)
    public @ResponseBody Catalogue getCatalogue(@PathVariable(value="id") String id) {
        Catalogue catalogue = catalogueRepository.find(id);
        if(catalogue == null) {
            return null;
        }
        return catalogue;
    }
}
