.class public final Lcom/android/camera/debug/ClockSpeedViewRenderer;
.super Ljava/lang/Object;
.source "ClockSpeedViewRenderer.java"


# instance fields
.field private arcBounds:Landroid/graphics/RectF;

.field private cpuData:Lcom/android/camera/debug/SystemHealth$CpuData;

.field private final invalidateParentViewRunnable:Ljava/lang/Runnable;

.field private final parentView:Landroid/view/View;

.field private final progressBasePaint:Landroid/graphics/Paint;

.field private final progressPaint:Landroid/graphics/Paint;

.field private final progressRadius:I

.field private speedAngleDegrees:I

.field private final textPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/camera/debug/ClockSpeedViewRenderer;->arcBounds:Landroid/graphics/RectF;

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/debug/ClockSpeedViewRenderer;->speedAngleDegrees:I

    .line 26
    new-instance v0, Lcom/android/camera/debug/ClockSpeedViewRenderer$1;

    invoke-direct {v0, p0}, Lcom/android/camera/debug/ClockSpeedViewRenderer$1;-><init>(Lcom/android/camera/debug/ClockSpeedViewRenderer;)V

    iput-object v0, p0, Lcom/android/camera/debug/ClockSpeedViewRenderer;->invalidateParentViewRunnable:Ljava/lang/Runnable;

    .line 35
    iput-object p2, p0, Lcom/android/camera/debug/ClockSpeedViewRenderer;->parentView:Landroid/view/View;

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0117

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/debug/ClockSpeedViewRenderer;->progressRadius:I

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0118

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 39
    const v1, 0x3e4ccccd    # 0.2f

    invoke-static {v0, v1}, Lcom/android/camera/debug/ClockSpeedViewRenderer;->createProgressPaint(IF)Landroid/graphics/Paint;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/debug/ClockSpeedViewRenderer;->progressBasePaint:Landroid/graphics/Paint;

    .line 40
    invoke-static {v0, v2}, Lcom/android/camera/debug/ClockSpeedViewRenderer;->createProgressPaint(IF)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/debug/ClockSpeedViewRenderer;->progressPaint:Landroid/graphics/Paint;

    .line 1094
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/android/camera/debug/ClockSpeedViewRenderer;->createPaint(I)Landroid/graphics/Paint;

    move-result-object v0

    .line 1095
    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1096
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1097
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 41
    iput-object v0, p0, Lcom/android/camera/debug/ClockSpeedViewRenderer;->textPaint:Landroid/graphics/Paint;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/debug/ClockSpeedViewRenderer;)Landroid/view/View;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/camera/debug/ClockSpeedViewRenderer;->parentView:Landroid/view/View;

    return-object v0
.end method

.method private static createPaint(I)Landroid/graphics/Paint;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 105
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 106
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 107
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    const/high16 v1, 0x41200000    # 10.0f

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 109
    return-object v0
.end method

.method private static createProgressPaint(IF)Landroid/graphics/Paint;
    .locals 2

    .prologue
    const/16 v1, 0xff

    .line 84
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/debug/ClockSpeedViewRenderer;->createPaint(I)Landroid/graphics/Paint;

    move-result-object v0

    .line 85
    int-to-float v1, p0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 86
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 87
    return-object v0
.end method


# virtual methods
.method public final getSizePixels()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/android/camera/debug/ClockSpeedViewRenderer;->progressRadius:I

    shl-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final onDraw(Landroid/graphics/Canvas;II)V
    .locals 6

    .prologue
    .line 60
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/camera/debug/ClockSpeedViewRenderer;->progressRadius:I

    sub-int v1, p2, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/debug/ClockSpeedViewRenderer;->progressRadius:I

    sub-int v2, p3, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/debug/ClockSpeedViewRenderer;->progressRadius:I

    add-int/2addr v3, p2

    int-to-float v3, v3

    iget v4, p0, Lcom/android/camera/debug/ClockSpeedViewRenderer;->progressRadius:I

    add-int/2addr v4, p3

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/camera/debug/ClockSpeedViewRenderer;->arcBounds:Landroid/graphics/RectF;

    .line 68
    int-to-float v0, p2

    int-to-float v1, p3

    iget v2, p0, Lcom/android/camera/debug/ClockSpeedViewRenderer;->progressRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/debug/ClockSpeedViewRenderer;->progressBasePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 69
    iget-object v1, p0, Lcom/android/camera/debug/ClockSpeedViewRenderer;->arcBounds:Landroid/graphics/RectF;

    const/high16 v2, -0x3d4c0000    # -90.0f

    iget v0, p0, Lcom/android/camera/debug/ClockSpeedViewRenderer;->speedAngleDegrees:I

    int-to-float v3, v0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/camera/debug/ClockSpeedViewRenderer;->progressPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 70
    iget-object v0, p0, Lcom/android/camera/debug/ClockSpeedViewRenderer;->cpuData:Lcom/android/camera/debug/SystemHealth$CpuData;

    iget v0, v0, Lcom/android/camera/debug/SystemHealth$CpuData;->currentFrequency:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    int-to-float v1, p2

    int-to-float v2, p3

    iget-object v3, p0, Lcom/android/camera/debug/ClockSpeedViewRenderer;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 71
    return-void
.end method

.method public final setClockSpeed(Lcom/android/camera/debug/SystemHealth$CpuData;)V
    .locals 3

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/camera/debug/ClockSpeedViewRenderer;->cpuData:Lcom/android/camera/debug/SystemHealth$CpuData;

    .line 50
    const/high16 v0, 0x43b40000    # 360.0f

    iget v1, p1, Lcom/android/camera/debug/SystemHealth$CpuData;->maxFrequency:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p1, Lcom/android/camera/debug/SystemHealth$CpuData;->currentFrequency:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/debug/ClockSpeedViewRenderer;->speedAngleDegrees:I

    .line 52
    const/16 v0, 0x168

    iget v1, p0, Lcom/android/camera/debug/ClockSpeedViewRenderer;->speedAngleDegrees:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/debug/ClockSpeedViewRenderer;->speedAngleDegrees:I

    .line 53
    iget-object v0, p0, Lcom/android/camera/debug/ClockSpeedViewRenderer;->parentView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/debug/ClockSpeedViewRenderer;->invalidateParentViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 54
    return-void
.end method
