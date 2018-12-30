package cm.vo;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

/**
 * @Author: Yunfeng Huang
 * @Description:
 * @Date: Created in 2018/12/21
 */
@Data
public class KlassRoundVO {
    @JsonProperty("classId")
    private Long klassId;
    @JsonProperty("classSerial")
    private Byte klassSerial;

    private Byte enrollNum;
}