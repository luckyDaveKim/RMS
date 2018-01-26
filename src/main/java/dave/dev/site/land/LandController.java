package dave.dev.site.land;

import dave.dev.com.base.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

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
    public String showLandList(Model model) throws Exception {
        // land list 조회
        List<LandVo> landVos = landService.selectLandList(new LandVo());

        model.addAttribute("landVos", landVos);

        return "land/list";
    }

    /**
     * Show land detail string.
     *
     * @param model  the model
     * @param landSq the landSq
     * @return the string
     * @throws Exception the exception
     */
    @RequestMapping(value = "/detail/{landSq}", method = RequestMethod.GET)
    public String showLandDetail(Model model, @PathVariable(value = "landSq") int landSq) throws Exception {
        // land 정보 조회
        LandVo landVo = landService.selectLandBySq(landSq);

        model.addAttribute("landVo", landVo);

        System.out.println("조회 : " + landSq);

        return "land/detail";
    }

    /**
     * Land writing string.
     *
     * @param model the model
     * @return the string
     */
    @RequestMapping(value = "/create", method = RequestMethod.GET)
    public String showLandWriting(Model model) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        String formattedDate = dateFormat.format(new Date());

        model.addAttribute("serverDate", formattedDate);

        return "land/create";
    }

    /**
     * Write land string.
     *
     * @param landVo       the land vo
     * @param liveableDate the liveable date
     * @return the string
     * @throws Exception the exception
     */
    @RequestMapping(value = "/create", method = RequestMethod.POST)
    public String writeLand(LandVo landVo, @RequestParam("liveableDate") String liveableDate) throws Exception {
        // 판매 상태 설정 - "판매중"
        landVo.setSaleState(LandVo.SaleState.SALE);

        // land 정보 삽입
        landService.insertLand(landVo);

        return String.format("redirect:/land/detail/%d", landVo.getLandSq());
    }

    /**
     * Show land edit string.
     *
     * @param landSq the land sq
     * @return the string
     */
    @RequestMapping(value = "/edit/{landSq}", method = RequestMethod.GET)
    public String showLandEdit(Model model, @PathVariable(value = "landSq") int landSq) throws Exception {
        // land 정보 조회
        LandVo landVo = landService.selectLandBySq(landSq);

        model.addAttribute("landVo", landVo);

        return "land/edit";
    }

}