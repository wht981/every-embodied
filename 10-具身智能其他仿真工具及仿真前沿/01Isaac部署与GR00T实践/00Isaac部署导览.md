# Isaac Sim、Isaac Lab 与 GR00T 部署导览

本目录把 Isaac 相关内容集中到同一个入口，避免大家在“本地安装”“云服务器部署”“Isaac Lab”“GR00T”几个文档之间来回跳转。实际复刻时，本地工作站、学校服务器和阿里云 GPU 实例的核心差别并不在 Isaac 命令本身，而在 GPU 驱动、显存、远程桌面、Docker 权限和磁盘空间。

如果只是想在自己的 Windows 电脑上先跑起来，优先看本目录的本地与云端配置教程；如果已经有云服务器，并且目标是复现 GR00T，再进入原有的阿里云实践文档。

## 文档入口

| 学习目标 | 推荐文档 |
| --- | --- |
| 本地 Windows 安装 Isaac Sim，先打开 GUI 并跑一个机器人场景 | [Isaac Sim 本地与云端配置教程](01Isaac-Sim本地与云端配置.md) |
| Linux 工作站或云服务器安装 Isaac Sim，配置 Docker / 远程桌面 / Isaac Lab | [Isaac Sim 本地与云端配置教程](01Isaac-Sim本地与云端配置.md) |
| 使用 micromamba、venv 或 pip 管理 Isaac Sim / Isaac Lab 环境 | [Isaac Sim 本地与云端配置教程](01Isaac-Sim本地与云端配置.md) |
| 在阿里云 A10 实例上复现 Isaac Lab + GR00T 老版本链路 | [阿里云部署 Isaac Lab + GR00T 完整教程](02阿里云部署Isaac-Lab-GR00T完整教程.md) |
| 直接阅读 GR00T 代码、数据格式、推理和微调说明 | [Isaac-GR00T 项目说明](../Isaac-GR00T/README.md) |

## 推荐顺序

刚接触 Isaac 的同学不要一开始就同时装 Isaac Sim、Isaac Lab、ROS2、GR00T 和 Docker。建议先完成一个最小闭环：确认 `nvidia-smi` 能看到 NVIDIA GPU，然后用 Workstation 或 pip 方式启动 Isaac Sim，再在 GUI 中创建一个 Simple Room 和 Franka 机械臂。这个闭环证明驱动、图形界面、Isaac 扩展和基础资产链路是通的。

当 Isaac Sim 可以稳定启动后，再根据目标选择后续路线。做强化学习或大规模并行任务的同学继续安装 Isaac Lab；做 ROS2 系统联调的同学再配置 ROS2 Bridge；做 GR00T 的同学进入原有云端教程或 GR00T 项目目录。这样每一步出问题时，排查范围更小。

## 版本关系

本文档主线采用 Isaac Sim 5.1 和 Isaac Lab 2.3.x 的官方安装方式。仓库中的阿里云 GR00T 教程为了保证历史可复现，锁定的是 Isaac Sim 4.2.0、Isaac Lab v1.4.1、GR00T N1.6、PyTorch 2.5.1 和 CUDA 12.1。两个路线不要混装在同一个 Python 环境里。

原则上，Isaac Sim、Isaac Lab、PyTorch 和 GR00T 应该按项目拆环境。可以共享 NVIDIA 驱动、Docker 镜像层、pip/mamba 缓存、模型权重和数据目录，但不要把多个 Isaac 版本的 Python 包混在同一个 `site-packages` 中。
