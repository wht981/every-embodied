# **Task 03:** 仿真平台实操详细介绍

从这一部分开始，你将亲手完成一次仿真环境下的数据采集与模型微调。

请按照步骤顺序操作，每一步都配有示意图。如有疑问，你可以查看相关教程👉🏻[仿真环境教程](https://developer.damo-academy.com/course/online/detail/303?key=1)

仿真实操主要包含以下环节：**创建任务 → 采集数据 → 确认数据集 → 创建微调任务 → 查看训练状态 → 导出模型 → 部署服务 → 技能调试。**下面逐一说明。



## **1.** 仿真数据采集

**1.1 创建任务**

首先，进入**数据采集 → 仿真数采**页面，点击“新增任务集”。在配置界面中依次填写任务集名称、描述、任务描述和任务指令，然后点击下一步。选择一个带有“空闲”标志的仿真机器人设备（可按构型筛选），创建完成后点击详情进入采集任务详情页。

![img](https://alidocs.dingtalk.com/core/api/resources/img/5eecdaf48460cde5c492f13b307c016f051c54cb793210e675b8339e1c4c24831b75b38faadcd24bec177c308ebd5304426cd583fcc53a813f8d4a7c0ecd16869273971a643365fa9d4d286e8068a2bd92c15ce13c29f9744fb4c8ed7016461c?tmpCode=ef6c7a8d-ae74-42c1-bc2b-761f49614155)

![img](https://alidocs.dingtalk.com/core/api/resources/img/5eecdaf48460cde5c492f13b307c016f051c54cb793210e675b8339e1c4c24831b75b38faadcd24bec177c308ebd530486d7e23f483ff24110d2e708fc7709d2c8d40f88aa9905d477aa77f6471a6c2c20992a4004a6a6c54fb4c8ed7016461c?tmpCode=ef6c7a8d-ae74-42c1-bc2b-761f49614155)

![img](https://alidocs.dingtalk.com/core/api/resources/img/5eecdaf48460cde5c492f13b307c016f051c54cb793210e675b8339e1c4c24831b75b38faadcd24bec177c308ebd5304fc252e0973752a9257c2a8562020b1e47e4f3805904963f81cd00d5ffbd6ff41dd3eb6b9f988d8494fb4c8ed7016461c?tmpCode=ef6c7a8d-ae74-42c1-bc2b-761f49614155)

![img](https://alidocs.dingtalk.com/core/api/resources/img/5eecdaf48460cde5c492f13b307c016f051c54cb793210e675b8339e1c4c24831b75b38faadcd24bec177c308ebd53040515cfe291715acc48631cd5d493cbd27dcf60d5f3bde54ce8001311dbc728bb66cba8444cc18def4fb4c8ed7016461c?tmpCode=ef6c7a8d-ae74-42c1-bc2b-761f49614155)

![img](https://alidocs.dingtalk.com/core/api/resources/img/5eecdaf48460cde5c492f13b307c016f051c54cb793210e675b8339e1c4c24831b75b38faadcd24bec177c308ebd53041c77ea9b95aabe3775ac52a43fb86309d302add84fbac38c1e4801edf1b1697963d7d763174b694b4fb4c8ed7016461c?tmpCode=ef6c7a8d-ae74-42c1-bc2b-761f49614155)



**1.2 开始采集**

接下来开始采集数据。在任务详情页点击“采集”按钮，等待连接仿真机器人成功。随后配置任务回合数、单回合时长和任务标签，点击确认。系统会自动打开数据采集页面，显示仿真摄像头视角、回合数、采集状态、计时器和键盘操作说明。点击右下角的“开始本回合”，计时开始，你可以使用键盘操作机械臂进行运动，关节数据会自动记录。完成任务动作后点击“结束本回合”，并在弹出的确认窗口中点击确认，即完成一个回合的录制。

如果需要重置场景道具的位置，可以点击“复位”按钮。重复上述步骤，直到所有预设的回合录制完成。录制完成后，在任务详情中会生成新的采集记录，其中包含多个回合的数据集。点击每条记录的详情，可以查看录制视频、关节角数据和对应的指令内容。

![img](https://alidocs.dingtalk.com/core/api/resources/img/5eecdaf48460cde5c492f13b307c016f051c54cb793210e675b8339e1c4c24831b75b38faadcd24bec177c308ebd5304c1fe5d940f59d75b90eaeddca3b55846d84f79d120ba096cb97b2c23a47a23e5c15d46a0fbcaae984fb4c8ed7016461c?tmpCode=ef6c7a8d-ae74-42c1-bc2b-761f49614155)

![img](https://alidocs.dingtalk.com/core/api/resources/img/5eecdaf48460cde5c492f13b307c016f051c54cb793210e675b8339e1c4c24831b75b38faadcd24bec177c308ebd5304f69dcac79a77bf939aa4dda2ca0a13d9eac7c94722160472dffa7fff2741f5f2c0ae4c07779fb2834fb4c8ed7016461c?tmpCode=ef6c7a8d-ae74-42c1-bc2b-761f49614155)

![img](https://alidocs.dingtalk.com/core/api/resources/img/5eecdaf48460cde5c492f13b307c016f051c54cb793210e675b8339e1c4c24831b75b38faadcd24bec177c308ebd53041c5a079364ccf1e603320f49b9c19251e77f43f0bd153bb6dff1eae75c499d706b3f1f78063fc4ba4fb4c8ed7016461c?tmpCode=ef6c7a8d-ae74-42c1-bc2b-761f49614155)

![img](https://alidocs.dingtalk.com/core/api/resources/img/5eecdaf48460cde5c492f13b307c016f051c54cb793210e675b8339e1c4c24831b75b38faadcd24bec177c308ebd5304fc7d5d4277662d9fe842767571e181dc0d50d312ef63245b5ae129c93bb976daa15cbac7902d8ad04fb4c8ed7016461c?tmpCode=ef6c7a8d-ae74-42c1-bc2b-761f49614155)

![img](https://alidocs.dingtalk.com/core/api/resources/img/5eecdaf48460cde5c492f13b307c016f051c54cb793210e675b8339e1c4c24831b75b38faadcd24bec177c308ebd530420ccac752fded59b271f80d59ba7dbfa99a6ca09923dbd16dc1f548609653b17906ef3390c1b1c7a4fb4c8ed7016461c?tmpCode=ef6c7a8d-ae74-42c1-bc2b-761f49614155)

![img](https://alidocs.dingtalk.com/core/api/resources/img/5eecdaf48460cde5c492f13b307c016f051c54cb793210e675b8339e1c4c24831b75b38faadcd24bec177c308ebd5304e032228300eab3009f3b44b8f0c464eeae5917ad941aa2392f1b3b2efa42eb1a78d71c3cb108c1704fb4c8ed7016461c?tmpCode=ef6c7a8d-ae74-42c1-bc2b-761f49614155)



## **2. 数据集查看**

完成数据采集后，需要确认数据集是否正确导入。进入**数据管理**页面，查看“我的数据集”。每一行代表一个数据集，点击“查看”可展开详情，看到每一条数据的帧率、帧数、指令等信息。再点击“详情”会打开一个小窗口，里面并排展示了采集的视频、关节角曲线图和关节角数值表格，可以在线播放查看。如果遇到浏览器视频乱码，请关闭浏览器的硬件加速功能并重启浏览器。

![img](https://alidocs.oss-cn-zhangjiakou.aliyuncs.com/res/AJdl65ARkzAxQOke/img/22d71d25-75bf-4c31-9748-3288a82a299b.png)

![img](https://alidocs.oss-cn-zhangjiakou.aliyuncs.com/res/AJdl65ARkzAxQOke/img/687ddf53-eb92-49dc-9210-9ac6d40596e8.png)

![img](https://alidocs.oss-cn-zhangjiakou.aliyuncs.com/res/AJdl65ARkzAxQOke/img/03444dc7-0c38-48bf-a6eb-4c2af3797b7a.png)



## 3. 模型微调

**3.1 创建模型微调任务**

接下来进入模型微调环节。进入**模型调优**页面，点击“创建训练任务”（注意当前同一体验用户仅有一个训练任务可同时运行）。首先填写基本信息，目前支持 LeRobot | SO-101 机器人构型及其对应的数据集。然后在模型配置中，可以选择官方预置的模型，也可以选择你自己微调后导出的自定义模型（自动导出会在训练成功后执行，若训练失败需手动导出）。超参配置已经设置为推荐值，你也可以根据个人需求调整。选择好训练配置后，点击“开始训练”。此时可以在模型调优任务列表中看到新创建的任务，并跟踪其状态。

![img](https://alidocs.dingtalk.com/core/api/resources/img/5eecdaf48460cde5c492f13b307c016f051c54cb793210e675b8339e1c4c24831b75b38faadcd24bec177c308ebd5304c0dcbff91b552c2eaa3abe15762b3642ae1a17f33183408a6a652a037e341fe469ffc87e8944039c4fb4c8ed7016461c?tmpCode=ef6c7a8d-ae74-42c1-bc2b-761f49614155)

![img](https://alidocs.dingtalk.com/core/api/resources/img/5eecdaf48460cde5c492f13b307c016f051c54cb793210e675b8339e1c4c24831b75b38faadcd24bec177c308ebd53045f43f6011c6fc536d0943eb79517f33bbbe7437ea4a4f4c35f33eebe631accfe9a96f3b5999843df4fb4c8ed7016461c?tmpCode=ef6c7a8d-ae74-42c1-bc2b-761f49614155)

![img](https://alidocs.dingtalk.com/core/api/resources/img/5eecdaf48460cde5c492f13b307c016f051c54cb793210e675b8339e1c4c24831b75b38faadcd24bec177c308ebd5304e71f502bb9cc82fa58d322cefa89c3dd4c5dc9abc6d4b74574179f30756ff4d7ee34c4acc16cd1db4fb4c8ed7016461c?tmpCode=ef6c7a8d-ae74-42c1-bc2b-761f49614155)

![img](https://alidocs.dingtalk.com/core/api/resources/img/5eecdaf48460cde5c492f13b307c016f051c54cb793210e675b8339e1c4c24831b75b38faadcd24bec177c308ebd5304f9975b5cb8a125277c3733291cf945207589ab52daad87af5fc354b5727d4b68878becb594c85d974fb4c8ed7016461c?tmpCode=ef6c7a8d-ae74-42c1-bc2b-761f49614155)



**3.2 查看训练状态**

在任务详情页面，你可以多维度查看训练进展。详情信息页显示训练配置；资源监控页显示 CPU、GPU 和内存占用；训练指标页展示各类指标的变化趋势；时间线页呈现整体训练进度；日志页可以查看详细的输出日志；产出模型页则会在训练完成后列出最终得到的模型文件。

![img](https://alidocs.dingtalk.com/core/api/resources/img/5eecdaf48460cde5c492f13b307c016f051c54cb793210e675b8339e1c4c24831b75b38faadcd24bec177c308ebd5304c9739254d7ad020fc1cd9628222583a86580f59b01650139dd777eb656cafcc9c3e97ede07403d234fb4c8ed7016461c?tmpCode=ef6c7a8d-ae74-42c1-bc2b-761f49614155)

![img](https://alidocs.dingtalk.com/core/api/resources/img/5eecdaf48460cde53426166cba4bd7815b0d6fa168a51e0b75b8339e1c4c24831b75b38faadcd24bec177c308ebd530456056042850122f5174f9d68b5503a9f44eccd0eda847fa8015d2fb5863392cae5bf8b993f35cbc94fb4c8ed7016461c?tmpCode=ef6c7a8d-ae74-42c1-bc2b-761f49614155)

**3.3 导出模型结果**

训练成功后，需要导出模型。在调优任务详情的“产出模型”页面，可以批量选择或单条导出模型。导出后的模型会出现在“我的模型”页面，你可以在此查看所有已导出的模型；如果误删了，可以回到产出模型页面重新导出。

![img](https://alidocs.dingtalk.com/core/api/resources/img/5eecdaf48460cde53426166cba4bd7815b0d6fa168a51e0b75b8339e1c4c24831b75b38faadcd24bec177c308ebd53041c56a54a198e5d5e68f6ec27ead4501070812ed296aecdebc081a577c3480b1d0dd8595fda1bdaa34fb4c8ed7016461c?tmpCode=ef6c7a8d-ae74-42c1-bc2b-761f49614155)

![img](https://alidocs.dingtalk.com/core/api/resources/img/5eecdaf48460cde53426166cba4bd7815b0d6fa168a51e0b75b8339e1c4c24831b75b38faadcd24bec177c308ebd5304917bc2e8b34722b6f7372ea077628e802cc39dcae736e56b7f9ab206c217999522cef7164c0045874fb4c8ed7016461c?tmpCode=ef6c7a8d-ae74-42c1-bc2b-761f49614155)

## 4. 模型部署

得到模型后，下一步是部署服务。

部署任务的创建入口有两个：我的模型页面和模型部署页面。创建时填写基本信息，选择模型技能（技能名称默认与 prompt 一致，推荐使用中文以便识别），然后选择部署配置。你可以设置服务的在线时长，超时后服务会自动下线。点击“开始部署”后，在部署任务列表中可查看部署状态。

服务上线有三种方式：部署完成后自动上线；已下线的服务可点击按钮重新上线；在模型广场-我的模型中也可以手动上线。服务下线则有自动（在线时长到期）和手动（点击下线按钮或卡片右上角）两种方式。已部署且正在运行的服务可以在“模型广场 → 我的模型”下查看。

![img](https://alidocs.dingtalk.com/core/api/resources/img/5eecdaf48460cde5c492f13b307c016f051c54cb793210e675b8339e1c4c24831b75b38faadcd24bec177c308ebd530498bb2b4fd83ac0896b39638968355b3807b56124301afa8db1d684d12a4303681910226802ab44804fb4c8ed7016461c?tmpCode=ef6c7a8d-ae74-42c1-bc2b-761f49614155)

![img](https://alidocs.dingtalk.com/core/api/resources/img/5eecdaf48460cde5c492f13b307c016f051c54cb793210e675b8339e1c4c24831b75b38faadcd24bec177c308ebd53047963ede79b6833bb1bf07cc5730129b5ee8e36acb7303fe7c46d65812545344caf7508f33876cf434fb4c8ed7016461c?tmpCode=ef6c7a8d-ae74-42c1-bc2b-761f49614155)

![img](https://alidocs.dingtalk.com/core/api/resources/img/5eecdaf48460cde5c492f13b307c016f051c54cb793210e675b8339e1c4c24831b75b38faadcd24bec177c308ebd5304a8b43db07da5bc8769f4740de61930e3947cb6c2944aed7f6db824c30491bdb116859541b7ec931c4fb4c8ed7016461c?tmpCode=ef6c7a8d-ae74-42c1-bc2b-761f49614155)

![img](https://alidocs.dingtalk.com/core/api/resources/img/5eecdaf48460cde5c492f13b307c016f051c54cb793210e675b8339e1c4c24831b75b38faadcd24bec177c308ebd5304ae224f63e6d94aea1ef4fce7c06473af70819865ea58319e2e869da183baaf419a0909fa228dfa034fb4c8ed7016461c?tmpCode=ef6c7a8d-ae74-42c1-bc2b-761f49614155)

![img](https://alidocs.dingtalk.com/core/api/resources/img/5eecdaf48460cde5c492f13b307c016f051c54cb793210e675b8339e1c4c24831b75b38faadcd24bec177c308ebd53041007bb3bce8afd12defcdeba3eb45c8abc75eab60d1737a7223a86be08c564e445cdee3e9fee8a354fb4c8ed7016461c?tmpCode=ef6c7a8d-ae74-42c1-bc2b-761f49614155)

## 5. 模型调试

最后，在仿真环境中调试你的模型。进入**模型广场**，通过调试环境筛选出“仿真”可用的模型。

点击“模型调试”进入模型详情页，选择仿真环境下对应构型的设备，然后点击“调试”按钮进入仿真调试页面。点击“开始调试”，后台会加载仿真资源。等待加载完成后，你可以观察机器人执行任务的过程，可以等待任务自动完成，也可以手动结束调试。所有的执行记录都可以在页面中查看。

![img](https://alidocs.dingtalk.com/core/api/resources/img/5eecdaf48460cde5c492f13b307c016f051c54cb793210e675b8339e1c4c24831b75b38faadcd24bec177c308ebd530401afda0bbc5f58a3973c4a7b45ed86f150e086ac3292dc499d33ab0fb270001dbbbfcc4157b522d74fb4c8ed7016461c?tmpCode=ef6c7a8d-ae74-42c1-bc2b-761f49614155)

![img](https://alidocs.dingtalk.com/core/api/resources/img/5eecdaf48460cde5c492f13b307c016f051c54cb793210e675b8339e1c4c24831b75b38faadcd24bec177c308ebd530493e5e3dbcddd1439a7438d316fb7b593a652378c6a7748c694e5577042c3190db62be20acfa7dbc04fb4c8ed7016461c?tmpCode=ef6c7a8d-ae74-42c1-bc2b-761f49614155)



**6.这一节你应该真正看懂什么？**

今天，你学会了如何**从零到一完成一次具身智能的开发闭环**。请记住：机器人技能并不是“模型突然就会了”，而是经过**数据采集 → 模型微调 → 部署 → 调试**这一整条链路逐步形成的。使用真实硬件本体的开发链路与仿真是完全同理的。

当你将训练好的模型部署后，可能会发现机械臂的执行效果并不理想。这往往与前期数据输入的质量有关——最终模型的训练效果高度依赖输入数据。如果把这个场景放到真机环境中，影响因素就更加复杂，例如：数据采集的数量不足、采集时光照和阴影的变化、训练参数的设置不合理等等。你需要学会反思过程中哪里出现了问题，并有针对性地重新调整数据或参数。





**7.今日任务（打卡提交）**

请完成以下小任务，作为今天实操学习的成果证明：

**任务**：在乐云仿真平台上完成一次 **“数据采集 → 模型微调 → 仿真调试”** 的闭环体验。
你可以选择以下两种路径之一（难度不同）：

- **路径A（推荐初学者）**：使用仿真平台，完成一条数据采集即可，在仿真环境，尝试使用键盘控制机械臂完成一条数据采集。
- **路径B（挑战性）**：使用仿真平台完成一个完整的数据集采集（例如“将香蕉放到碗里”），然后使用平台预置的预训练模型进行微调，完成一次微调任务并导出模型，最后在仿真环境中调试该模型，验证其是否能够实现预期功能。

提交内容：

- 一张截图：可以是一次数据采集成功的界面、训练任务成功完成的界面、导出模型的界面，或者仿真调试成功的执行画面。
- 一段 150-200 字的文字说明：用你自己的话描述今天走通的链路，至少包含以下三个要点：
  - 你做了哪几个关键步骤（例如：采集数据 → 微调 → 部署 → 调试）
  - 遇到的一个小问题（如果有）以及如何解决
  - 你认为仿真平台在具身智能开发中最重要的作用是什么

提交方式：请将截图和文字说明放在一个文档中（或直接在社区打卡），标题格式为“Task04 打卡 - 你的姓名/昵称”。