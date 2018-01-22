package dave.dev.kr.site.land.edit.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/lands/edit")
public class LandEditController {

    @RequestMapping(value = "")
    public String writeLand() {
        return "lands/write";
    }

    @RequestMapping(value = "/{id}")
    public String editLand(@PathVariable("id") int id) {
        return "lands/edit";
    }

}