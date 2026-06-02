# AGILE 章节素材说明

本目录只保存教程所需的轻量化学习素材，不包含 AGILE 模型权重、Isaac 环境、Nucleus 缓存或完整运行日志。

## official_figures

以下图片来自 NVIDIA Isaac 官方开源仓库 `nvidia-isaac/WBC-AGILE` 的 `docs/figures/` 目录：

- `agile_highlights.png`
- `separate_upper_lower_body_policy_diagram.png`
- `evaluation_report_summary.png`
- `evaluation_report_tracking.png`

在正文中使用时，请保留图题和来源说明。

## official_videos

以下 GIF 来自 NVIDIA Isaac 官方开源仓库 `nvidia-isaac/WBC-AGILE` 的 `docs/videos/` 目录：

- `booster_t1_vel_sim2sim.gif`
- `booster_t1_vel_sim2real.gif`
- `unitree_g1_vel_height_sim2sim.gif`
- `unitree_g1_vel_height_sim2real.gif`
- `g1_apple_grasp_black_sort_bin_multi_objects_no_marker_reduced.gif`
- `unitree_g1_dancing_sim.gif`

这些素材用于展示官方论文/项目效果，不代表本章本地重新训练得到的结果。

## local_videos

以下 MP4 由本章复刻过程生成：

- `t1_velocity_policy_smoke.mp4`：`Velocity-T1-v0` 预训练策略短视频。
- `g1_velocity_height_checkpoint_smoke.mp4`：`Velocity-Height-G1-Distillation-Recurrent-v0` 完整 checkpoint 短视频。
- `g1_pickplace_tracking_scene_smoke.mp4`：`G1-PickPlace-Tracking-v0` 场景加载和 action 链路短视频。

这些视频是 smoke-test 证据，只说明环境、资产、策略加载或场景调试链路可运行，不代表完整训练收敛或真机部署。
