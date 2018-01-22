package dave.dev.kr.site.land.list.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/lands/list")
public class LandListController {

    @RequestMapping(value = "")
    public String landList() {
        return "lands/list";
    }

}