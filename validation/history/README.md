此目录保留设计生成过程中的中间检查结果，不代表最终交付状态。

* `DRC_initial.rpt`：首次放置时的元件重叠/短接及全部未布线问题，之后已经调整放置。
* `DRC_placement.rpt`：放置违规为 0，但尚未布线。
* `DRC_route1.rpt`：首轮布线仍有 6 处未连接，之后已经解决。

最终结果以父目录 `ERC.rpt`、`DRC.rpt`、`EAGLE_roundtrip_DRC.rpt`、`connections.json` 为准。最终自动检查没有添加违规豁免或关闭检查项。
