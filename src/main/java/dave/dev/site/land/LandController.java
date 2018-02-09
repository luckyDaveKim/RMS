package dave.dev.site.land;

import dave.dev.com.base.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
   * @param model the model
   * @return the string
   */
  @RequestMapping(value = "/list", method = RequestMethod.GET)
  public String showLandList(Model model) {
    // 서버 시간
    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
    String formattedDate = dateFormat.format(new Date());
    model.addAttribute("serverDate", formattedDate);

    // 매매 리스트 조회
    List<LandVo> boughtLandVos = landService.selectBoughtLandList(new LandVo());
    model.addAttribute("boughtLandVos", boughtLandVos);

    // 전세 리스트 조회
    List<LandVo> leasedLandVos = landService.selectLeasedLandList(new LandVo());
    model.addAttribute("leasedLandVos", leasedLandVos);

    // 월세 리스트 조회
    List<LandVo> rentedLandVos = landService.selectRentedLandList(new LandVo());
    model.addAttribute("rentedLandVos", rentedLandVos);

    return "land/list";
  }

  /**
   * Show bought land list string.
   *
   * @param model the model
   * @return the string
   */
  @RequestMapping(value = "/bought-list", method = RequestMethod.GET)
  public String showBoughtLandList(Model model) {
    // 서버 시간
    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
    String formattedDate = dateFormat.format(new Date());
    model.addAttribute("serverDate", formattedDate);

    // 매매 리스트 조회
    List<LandVo> boughtLandVos = landService.selectBoughtLandList(new LandVo());
    model.addAttribute("boughtLandVos", boughtLandVos);

    return "land/bought-list";
  }

  /**
   * Show leased land list string.
   *
   * @param model the model
   * @return the string
   */
  @RequestMapping(value = "/leased-list", method = RequestMethod.GET)
  public String showLeasedLandList(Model model) {
    // 서버 시간
    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
    String formattedDate = dateFormat.format(new Date());
    model.addAttribute("serverDate", formattedDate);

    // 전세 리스트 조회
    List<LandVo> leasedLandVos = landService.selectLeasedLandList(new LandVo());
    model.addAttribute("leasedLandVos", leasedLandVos);

    return "land/leased-list";
  }

  /**
   * Show rented land list string.
   *
   * @param model the model
   * @return the string
   */
  @RequestMapping(value = "/rented-list", method = RequestMethod.GET)
  public String showRentedLandList(Model model) {
    // 서버 시간
    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
    String formattedDate = dateFormat.format(new Date());
    model.addAttribute("serverDate", formattedDate);

    // 월세 리스트 조회
    List<LandVo> rentedLandVos = landService.selectRentedLandList(new LandVo());
    model.addAttribute("rentedLandVos", rentedLandVos);

    return "land/rented-list";
  }

  /**
   * Show land detail string.
   *
   * @param model  the model
   * @param landSq the landSq
   * @return the string
   */
  @RequestMapping(value = "/detail/{landSq}", method = RequestMethod.GET)
  public String showLandDetail(Model model, @PathVariable(value = "landSq") int landSq) {
    // land param 생성
    LandVo param = new LandVo();
    param.setLandSq(landSq);

    // land 정보 조회
    LandVo landVo = landService.selectLand(param);

    model.addAttribute("landVo", landVo);

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
    // 서버 시간
    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
    String formattedDate = dateFormat.format(new Date());
    model.addAttribute("serverDate", formattedDate);

    return "land/create";
  }

  /**
   * Write land string.
   *
   * @param landVo the land vo
   * @return the string
   */
  @RequestMapping(value = "/create", method = RequestMethod.POST)
  public String writeLand(LandVo landVo) {
    // 판매 상태 설정 - "판매중"
    landVo.setSaleState(LandVo.SaleState.SALE);

    // land 정보 삽입
    landService.insertLand(landVo);

    return String.format("redirect:/land/detail/%d", landVo.getLandSq());
  }

  /**
   * Show land edit string.
   *
   * @param model  the model
   * @param landSq the land sq
   * @return the string
   */
  @RequestMapping(value = "/edit/{landSq}", method = RequestMethod.GET)
  public String showLandEdit(Model model, @PathVariable(value = "landSq") int landSq) {
    // 서버 시간
    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
    String formattedDate = dateFormat.format(new Date());
    model.addAttribute("serverDate", formattedDate);

    // land param 생성
    LandVo param = new LandVo();
    param.setLandSq(landSq);

    // land 정보 조회
    LandVo landVo = landService.selectLand(param);

    model.addAttribute("landVo", landVo);

    return "land/edit";
  }

  /**
   * Edit land string.
   *
   * @param landVo the land vo
   * @param landSq the land sq
   * @return the string
   */
  @RequestMapping(value = "/edit/{landSq}", method = RequestMethod.POST)
  public String editLand(LandVo landVo, @PathVariable(value = "landSq") int landSq) {
    // landSq 삽입
    landVo.setLandSq(landSq);

    // land 정보 수정
    landService.updateLand(landVo);

    return String.format("redirect:/land/detail/%d", landVo.getLandSq());
  }

  /**
   * Delete land string.
   *
   * @param landVo the land vo
   * @param landSq the land sq
   * @return the string
   */
  @RequestMapping(value = "/delete/{landSq}", method = RequestMethod.POST)
  public String deleteLand(LandVo landVo, @PathVariable(value = "landSq") int landSq) {
    // land param 생성
    LandVo param = new LandVo();
    param.setLandSq(landSq);

    // land 삭제
    landService.deleteLand(landVo);

    return "redirect:/land/list";
  }

  /**
   * Sell land string.
   *
   * @param landSq the land sq
   * @return the string
   */
  @RequestMapping(value = "/sale/{landSq}", method = RequestMethod.POST)
  public String sellLand(@PathVariable(value = "landSq") int landSq) {
    LandVo param = new LandVo();
    param.setLandSq(landSq);
    param.setSaleState(LandVo.SaleState.SALE);

    // land 정보 조회
    landService.updateLandSaleState(param);

    return String.format("redirect:/land/detail/%d", param.getLandSq());
  }

  /**
   * Sell out land string.
   *
   * @param landSq the land sq
   * @return the string
   */
  @RequestMapping(value = "/sold-out/{landSq}", method = RequestMethod.POST)
  public String sellOutLand(@PathVariable(value = "landSq") int landSq) {
    LandVo param = new LandVo();
    param.setLandSq(landSq);
    param.setSaleState(LandVo.SaleState.SOLD_OUT);

    // land 정보 조회
    landService.updateLandSaleState(param);

    return String.format("redirect:/land/detail/%d", param.getLandSq());
  }

}