.class public Lcom/android/camera/ui/focus/FocusRingView;
.super Landroid/view/View;
.source "FocusRingView.java"

# interfaces
.implements Lcom/android/camera/ui/focus/FocusRing;
.implements Lcom/android/camera/ui/motion/Invalidator;


# static fields
.field private static final FOCUS_DEBUG$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FCPM62PRJ5T26APJ1ELM78HJ1DHPMAHJCC5JJM___:Lcom/android/camera/util/flags/CameraFlag;


# instance fields
.field private final animator:Lcom/android/camera/ui/motion/DynamicAnimator;

.field private final autoFocusRing:Lcom/android/camera/ui/focus/AutoFocusRing;

.field private centerX:I

.field private centerY:I

.field private currentFocusAnimation:Lcom/android/camera/ui/focus/FocusRingRenderer;

.field private final debugPaint:Landroid/graphics/Paint;

.field private final defaultRadiusPx:F

.field flags:Lcom/android/camera/util/flags/Flags;

.field private isFirstDraw:Z

.field private lastRadiusPx:F

.field private final manualFocusRing:Lcom/android/camera/ui/focus/ManualFocusRing;

.field private final paint:Landroid/graphics/Paint;

.field private final ratioScale:Lcom/android/camera/ui/motion/LinearScale;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    const-string v0, "FocusRingView"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    new-instance v0, Lcom/android/camera/util/flags/CameraFlag;

    const-string v1, "camera.focus.debug"

    invoke-direct {v0, v1}, Lcom/android/camera/util/flags/CameraFlag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/ui/focus/FocusRingView;->FOCUS_DEBUG$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FCPM62PRJ5T26APJ1ELM78HJ1DHPMAHJCC5JJM___:Lcom/android/camera/util/flags/CameraFlag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    const/high16 v5, 0x42a00000    # 80.0f

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    invoke-virtual {p0}, Lcom/android/camera/ui/focus/FocusRingView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/app/HasCameraAppComponent;

    invoke-interface {v0}, Lcom/android/camera/app/HasCameraAppComponent;->component$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM2S3G5T1M2RB5E9GK2S3G8DNMQS3FDPIMST1R()Lcom/android/camera/one/v2/OneCameraFactoryProvider;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/camera/one/v2/OneCameraFactoryProvider;->inject(Lcom/android/camera/ui/focus/FocusRingView;)V

    .line 50
    invoke-virtual {p0}, Lcom/android/camera/ui/focus/FocusRingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 51
    const v1, 0x7f0b01d9

    invoke-static {v0, v1}, Lcom/android/camera/ui/focus/FocusRingView;->makePaint(Landroid/content/res/Resources;I)Landroid/graphics/Paint;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/focus/FocusRingView;->paint:Landroid/graphics/Paint;

    .line 52
    const v1, 0x7f0b01da

    invoke-static {v0, v1}, Lcom/android/camera/ui/focus/FocusRingView;->makePaint(Landroid/content/res/Resources;I)Landroid/graphics/Paint;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/focus/FocusRingView;->debugPaint:Landroid/graphics/Paint;

    .line 54
    const v1, 0x7f0c012f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 55
    const v2, 0x7f0c0130

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 56
    const v3, 0x7f0c0131

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->defaultRadiusPx:F

    .line 58
    new-instance v0, Lcom/android/camera/ui/motion/LinearScale;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/camera/ui/motion/LinearScale;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->ratioScale:Lcom/android/camera/ui/motion/LinearScale;

    .line 59
    new-instance v0, Lcom/android/camera/ui/motion/DynamicAnimator;

    new-instance v1, Lcom/google/android/apps/camera/util/time/AnimationClock;

    invoke-direct {v1}, Lcom/google/android/apps/camera/util/time/AnimationClock;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/motion/DynamicAnimator;-><init>(Lcom/android/camera/ui/motion/Invalidator;Lcom/google/android/apps/camera/util/time/AnimationClock;)V

    iput-object v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->animator:Lcom/android/camera/ui/motion/DynamicAnimator;

    .line 61
    new-instance v0, Lcom/android/camera/ui/focus/AutoFocusRing;

    iget-object v1, p0, Lcom/android/camera/ui/focus/FocusRingView;->animator:Lcom/android/camera/ui/motion/DynamicAnimator;

    iget-object v2, p0, Lcom/android/camera/ui/focus/FocusRingView;->paint:Landroid/graphics/Paint;

    const/high16 v3, 0x437a0000    # 250.0f

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/android/camera/ui/focus/AutoFocusRing;-><init>(Lcom/android/camera/ui/motion/Invalidator;Landroid/graphics/Paint;FF)V

    iput-object v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->autoFocusRing:Lcom/android/camera/ui/focus/AutoFocusRing;

    .line 63
    new-instance v0, Lcom/android/camera/ui/focus/ManualFocusRing;

    iget-object v1, p0, Lcom/android/camera/ui/focus/FocusRingView;->animator:Lcom/android/camera/ui/motion/DynamicAnimator;

    iget-object v2, p0, Lcom/android/camera/ui/focus/FocusRingView;->paint:Landroid/graphics/Paint;

    invoke-direct {v0, v1, v2, v5}, Lcom/android/camera/ui/focus/ManualFocusRing;-><init>(Lcom/android/camera/ui/motion/Invalidator;Landroid/graphics/Paint;F)V

    iput-object v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->manualFocusRing:Lcom/android/camera/ui/focus/ManualFocusRing;

    .line 65
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->animator:Lcom/android/camera/ui/motion/DynamicAnimator;

    iget-object v0, v0, Lcom/android/camera/ui/motion/DynamicAnimator;->animations:Ljava/util/List;

    iget-object v1, p0, Lcom/android/camera/ui/focus/FocusRingView;->autoFocusRing:Lcom/android/camera/ui/focus/AutoFocusRing;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->animator:Lcom/android/camera/ui/motion/DynamicAnimator;

    iget-object v0, v0, Lcom/android/camera/ui/motion/DynamicAnimator;->animations:Ljava/util/List;

    iget-object v1, p0, Lcom/android/camera/ui/focus/FocusRingView;->manualFocusRing:Lcom/android/camera/ui/focus/ManualFocusRing;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->isFirstDraw:Z

    .line 69
    iget v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->defaultRadiusPx:F

    iput v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->lastRadiusPx:F

    .line 70
    return-void
