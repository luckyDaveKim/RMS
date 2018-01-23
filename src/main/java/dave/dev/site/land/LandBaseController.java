package dave.dev.site.land;

import dave.dev.com.base.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

/**
 * 매물 컨트롤러
 * The type Land controller.
 */
@Controller
@RequestMapping(value = "/land")
public class LandBaseController extends BaseController {

    @Resource(name = "landService")
    private LandService landService;

    /**
     * 매물 리스트
     * Land list string.
     *
     * @return the string
     */
    @RequestMapping(value = "/list")
    public String LandList() {
        return "land/list";
    }

    @RequestMapping(value = "/detail/{id}")
    public String LandDetail(@PathVariable(value = "id") int id) throws Exception {
        LandVo landVo = new LandVo();
        System.out.println(id + "를 상세하게본다");
        System.out.println(landService.selectLandInfo(landVo));
        System.out.println(id + "를 상세하게본다 끝");

        return "land/detail";
    }

    @RequestMapping(value = "/create")
    public String LandWrite() {
        return "land/create";
    }

    @RequestMapping(value = "/edit/{id}")
    public String LandEdit(@PathVariable(value = "id") int id) {
        System.out.println(id + "를 수정한다");
        return "land/edit";
    }

}