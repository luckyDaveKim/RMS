package dave.dev.site.land;

import dave.dev.com.base.BaseDao;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("landDao")
public class LandDao extends BaseDao {

    public LandVo selectLand(LandVo param) throws Exception {
        return (LandVo) super.select("landDao.selectLand", param);
    }

    public LandVo selectLandBySq(int code) throws Exception {
        return (LandVo) super.select("landDao.selectLandBySq", code);
    }

    public List<LandVo> selectLandList(LandVo param) throws Exception {
        return super.list("landDao.selectLandList", param);
    }

    public int insertLand(LandVo param) throws Exception {
        return super.insert("landDao.insertLand", param);
    }

}