.end method

.method private final centerAutofocusRing()V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->autoFocusRing:Lcom/android/camera/ui/focus/AutoFocusRing;

    iget v1, p0, Lcom/android/camera/ui/focus/FocusRingView;->centerX:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/focus/AutoFocusRing;->setCenterX(I)V

    .line 227
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->autoFocusRing:Lcom/android/camera/ui/focus/AutoFocusRing;

    iget v1, p0, Lcom/android/camera/ui/focus/FocusRingView;->centerY:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/focus/AutoFocusRing;->setCenterY(I)V

    .line 228
    return-void
.end method

.method private static makePaint(Landroid/content/res/Resources;I)Landroid/graphics/Paint;
    .locals 2

    .prologue
    .line 231
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 232
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 233
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 234
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 235
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 236
    const v1, 0x7f0c012e

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 237
    return-object v0
.end method


# virtual methods
.method public final centerFocusLocation()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->autoFocusRing:Lcom/android/camera/ui/focus/AutoFocusRing;

    iget v1, p0, Lcom/android/camera/ui/focus/FocusRingView;->centerX:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/focus/AutoFocusRing;->setCenterX(I)V

    .line 167
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->autoFocusRing:Lcom/android/camera/ui/focus/AutoFocusRing;

    iget v1, p0, Lcom/android/camera/ui/focus/FocusRingView;->centerY:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/focus/AutoFocusRing;->setCenterY(I)V

    .line 168
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->manualFocusRing:Lcom/android/camera/ui/focus/ManualFocusRing;

    iget v1, p0, Lcom/android/camera/ui/focus/FocusRingView;->centerX:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/focus/ManualFocusRing;->setCenterX(I)V

    .line 169
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->manualFocusRing:Lcom/android/camera/ui/focus/ManualFocusRing;

    iget v1, p0, Lcom/android/camera/ui/focus/FocusRingView;->centerY:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/focus/ManualFocusRing;->setCenterY(I)V

    .line 170
    return-void
.end method

