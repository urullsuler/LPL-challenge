# LPL Challenge

这是一个面向 LPL 赛季改革的项目骨架，目标是把“战队保级、青训选拔与选手竞技价值评估”这三个核心议题整理成可扩展的文档、数据与代码结构。

## 项目愿景

通过制度设计、模拟数据与可视化看板，帮助讨论 LPL 未来改革方案时更清楚地呈现：
- 哪些战队更容易面临保级风险；
- 选手与新秀如何通过制度获得更合理的出场机会；
- 如何用 CVI 等指标衡量选手长期价值，而非只看短期爆发。

## 目录结构

- docs/：核心改革方案文档
  - 01_relegation_system.md
  - 02_talent_selection.md
  - 03_cvi_evaluation.md
- data/：模拟样本数据
  - players_mock.json
  - teams_status.json
- src/：未来的数据分析脚本与可视化系统
  - frontend/
  - backend/

## 快速开始

1. 查看文档：进入 docs/ 目录阅读改革方案说明。
2. 查看样例数据：在 data/ 目录中查看模拟的选手和战队信息。
3. 浏览前端页面：打开 src/frontend/index.html 即可看到一个基础看板页面。

## 未来扩展方向

- 将 JSON 数据接入前端图表或分析脚本。
- 为后端增加数据库 schema 与 API 接口。
- 引入更细化的 CVI 计算与保级模拟逻辑。

