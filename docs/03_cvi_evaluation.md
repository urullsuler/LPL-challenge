# 03. 选手竞技价值指数（CVI）计算公式与流转

## 设计目标

CVI 的作用不是粗暴评价“选手强不强”，而是衡量其在战队中对胜率、战术执行、稳定性和长期发展价值的综合贡献。

## 计算公式

建议使用一个更贴近实战的量化模型：

$$
\text{CVI}_{raw} = 0.45 \times \text{DPM}_{norm} + 0.25 \times \text{GDTD@15}_{norm} + 0.20 \times \text{KDA}_{norm} + 0.10 \times \text{Vision}_{norm} - 0.15 \times \text{UnforcedErrors}_{norm}
$$

其中：
- $	ext{DPM}_{norm}$：分均输出归一化分数，反映选手对局内输出能力。
- $	ext{GDTD@15}_{norm}$：15 分钟经济差归一化分数，衡量选手对局势的影响力。
- $	ext{KDA}_{norm}$：击杀、死亡、助攻数据的综合表现。
- $	ext{Vision}_{norm}$：视野与信息输出能力。
- $	ext{UnforcedErrors}_{norm}$：致命失误次数惩罚项。

最后再将结果裁剪到 $0 \sim 100$ 的区间：

$$
\text{CVI} = \text{clip}(\text{CVI}_{raw}, 0, 100)
$$

## 流转规则

- CVI 高于 85 的选手可被视为“核心球员”。
- CVI 介于 70-84 的选手属于“主力级”。
- CVI 低于 65 的选手可进入交易、训练营或观察名单。
- 若某队连续两个赛季出现核心球员流失率高于 40%，则其联赛资格将接受额外审查。

## 示例

假设某选手的相关数值为：
- DPM：780
- GDTD@15：280
- KDA：7.8
- Vision：42
- UnforcedErrors：3

在给定的归一化规则下，该选手会得到较高的 CVI 分数，足以被视为主力级或核心级选手。该模型比“看名气”更容易识别底层混子与真正有价值的年轻球员。