.method public final configurePreviewDimensions$51662RJ4E9NMIP1FCTP62S38D5HN6BQICLHN8HHR55B0____()V
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 180
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/focus/FocusRingView;->getLocationInWindow([I)V

    .line 181
    iget v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->defaultRadiusPx:F

    iput v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->lastRadiusPx:F

    .line 183
    iget-boolean v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->isFirstDraw:Z

    if-nez v0, :cond_0

    .line 184
    invoke-direct {p0}, Lcom/android/camera/ui/focus/FocusRingView;->centerAutofocusRing()V

    .line 186
    :cond_0
    return-void
.end method

.method public final isActiveFocusRunning()Z
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->manualFocusRing:Lcom/android/camera/ui/focus/ManualFocusRing;

    invoke-virtual {v0}, Lcom/android/camera/ui/focus/ManualFocusRing;->isActive()Z

    move-result v0

    return v0
.end method

.method public final isPassiveFocusRunning()Z
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->autoFocusRing:Lcom/android/camera/ui/focus/AutoFocusRing;

    invoke-virtual {v0}, Lcom/android/camera/ui/focus/AutoFocusRing;->isActive()Z

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->isFirstDraw:Z

    if-eqz v0, :cond_0

    .line 191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->isFirstDraw:Z

    .line 192
    invoke-direct {p0}, Lcom/android/camera/ui/focus/FocusRingView;->centerAutofocusRing()V

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->animator:Lcom/android/camera/ui/motion/DynamicAnimator;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/motion/DynamicAnimator;->draw(Landroid/graphics/Canvas;)V

    .line 214
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .prologue
    .line 74
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 75
    sub-int v0, p4, p2

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->centerX:I

    .line 76
    sub-int v0, p5, p3

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->centerY:I

    .line 77
    return-void
.end method

.method public final setFocusLocation(FF)V
    .locals 4

    .prologue
    .line 154
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 155
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/focus/FocusRingView;->getLocationInWindow([I)V

    .line 156
    const/4 v1, 0x1

    aget v1, v0, v1

    int-to-float v1, v1

    sub-float v1, p2, v1

    .line 157
    const/4 v2, 0x0

    aget v0, v0, v2

    int-to-float v0, v0

    sub-float v0, p1, v0

    .line 158
    iget-object v2, p0, Lcom/android/camera/ui/focus/FocusRingView;->autoFocusRing:Lcom/android/camera/ui/focus/AutoFocusRing;

    float-to-int v3, v0

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/focus/AutoFocusRing;->setCenterX(I)V

    .line 159
    iget-object v2, p0, Lcom/android/camera/ui/focus/FocusRingView;->autoFocusRing:Lcom/android/camera/ui/focus/AutoFocusRing;

    float-to-int v3, v1

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/focus/AutoFocusRing;->setCenterY(I)V

    .line 160
    iget-object v2, p0, Lcom/android/camera/ui/focus/FocusRingView;->manualFocusRing:Lcom/android/camera/ui/focus/ManualFocusRing;

    float-to-int v0, v0

    invoke-virtual {v2, v0}, Lcom/android/camera/ui/focus/ManualFocusRing;->setCenterX(I)V

    .line 161
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->manualFocusRing:Lcom/android/camera/ui/focus/ManualFocusRing;

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/focus/ManualFocusRing;->setCenterY(I)V

    .line 162
    return-void
.end method

.method public final setRadiusRatio(F)V
    .locals 4

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->ratioScale:Lcom/android/camera/ui/motion/LinearScale;

    iget-object v1, p0, Lcom/android/camera/ui/focus/FocusRingView;->ratioScale:Lcom/android/camera/ui/motion/LinearScale;

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/motion/LinearScale;->clamp(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/motion/LinearScale;->scale(F)F

    move-result v0

    .line 1217
    iget-object v1, p0, Lcom/android/camera/ui/focus/FocusRingView;->animator:Lcom/android/camera/ui/motion/DynamicAnimator;

    invoke-virtual {v1}, Lcom/android/camera/ui/motion/DynamicAnimator;->getTimeMillis()J

    move-result-wide v2

    .line 1219
    iget-object v1, p0, Lcom/android/camera/ui/focus/FocusRingView;->currentFocusAnimation:Lcom/android/camera/ui/focus/FocusRingRenderer;

    if-eqz v1, :cond_0

    const v1, 0x3dcccccd    # 0.1f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 1220
    iget-object v1, p0, Lcom/android/camera/ui/focus/FocusRingView;->currentFocusAnimation:Lcom/android/camera/ui/focus/FocusRingRenderer;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/camera/ui/focus/FocusRingRenderer;->setRadius(JF)V

    .line 1221
    iput v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->lastRadiusPx:F

    .line 175
    :cond_0
    return-void
.end method

.method public final startActiveFocus()V
    .locals 5

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->animator:Lcom/android/camera/ui/motion/DynamicAnimator;

    invoke-virtual {v0}, Lcom/android/camera/ui/motion/DynamicAnimator;->invalidate()V

    .line 105
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->animator:Lcom/android/camera/ui/motion/DynamicAnimator;

    invoke-virtual {v0}, Lcom/android/camera/ui/motion/DynamicAnimator;->getTimeMillis()J

    move-result-wide v0

    .line 107
    iget-object v2, p0, Lcom/android/camera/ui/focus/FocusRingView;->autoFocusRing:Lcom/android/camera/ui/focus/AutoFocusRing;

    invoke-virtual {v2}, Lcom/android/camera/ui/focus/AutoFocusRing;->isActive()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/ui/focus/FocusRingView;->autoFocusRing:Lcom/android/camera/ui/focus/AutoFocusRing;

    invoke-virtual {v2}, Lcom/android/camera/ui/focus/AutoFocusRing;->isExiting()Z

    move-result v2

    if-nez v2, :cond_0

    .line 108
    iget-object v2, p0, Lcom/android/camera/ui/focus/FocusRingView;->autoFocusRing:Lcom/android/camera/ui/focus/AutoFocusRing;

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/ui/focus/AutoFocusRing;->stop(J)V

    .line 111
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/focus/FocusRingView;->manualFocusRing:Lcom/android/camera/ui/focus/ManualFocusRing;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/camera/ui/focus/FocusRingView;->lastRadiusPx:F

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/camera/ui/focus/ManualFocusRing;->start(JFF)V

    .line 112
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->manualFocusRing:Lcom/android/camera/ui/focus/ManualFocusRing;

    iput-object v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->currentFocusAnimation:Lcom/android/camera/ui/focus/FocusRingRenderer;

    .line 113
    return-void
.end method

.method public final startPassiveFocus()V
    .locals 5

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->animator:Lcom/android/camera/ui/motion/DynamicAnimator;

    invoke-virtual {v0}, Lcom/android/camera/ui/motion/DynamicAnimator;->invalidate()V

    .line 92
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->animator:Lcom/android/camera/ui/motion/DynamicAnimator;

    invoke-virtual {v0}, Lcom/android/camera/ui/motion/DynamicAnimator;->getTimeMillis()J

    move-result-wide v0

    .line 94
    iget-object v2, p0, Lcom/android/camera/ui/focus/FocusRingView;->manualFocusRing:Lcom/android/camera/ui/focus/ManualFocusRing;

    invoke-virtual {v2}, Lcom/android/camera/ui/focus/ManualFocusRing;->isActive()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/ui/focus/FocusRingView;->manualFocusRing:Lcom/android/camera/ui/focus/ManualFocusRing;

    invoke-virtual {v2}, Lcom/android/camera/ui/focus/ManualFocusRing;->isExiting()Z

    move-result v2

    if-nez v2, :cond_0

    .line 95
    iget-object v2, p0, Lcom/android/camera/ui/focus/FocusRingView;->manualFocusRing:Lcom/android/camera/ui/focus/ManualFocusRing;

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/ui/focus/ManualFocusRing;->stop(J)V

    .line 98
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/focus/FocusRingView;->autoFocusRing:Lcom/android/camera/ui/focus/AutoFocusRing;

    iget v3, p0, Lcom/android/camera/ui/focus/FocusRingView;->lastRadiusPx:F

    iget v4, p0, Lcom/android/camera/ui/focus/FocusRingView;->lastRadiusPx:F

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/camera/ui/focus/AutoFocusRing;->start(JFF)V

    .line 99
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->autoFocusRing:Lcom/android/camera/ui/focus/AutoFocusRing;

    iput-object v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->currentFocusAnimation:Lcom/android/camera/ui/focus/FocusRingRenderer;

    .line 100
    return-void
.end method

.method public final stopFocusAnimations()V
    .locals 4

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->animator:Lcom/android/camera/ui/motion/DynamicAnimator;

    invoke-virtual {v0}, Lcom/android/camera/ui/motion/DynamicAnimator;->getTimeMillis()J

    move-result-wide v2

    .line 118
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->manualFocusRing:Lcom/android/camera/ui/focus/ManualFocusRing;

    invoke-virtual {v0}, Lcom/android/camera/ui/focus/ManualFocusRing;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->manualFocusRing:Lcom/android/camera/ui/focus/ManualFocusRing;

    .line 119
    invoke-virtual {v0}, Lcom/android/camera/ui/focus/ManualFocusRing;->isExiting()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->manualFocusRing:Lcom/android/camera/ui/focus/ManualFocusRing;

    .line 1136
    iget v0, v0, Lcom/android/camera/ui/focus/FocusRingRenderer;->focusState$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUPJFCDQN6BQ6DTHNASQID5N6EKJ5DPI6ASJ5E8I4CRR3ELPL6T31EHIJM___:I

    sget v1, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_ENTER$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUPJFCDQN6BQ6DTHNASQID5N6EKJ5DPI6ASJ5E8I4CRR3ELPL6T31EHIJM___:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    .line 120
    :goto_0
    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->manualFocusRing:Lcom/android/camera/ui/focus/ManualFocusRing;

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/ui/focus/ManualFocusRing;->exit(J)V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->autoFocusRing:Lcom/android/camera/ui/focus/AutoFocusRing;

    invoke-virtual {v0}, Lcom/android/camera/ui/focus/AutoFocusRing;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->autoFocusRing:Lcom/android/camera/ui/focus/AutoFocusRing;

    invoke-virtual {v0}, Lcom/android/camera/ui/focus/AutoFocusRing;->isExiting()Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->autoFocusRing:Lcom/android/camera/ui/focus/AutoFocusRing;

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/ui/focus/AutoFocusRing;->exit(J)V

    .line 127
    :cond_1
    return-void

    .line 1136
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final stopFocusAnimationsFast()V
    .locals 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingView;->animator:Lcom/android/camera/ui/motion/DynamicAnimator;

    invoke-virtual {v0}, Lcom/android/camera/ui/motion/DynamicAnimator;->getTimeMillis()J

    move-result-wide v0

    .line 139
    iget-object v2, p0, Lcom/android/camera/ui/focus/FocusRingView;->manualFocusRing:Lcom/android/camera/ui/focus/ManualFocusRing;

    invoke-virtual {v2}, Lcom/android/camera/ui/focus/ManualFocusRing;->isActive()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/ui/focus/FocusRingView;->manualFocusRing:Lcom/android/camera/ui/focus/ManualFocusRing;

    invoke-virtual {v2}, Lcom/android/camera/ui/focus/ManualFocusRing;->isExiting()Z

    move-result v2

    if-nez v2, :cond_0

    .line 140
    iget-object v2, p0, Lcom/android/camera/ui/focus/FocusRingView;->manualFocusRing:Lcom/android/camera/ui/focus/ManualFocusRing;

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/ui/focus/ManualFocusRing;->stop(J)V

    .line 142
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/focus/FocusRingView;->autoFocusRing:Lcom/android/camera/ui/focus/AutoFocusRing;

    invoke-virtual {v2}, Lcom/android/camera/ui/focus/AutoFocusRing;->isActive()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/ui/focus/FocusRingView;->autoFocusRing:Lcom/android/camera/ui/focus/AutoFocusRing;

    invoke-virtual {v2}, Lcom/android/camera/ui/focus/AutoFocusRing;->isExiting()Z

    move-result v2

    if-nez v2, :cond_1

    .line 143
    iget-object v2, p0, Lcom/android/camera/ui/focus/FocusRingView;->autoFocusRing:Lcom/android/camera/ui/focus/AutoFocusRing;

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/ui/focus/AutoFocusRing;->stop(J)V

    .line 145
    :cond_1
    return-void
.end method
