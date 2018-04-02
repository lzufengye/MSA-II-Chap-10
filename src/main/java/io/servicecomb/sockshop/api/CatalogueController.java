package io.servicecomb.sockshop.api;

import io.servicecomb.provider.rest.common.RestSchema;
import io.servicecomb.sockshop.model.Catalogue;
import io.servicecomb.sockshop.repositories.CatalogueRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestSchema(schemaId = "catalogue")
@RequestMapping(value = "/catalogue")
public class CatalogueController {
    @Autowired
    private CatalogueRepository catalogueRepository;

    @ResponseStatus(HttpStatus.OK)
    @RequestMapping(value = "/catalogues", method = RequestMethod.GET)
    public @ResponseBody List<Catalogue> getCatalogues() {
        System.out.println("-----");
        List<Catalogue> catalogues = catalogueRepository.all();
        System.out.println("invoked");
        return catalogues;
    }

    @ResponseStatus(HttpStatus.OK)
    @RequestMapping(value = "/hello", method = RequestMethod.GET)
    public String hello() {
        return "HelloWorld";
    }
}
