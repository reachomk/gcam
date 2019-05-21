.class final Lcom/android/camera/ui/focus/AutoFocusRing;
.super Lcom/android/camera/ui/focus/FocusRingRenderer;
.source "AutoFocusRing.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "AutoFocusRing"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/ui/motion/Invalidator;Landroid/graphics/Paint;FF)V
    .locals 2

    .prologue
    .line 30
    const/high16 v0, 0x437a0000    # 250.0f

    const/high16 v1, 0x42a00000    # 80.0f

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/camera/ui/focus/FocusRingRenderer;-><init>(Lcom/android/camera/ui/motion/Invalidator;Landroid/graphics/Paint;FF)V

    .line 31
    return-void
.end method


# virtual methods
.method public final draw(JJLandroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/high16 v6, 0x42800000    # 64.0f

    const/high16 v5, 0x437f0000    # 255.0f

    const/4 v4, 0x0

    .line 35
    iget-object v0, p0, Lcom/android/camera/ui/focus/AutoFocusRing;->ringRadius:Lcom/android/camera/ui/motion/DampedSpring;

    long-to-float v1, p3

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/motion/DampedSpring;->update(F)F

    move-result v1

    .line 1063
    iget v0, p0, Lcom/android/camera/ui/focus/AutoFocusRing;->focusState$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUPJFCDQN6BQ6DTHNASQID5N6EKJ5DPI6ASJ5E8I4CRR3ELPL6T31EHIJM___:I

    sget v2, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_INACTIVE$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUPJFCDQN6BQ6DTHNASQID5N6EKJ5DPI6ASJ5E8I4CRR3ELPL6T31EHIJM___:I

    if-eq v0, v2, :cond_3

    .line 1067
    iget v0, p0, Lcom/android/camera/ui/focus/AutoFocusRing;->focusState$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUPJFCDQN6BQ6DTHNASQID5N6EKJ5DPI6ASJ5E8I4CRR3ELPL6T31EHIJM___:I

    sget v2, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_ENTER$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUPJFCDQN6BQ6DTHNASQID5N6EKJ5DPI6ASJ5E8I4CRR3ELPL6T31EHIJM___:I

    if-ne v0, v2, :cond_0

    long-to-float v0, p1

    iget-wide v2, p0, Lcom/android/camera/ui/focus/AutoFocusRing;->enterStartMillis:J

    long-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/focus/AutoFocusRing;->enterDurationMillis:F

    add-float/2addr v2, v3

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    .line 1068
    sget v0, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_ACTIVE$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUPJFCDQN6BQ6DTHNASQID5N6EKJ5DPI6ASJ5E8I4CRR3ELPL6T31EHIJM___:I

    iput v0, p0, Lcom/android/camera/ui/focus/AutoFocusRing;->focusState$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUPJFCDQN6BQ6DTHNASQID5N6EKJ5DPI6ASJ5E8I4CRR3ELPL6T31EHIJM___:I

    .line 1071
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/focus/AutoFocusRing;->focusState$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUPJFCDQN6BQ6DTHNASQID5N6EKJ5DPI6ASJ5E8I4CRR3ELPL6T31EHIJM___:I

    sget v2, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_ACTIVE$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUPJFCDQN6BQ6DTHNASQID5N6EKJ5DPI6ASJ5E8I4CRR3ELPL6T31EHIJM___:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/focus/AutoFocusRing;->ringRadius:Lcom/android/camera/ui/motion/DampedSpring;

    invoke-virtual {v0}, Lcom/android/camera/ui/motion/DampedSpring;->isActive()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/ui/focus/AutoFocusRing;->exitRequested:Z

    if-eqz v0, :cond_1

    .line 1072
    sget v0, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_FADE_OUT$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUPJFCDQN6BQ6DTHNASQID5N6EKJ5DPI6ASJ5E8I4CRR3ELPL6T31EHIJM___:I

    iput v0, p0, Lcom/android/camera/ui/focus/AutoFocusRing;->focusState$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUPJFCDQN6BQ6DTHNASQID5N6EKJ5DPI6ASJ5E8I4CRR3ELPL6T31EHIJM___:I

    .line 1073
    iput-wide p1, p0, Lcom/android/camera/ui/focus/AutoFocusRing;->exitStartMillis:J

    .line 1076
    :cond_1
    iget v0, p0, Lcom/android/camera/ui/focus/AutoFocusRing;->focusState$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUPJFCDQN6BQ6DTHNASQID5N6EKJ5DPI6ASJ5E8I4CRR3ELPL6T31EHIJM___:I

    sget v2, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_FADE_OUT$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUPJFCDQN6BQ6DTHNASQID5N6EKJ5DPI6ASJ5E8I4CRR3ELPL6T31EHIJM___:I

    if-ne v0, v2, :cond_2

    long-to-float v0, p1

    iget-wide v2, p0, Lcom/android/camera/ui/focus/AutoFocusRing;->exitStartMillis:J

    long-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/focus/AutoFocusRing;->exitDurationMillis:F

    add-float/2addr v2, v3

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    .line 1077
    sget v0, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_INACTIVE$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUPJFCDQN6BQ6DTHNASQID5N6EKJ5DPI6ASJ5E8I4CRR3ELPL6T31EHIJM___:I

    iput v0, p0, Lcom/android/camera/ui/focus/AutoFocusRing;->focusState$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUPJFCDQN6BQ6DTHNASQID5N6EKJ5DPI6ASJ5E8I4CRR3ELPL6T31EHIJM___:I

    .line 1080
    :cond_2
    iget v0, p0, Lcom/android/camera/ui/focus/AutoFocusRing;->focusState$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUPJFCDQN6BQ6DTHNASQID5N6EKJ5DPI6ASJ5E8I4CRR3ELPL6T31EHIJM___:I

    sget v2, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_HARD_STOP$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUPJFCDQN6BQ6DTHNASQID5N6EKJ5DPI6ASJ5E8I4CRR3ELPL6T31EHIJM___:I

    if-ne v0, v2, :cond_3

    long-to-float v0, p1

    iget-wide v2, p0, Lcom/android/camera/ui/focus/AutoFocusRing;->hardExitStartMillis:J

    long-to-float v2, v2

    add-float/2addr v2, v6

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    .line 1082
    sget v0, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_INACTIVE$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUPJFCDQN6BQ6DTHNASQID5N6EKJ5DPI6ASJ5E8I4CRR3ELPL6T31EHIJM___:I

    iput v0, p0, Lcom/android/camera/ui/focus/AutoFocusRing;->focusState$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUPJFCDQN6BQ6DTHNASQID5N6EKJ5DPI6ASJ5E8I4CRR3ELPL6T31EHIJM___:I

    .line 38
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/ui/focus/AutoFocusRing;->isActive()Z

    move-result v0

    if-nez v0, :cond_4

    .line 60
    :goto_0
    return-void

    .line 42
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ui/focus/AutoFocusRing;->invalidator:Lcom/android/camera/ui/motion/Invalidator;

    invoke-interface {v0}, Lcom/android/camera/ui/motion/Invalidator;->invalidate()V

    .line 43
    const/16 v0, 0xff

    .line 45
    iget v2, p0, Lcom/android/camera/ui/focus/AutoFocusRing;->focusState$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUPJFCDQN6BQ6DTHNASQID5N6EKJ5DPI6ASJ5E8I4CRR3ELPL6T31EHIJM___:I

    sget v3, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_ENTER$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUPJFCDQN6BQ6DTHNASQID5N6EKJ5DPI6ASJ5E8I4CRR3ELPL6T31EHIJM___:I

    if-ne v2, v3, :cond_6

    .line 46
    iget-wide v2, p0, Lcom/android/camera/ui/focus/AutoFocusRing;->enterStartMillis:J

    iget v0, p0, Lcom/android/camera/ui/focus/AutoFocusRing;->enterDurationMillis:F

    invoke-static {p1, p2, v2, v3, v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->unitRatio(JJF)F

    move-result v0

    .line 47
    iget-object v2, p0, Lcom/android/camera/ui/focus/AutoFocusRing;->enterOpacityCurve:Lcom/android/camera/ui/motion/UnitCurve;

    invoke-virtual {v2, v0}, Lcom/android/camera/ui/motion/UnitCurve;->valueAt(F)F

    move-result v0

    invoke-static {v4, v5, v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->lerp(FFF)F

    move-result v0

    float-to-int v0, v0

    .line 58
    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/android/camera/ui/focus/AutoFocusRing;->ringPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 59
    invoke-virtual {p0}, Lcom/android/camera/ui/focus/AutoFocusRing;->getCenterX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/camera/ui/focus/AutoFocusRing;->getCenterY()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/ui/focus/AutoFocusRing;->ringPaint:Landroid/graphics/Paint;

    invoke-virtual {p5, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 48
    :cond_6
    iget v2, p0, Lcom/android/camera/ui/focus/AutoFocusRing;->focusState$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUPJFCDQN6BQ6DTHNASQID5N6EKJ5DPI6ASJ5E8I4CRR3ELPL6T31EHIJM___:I

    sget v3, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_FADE_OUT$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUPJFCDQN6BQ6DTHNASQID5N6EKJ5DPI6ASJ5E8I4CRR3ELPL6T31EHIJM___:I

    if-ne v2, v3, :cond_7

    .line 49
    iget-wide v2, p0, Lcom/android/camera/ui/focus/AutoFocusRing;->exitStartMillis:J

    iget v0, p0, Lcom/android/camera/ui/focus/AutoFocusRing;->exitDurationMillis:F

    invoke-static {p1, p2, v2, v3, v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->unitRatio(JJF)F

    move-result v0

    .line 50
    iget-object v2, p0, Lcom/android/camera/ui/focus/AutoFocusRing;->exitOpacityCurve:Lcom/android/camera/ui/motion/UnitCurve;

    invoke-virtual {v2, v0}, Lcom/android/camera/ui/motion/UnitCurve;->valueAt(F)F

    move-result v0

    invoke-static {v5, v4, v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->lerp(FFF)F

    move-result v0

    float-to-int v0, v0

    .line 51
    goto :goto_1

    :cond_7
    iget v2, p0, Lcom/android/camera/ui/focus/AutoFocusRing;->focusState$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUPJFCDQN6BQ6DTHNASQID5N6EKJ5DPI6ASJ5E8I4CRR3ELPL6T31EHIJM___:I

    sget v3, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_HARD_STOP$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUPJFCDQN6BQ6DTHNASQID5N6EKJ5DPI6ASJ5E8I4CRR3ELPL6T31EHIJM___:I

    if-ne v2, v3, :cond_8

    .line 52
    iget-wide v2, p0, Lcom/android/camera/ui/focus/AutoFocusRing;->hardExitStartMillis:J

    invoke-static {p1, p2, v2, v3, v6}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->unitRatio(JJF)F

    move-result v0

    .line 53
    iget-object v2, p0, Lcom/android/camera/ui/focus/AutoFocusRing;->exitOpacityCurve:Lcom/android/camera/ui/motion/UnitCurve;

    invoke-virtual {v2, v0}, Lcom/android/camera/ui/motion/UnitCurve;->valueAt(F)F

    move-result v0

    invoke-static {v5, v4, v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->lerp(FFF)F

    move-result v0

    float-to-int v0, v0

    .line 54
    goto :goto_1

    :cond_8
    iget v2, p0, Lcom/android/camera/ui/focus/AutoFocusRing;->focusState$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUPJFCDQN6BQ6DTHNASQID5N6EKJ5DPI6ASJ5E8I4CRR3ELPL6T31EHIJM___:I

    sget v3, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_INACTIVE$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUPJFCDQN6BQ6DTHNASQID5N6EKJ5DPI6ASJ5E8I4CRR3ELPL6T31EHIJM___:I

    if-ne v2, v3, :cond_5

    .line 55
    const/4 v0, 0x0

    goto :goto_1
.end method
