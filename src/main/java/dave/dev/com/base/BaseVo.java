package dave.dev.com.base;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * The type Base vo.
 */
public class BaseVo {
    /**
     * VO의 각 속성을 보기쉽게 찍어줌..
     */
    @Override
    public String toString() {
        return ToStringBuilder.reflectionToString(this, ToStringStyle.JSON_STYLE);
    }
}
