package dave.dev.site.land;

import dave.dev.com.base.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

/**
 * 매물 컨트롤러
 * The type Land controller.
 */
@Controller
@RequestMapping(value = "/land")
public class LandController extends BaseController {

    @Resource(name = "landService")
    private LandService landService;

    /**
     * Land list string.
     *
     * @return the string
     */
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String showLandList() {
        return "land/list";
    }

    /**
     * Land detail string.
     *
     * @param id the id
     * @return the string
     * @throws Exception the exception
     */
    @RequestMapping(value = "/detail/{id}", method = RequestMethod.GET)
    public String showLandDetail(@PathVariable(value = "id") int id) throws Exception {
        LandVo landVo = new LandVo();
//        landVo.setCode(1);
        System.out.println(id + "를 상세하게본다");
        System.out.println(landService.selectLand(landVo));
        System.out.println(id + "를 상세하게본다 끝");

        return "land/detail";
    }

    /**
     * Land writing string.
     *
     * @return the string
     */
    @RequestMapping(value = "/create", method = RequestMethod.GET)
    public String showLandWriting(Locale locale, Model model) {
//        System.out.println("생성 화면 호출.");
//
//        model.addAttribute("now", new Date());
//        model.addAttribute("now2", "hi");
//
//        return "land/create";

        Date date = new Date();
        DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

        String formattedDate = dateFormat.format(date);

        model.addAttribute("serverTime", formattedDate);

        return "land/create";
    }

    /**
     * Write land string.
     *
     * @return the string
     */
    @RequestMapping(value = "/create", method = RequestMethod.POST)
    public String writeLand(LandVo landVo) throws Exception {
        System.out.println("다음 생성 한다." + landVo);
        System.out.println("키" + landService.insertLand(landVo));

        return String.format("redirect:/land/detail/%d", 10);
    }

    /**
     * Land edit string.
     *
     * @param id the id
     * @return the string
     */
    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public String showLandEdit(@PathVariable(value = "id") int id) {
        System.out.println(id + "를 수정한다");
        return "land/edit";
    }

}