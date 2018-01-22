package dave.dev.kr.site.land.detail.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/lands/detail")
public class LandDetailContoller {

    @RequestMapping(value = "/{id}")
    public String landList(@PathVariable("id") int id) {
        return "lands/detail";
    }

}