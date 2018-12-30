package cm.vo;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

import java.util.List;

/**
 * @Author: Yunfeng Huang
 * @Description:
 * @Date: Created in 2018/12/21
 */
@Data
public class RequestTypeVO {

    @JsonProperty("teamshare")
    List<SimpleRequestVO>teamRequestVOList;

    @JsonProperty("seminarshare")
    List<SimpleRequestVO>seminarRequestVOList;

    @JsonProperty("teamvalid")
    List<SimpleRequestVO>validRequestVOList;
}