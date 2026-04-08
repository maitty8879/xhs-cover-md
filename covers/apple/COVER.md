# XHS Cover Style: Apple

> 极致黑白，产品即舞台。苹果官网的设计语言，搬到小红书封面上。

## 1. Cover Identity

- **Style Name**: Apple Cinematic Black
- **One-liner**: 纯黑画布 + 唯一蓝色 + 紧凑排版 = 苹果级高级感
- **Vibe**: 克制、精密、电影感、产品至上
- **Best For**: 工具测评、产品推荐、设计拆解、技术干货
- **Source**: [apple.com](https://apple.com) → [DESIGN.md](https://github.com/VoltAgent/awesome-design-md/tree/main/design-md/apple)

## 2. Color System

### Backgrounds
| Role | Color | Hex |
|------|-------|-----|
| Primary BG | Pure Black | `#000000` |
| Card BG | Near Black | `#1d1d1f` |
| Alt Section BG | Light Gray | `#f5f5f7` |

### Text
| Role | Color | Hex |
|------|-------|-----|
| Heading (on dark) | White | `#ffffff` |
| Body (on dark) | White 60% | `rgba(255,255,255,0.6)` |
| Muted (on dark) | White 40% | `rgba(255,255,255,0.4)` |
| Heading (on light) | Near Black | `#1d1d1f` |

### Accent — THE ONLY COLOR
| Role | Color | Hex |
|------|-------|-----|
| Primary CTA | Apple Blue | `#0071e3` |
| Link on Dark | Bright Blue | `#2997ff` |
| Link on Light | Link Blue | `#0066cc` |

> ⚠️ Apple 的设计中只有一个彩色：蓝色。绝不引入第二个强调色。

## 3. Typography

### Font Stack
```css
font-family: 'Inter', 'Noto Sans SC', -apple-system, BlinkMacSystemFont, sans-serif;
```
> 替代方案：SF Pro 是 Apple 专属字体，开源替代用 Inter（西文）+ Noto Sans SC（中文）

### Hierarchy for XHS Cover (1500×2000)

| Element | Size | Weight | Line Height | Letter Spacing |
|---------|------|--------|-------------|----------------|
| 主标题 | 128px | 900 (Black) | 1.05 | -3px |
| 副标题 | 34px | 300 (Light) | 1.4 | -0.3px |
| Overline | 24px | 400 | 1.2 | 2px (spaced) |
| 系列标签 | 30px | 600 | 1.2 | -0.2px |
| 作者名 | 28px | 600 | 1.2 | -0.2px |
| 作者描述 | 22px | 400 | 1.3 | -0.1px |
| 卡片标题 | 28px | 700 | 1.2 | -0.4px |
| 卡片描述 | 20px | 400 | 1.5 | -0.2px |
| CTA 按钮 | 22px | 500 | 1.0 | -0.2px |
| 底部标签 | 17px | 500 | 1.0 | -0.1px |

### Key Principles
- **负字距贯穿全局** — 每个层级都有负 letter-spacing，这是 Apple 排版的灵魂
- **标题极紧行高** — 1.05，字行之间几乎贴合，营造"机械切割"的精密感
- **字重跨度大** — 标题 900（极粗）vs 副标题 300（极细），对比制造张力
- 主标题使用渐变文字：从白到半透明白，增加纵深感

### Headline Gradient
```css
background: linear-gradient(180deg, #ffffff 40%, rgba(255,255,255,0.55) 100%);
-webkit-background-clip: text;
-webkit-text-fill-color: transparent;
```

## 4. Layout Structure

```
┌──────────────────────────────────────┐
│  [系列标签·药丸]         [头像+ID]    │  48px top padding
│   30px #2997ff           28px white  │  
├──────────────────────────────────────┤
│                                      │
│           OVERLINE 24px              │  
│                                      │
│        ████████████████              │
│        █  主标题 128px  █             │  居中，占据 ~55% 高度
│        ████████████████              │
│                                      │
│         副标题 34px light            │
│                                      │
│     [获取模板 →]  [了解更多]          │  药丸按钮
│                                      │
├──────────────────────────────────────┤
│  ┌──────┐  ┌──────┐  ┌──────┐      │
│  │ Icon │  │ Icon │  │ Icon │      │  #1d1d1f 卡片
│  │Title │  │Title │  │Title │      │  24px radius
│  │ Desc │  │ Desc │  │ Desc │      │  48px padding
│  └──────┘  └──────┘  └──────┘      │
├──────────────────────────────────────┤
│  (Apple) (Stripe) (Linear) (Vercel) │  底部标签导航
└──────────────────────────────────────┘
```

### Spacing
| Area | Value |
|------|-------|
| Frame Padding (sides) | 80px |
| Top bar top padding | 48px |
| Hero section | flex: 1 (fills remaining) |
| Feature cards gap | 20px |
| Feature cards padding | 48px 36px |
| Bottom strip height | 72px |

## 5. Component Specs

### Primary CTA Button (药丸形)
```css
background: #0071e3;
color: #ffffff;
font-size: 22px;
font-weight: 500;
padding: 18px 42px;
border-radius: 980px;  /* Apple 招牌药丸 */
border: none;
```

### Secondary CTA Button (描边药丸)
```css
background: transparent;
color: #2997ff;
font-size: 22px;
font-weight: 400;
padding: 18px 42px;
border-radius: 980px;
border: 1.5px solid rgba(41, 151, 255, 0.5);
```

### Series Tag (系列标签)
```css
font-size: 30px;
font-weight: 600;
color: #2997ff;
padding: 14px 36px;
border: 2px solid rgba(41, 151, 255, 0.35);
border-radius: 980px;
```

### Feature Card (特征卡片)
```css
background: #1d1d1f;
border-radius: 24px;
padding: 48px 36px 44px;
text-align: center;
/* NO border, NO shadow — Apple style */
```

### Bottom Tag (底部标签)
```css
font-size: 17px;
font-weight: 500;
color: rgba(255, 255, 255, 0.3);
padding: 7px 20px;
border: 1px solid rgba(255, 255, 255, 0.08);
border-radius: 980px;

/* Active state */
color: #2997ff;
border-color: rgba(41, 151, 255, 0.25);
```

### Author Avatar (头像)
```css
width: 64px;
height: 64px;
border-radius: 50%;
background: linear-gradient(135deg, #0071e3, #2997ff);
font-size: 30px;
font-weight: 700;
color: #fff;
/* 居中显示单个汉字 */
```

## 6. Do's and Don'ts

### ✅ Do
- 只用 #0071e3 蓝色作为唯一强调色
- 标题用负字距，越大越紧
- 背景只用纯色（#000 或 #f5f5f7），绝不用渐变/纹理
- 按钮用 980px radius 的药丸形
- 卡片不加边框、不加阴影
- 保持大量呼吸空间，让内容自己说话
- 标题文字用渐变（白到半透明白）增加质感

### ❌ Don't
- 不要引入第二个强调色（没有红色、绿色、橙色）
- 不要给卡片加边框或投影
- 不要用正字距（letter-spacing 始终为负或 0）
- 不要用超过 700 的字重（900 仅限主标题）
- 不要在深色背景上用渐变
- 不要让导航栏不透明
- 不要居中对齐正文段落（标题可以居中）

## 7. AI Prompt Template

直接复制以下 prompt 给 AI，替换 `{{标题}}` 和 `{{副标题}}`：

---

请生成一个 1500×2000 像素的小红书封面 HTML 页面，严格遵循以下 Apple 设计规范：

**画布：** 1500×2000px，背景 #000000，无 margin/padding

**顶部栏（48px top padding, 80px side padding）：**
- 左：系列标签「大厂设计语言 · Vol.01」，30px，#2997ff，药丸边框 rgba(41,151,255,0.35)，border-radius 980px
- 右：作者头像（64px 圆，蓝色渐变）+ 名字「元气菌.AI」28px + 描述「Learn in public 理念践行中」22px

**中间 Hero（居中，flex:1）：**
- Overline: 「DESIGN SYSTEM BREAKDOWN」24px，白色 40% 透明度，letter-spacing 2px
- 主标题: 「{{标题}}」128px，font-weight 900，line-height 1.05，letter-spacing -3px
  - 文字渐变：linear-gradient(180deg, #fff 40%, rgba(255,255,255,0.55) 100%) + background-clip text
- 副标题: 「{{副标题}}」34px，font-weight 300，白色 60% 透明度
- 两个按钮并排：
  - 主按钮：「获取模板 →」#0071e3 背景，白字，22px，padding 18px 42px，radius 980px
  - 副按钮：「了解更多」透明背景，#2997ff 描边，radius 980px

**底部特征卡片（3 列 grid，80px side padding）：**
- 卡片背景 #1d1d1f，radius 24px，padding 48px 36px
- 每张：emoji 图标 52px + 标题 28px bold + 描述 20px 白色 45%
- 卡片 1：🎨 极致黑白 / #000 与 #f5f5f7 交替的电影感节奏
- 卡片 2：✦ 唯一蓝色 / #0071e3 全站仅一个强调色
- 卡片 3：Aa SF Pro / 负字距 · 1.07 行高 · 标题紧凑如机械切割

**最底部标签栏（72px height）：**
- 药丸标签：Apple（#2997ff active）、Stripe、Linear、Vercel、Notion

**字体：** Inter + Noto Sans SC（Google Fonts）
**绝对不要：** 渐变背景、多色强调、卡片边框/阴影、正字距

---

## 8. Customization Guide

### 换标题内容
只改 `{{标题}}` 和 `{{副标题}}`，以及三张卡片的内容。设计规范完全不动。

### 换成亮色版
- 背景 #000 → #f5f5f7
- 文字 #fff → #1d1d1f
- 卡片 #1d1d1f → #ffffff
- 保持 #0071e3 蓝色不变

### 换作者信息
修改顶部栏右侧的头像文字、作者名、slogan。

### 用于其他平台
- 1:1（1800×1800）→ 适配 Instagram / 朋友圈
- 16:9（1920×1080）→ 适配公众号头图 / 视频封面
- 调整字号比例即可，布局结构不变
