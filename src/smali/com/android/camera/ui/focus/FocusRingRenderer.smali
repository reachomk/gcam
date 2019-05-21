.class abstract Lcom/android/camera/ui/focus/FocusRingRenderer;
.super Ljava/lang/Object;
.source "FocusRingRenderer.java"

# interfaces
.implements Lcom/android/camera/ui/motion/DynamicAnimation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private centerX:I

.field private centerY:I

.field protected final enterDurationMillis:F

.field protected final enterOpacityCurve:Lcom/android/camera/ui/motion/UnitCurve;

.field protected enterStartMillis:J

.field protected final exitDurationMillis:F

.field protected final exitOpacityCurve:Lcom/android/camera/ui/motion/UnitCurve;

.field protected exitRequested:Z

.field protected exitStartMillis:J

.field protected focusState$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUPJFCDQN6BQ6DTHNASQID5N6EKJ5DPI6ASJ5E8I4CRR3ELPL6T31EHIJM___:I

.field protected hardExitStartMillis:J

.field protected final invalidator:Lcom/android/camera/ui/motion/Invalidator;

.field protected final ringPaint:Landroid/graphics/Paint;

.field protected final ringRadius:Lcom/android/camera/ui/motion/DampedSpring;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "FocusRingRenderer"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/focus/FocusRingRenderer;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/camera/ui/motion/Invalidator;Landroid/graphics/Paint;FF)V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-wide v0, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->enterStartMillis:J

    .line 43
    iput-wide v0, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->exitStartMillis:J

    .line 44
    iput-wide v0, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->hardExitStartMillis:J

    .line 47
    sget v0, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_INACTIVE$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUPJFCDQN6BQ6DTHNASQID5N6EKJ5DPI6ASJ5E8I4CRR3ELPL6T31EHIJM___:I

    iput v0, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->focusState$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUPJFCDQN6BQ6DTHNASQID5N6EKJ5DPI6ASJ5E8I4CRR3ELPL6T31EHIJM___:I

    .line 64
    iput-object p1, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->invalidator:Lcom/android/camera/ui/motion/Invalidator;

    .line 65
    iput-object p2, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->ringPaint:Landroid/graphics/Paint;

    .line 66
    iput p3, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->enterDurationMillis:F

    .line 67
    iput p4, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->exitDurationMillis:F

    .line 69
    sget-object v0, Lcom/android/camera/ui/motion/UnitCurves;->FAST_OUT_SLOW_IN:Lcom/android/camera/ui/motion/UnitCurve;

    iput-object v0, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->enterOpacityCurve:Lcom/android/camera/ui/motion/UnitCurve;

    .line 70
    sget-object v0, Lcom/android/camera/ui/motion/UnitCurves;->FAST_OUT_LINEAR_IN:Lcom/android/camera/ui/motion/UnitCurve;

    iput-object v0, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->exitOpacityCurve:Lcom/android/camera/ui/motion/UnitCurve;

    .line 73
    new-instance v0, Lcom/android/camera/ui/motion/DampedSpring;

    invoke-direct {v0}, Lcom/android/camera/ui/motion/DampedSpring;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->ringRadius:Lcom/android/camera/ui/motion/DampedSpring;

    .line 74
    return-void
.end method

.method private final computeExitStartTimeMs(JF)J
    .locals 3

    .prologue
    .line 193
    iget-wide v0, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->enterStartMillis:J

    long-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->enterDurationMillis:F

    add-float/2addr v0, v1

    long-to-float v1, p1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 206
    :goto_0
    return-wide p1

    .line 198
    :cond_0
    iget-wide v0, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->enterStartMillis:J

    sub-long v0, p1, v0

    long-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->enterDurationMillis:F

    div-float/2addr v0, v1

    .line 201
    iget-object v1, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->enterOpacityCurve:Lcom/android/camera/ui/motion/UnitCurve;

    iget-object v2, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->exitOpacityCurve:Lcom/android/camera/ui/motion/UnitCurve;

    .line 202
    invoke-static {v1, v2, v0}, Lcom/android/camera/ui/motion/UnitCurves;->mapEnterCurveToExitCurveAtT(Lcom/android/camera/ui/motion/UnitCurve;Lcom/android/camera/ui/motion/UnitCurve;F)F

    move-result v0

    .line 206
    mul-float/2addr v0, p3

    float-to-long v0, v0

    sub-long/2addr p1, v0

    goto :goto_0
.end method


# virtual methods
.method public final exit(J)V
    .locals 3

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->ringRadius:Lcom/android/camera/ui/motion/DampedSpring;

    invoke-virtual {v0}, Lcom/android/camera/ui/motion/DampedSpring;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->ringRadius:Lcom/android/camera/ui/motion/DampedSpring;

    invoke-virtual {v0}, Lcom/android/camera/ui/motion/DampedSpring;->stop()V

    .line 170
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->exitRequested:Z

    .line 171
    sget v0, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_FADE_OUT$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUPJFCDQN6BQ6DTHNASQID5N6EKJ5DPI6ASJ5E8I4CRR3ELPL6T31EHIJM___:I

    iput v0, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->focusState$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUPJFCDQN6BQ6DTHNASQID5N6EKJ5DPI6ASJ5E8I4CRR3ELPL6T31EHIJM___:I

    .line 172
    iget v0, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->exitDurationMillis:F

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/ui/focus/FocusRingRenderer;->computeExitStartTimeMs(JF)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->exitStartMillis:J

    .line 173
    return-void
.end method

.method protected final getCenterX()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->centerX:I

    return v0
.end method

.method protected final getCenterY()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->centerY:I

    return v0
.end method

.method public final isActive()Z
    .locals 2

    .prologue
    .line 122
    iget v0, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->focusState$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUPJFCDQN6BQ6DTHNASQID5N6EKJ5DPI6ASJ5E8I4CRR3ELPL6T31EHIJM___:I

    sget v1, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_INACTIVE$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUPJFCDQN6BQ6DTHNASQID5N6EKJ5DPI6ASJ5E8I4CRR3ELPL6T31EHIJM___:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isExiting()Z
    .locals 2

    .prologue
    .line 129
    iget v0, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->focusState$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUPJFCDQN6BQ6DTHNASQID5N6EKJ5DPI6ASJ5E8I4CRR3ELPL6T31EHIJM___:I

    sget v1, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_FADE_OUT$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUPJFCDQN6BQ6DTHNASQID5N6EKJ5DPI6ASJ5E8I4CRR3ELPL6T31EHIJM___:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->focusState$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUPJFCDQN6BQ6DTHNASQID5N6EKJ5DPI6ASJ5E8I4CRR3ELPL6T31EHIJM___:I

    sget v1, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_HARD_STOP$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUPJFCDQN6BQ6DTHNASQID5N6EKJ5DPI6ASJ5E8I4CRR3ELPL6T31EHIJM___:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setCenterX(I)V
    .locals 0

    .prologue
    .line 82
    iput p1, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->centerX:I

    .line 83
    return-void
.end method

.method public final setCenterY(I)V
    .locals 0

    .prologue
    .line 95
    iput p1, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->centerY:I

    .line 96
    return-void
.end method

.method public final setRadius(JF)V
    .locals 5

    .prologue
    .line 108
    iget v0, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->focusState$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUPJFCDQN6BQ6DTHNASQID5N6EKJ5DPI6ASJ5E8I4CRR3ELPL6T31EHIJM___:I

    sget v1, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_FADE_OUT$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUPJFCDQN6BQ6DTHNASQID5N6EKJ5DPI6ASJ5E8I4CRR3ELPL6T31EHIJM___:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->ringRadius:Lcom/android/camera/ui/motion/DampedSpring;

    invoke-virtual {v0}, Lcom/android/camera/ui/motion/DampedSpring;->getTarget()F

    move-result v0

    sub-float/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 109
    sget-object v0, Lcom/android/camera/ui/focus/FocusRingRenderer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x46

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "FOCUS STATE ENTER VIA setRadius("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    sget v0, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_ENTER$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUPJFCDQN6BQ6DTHNASQID5N6EKJ5DPI6ASJ5E8I4CRR3ELPL6T31EHIJM___:I

    iput v0, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->focusState$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUPJFCDQN6BQ6DTHNASQID5N6EKJ5DPI6ASJ5E8I4CRR3ELPL6T31EHIJM___:I

    .line 111
    iget v0, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->enterDurationMillis:F

    .line 1210
    iget-wide v2, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->exitStartMillis:J

    long-to-float v1, v2

    iget v2, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->exitDurationMillis:F

    add-float/2addr v1, v2

    long-to-float v2, p1

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    .line 111
    :goto_0
    iput-wide p1, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->enterStartMillis:J

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->ringRadius:Lcom/android/camera/ui/motion/DampedSpring;

    invoke-virtual {v0, p3}, Lcom/android/camera/ui/motion/DampedSpring;->setTarget(F)V

    .line 115
    return-void

    .line 1215
    :cond_1
    iget-wide v2, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->exitStartMillis:J

    sub-long v2, p1, v2

    long-to-float v1, v2

    iget v2, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->exitDurationMillis:F

    div-float/2addr v1, v2

    .line 1218
    iget-object v2, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->exitOpacityCurve:Lcom/android/camera/ui/motion/UnitCurve;

    iget-object v3, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->enterOpacityCurve:Lcom/android/camera/ui/motion/UnitCurve;

    .line 1219
    invoke-static {v2, v3, v1}, Lcom/android/camera/ui/motion/UnitCurves;->mapEnterCurveToExitCurveAtT(Lcom/android/camera/ui/motion/UnitCurve;Lcom/android/camera/ui/motion/UnitCurve;F)F

    move-result v1

    .line 1223
    mul-float/2addr v0, v1

    float-to-long v0, v0

    sub-long/2addr p1, v0

    goto :goto_0
.end method

.method public final start(JFF)V
    .locals 3

    .prologue
    .line 144
    iget v0, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->focusState$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUPJFCDQN6BQ6DTHNASQID5N6EKJ5DPI6ASJ5E8I4CRR3ELPL6T31EHIJM___:I

    sget v1, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_INACTIVE$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUPJFCDQN6BQ6DTHNASQID5N6EKJ5DPI6ASJ5E8I4CRR3ELPL6T31EHIJM___:I

    if-eq v0, v1, :cond_0

    .line 145
    sget-object v0, Lcom/android/camera/ui/focus/FocusRingRenderer;->TAG:Ljava/lang/String;

    const-string v1, "start() called while the ring was still focusing."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->ringRadius:Lcom/android/camera/ui/motion/DampedSpring;

    invoke-virtual {v0}, Lcom/android/camera/ui/motion/DampedSpring;->stop()V

    .line 148
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->ringRadius:Lcom/android/camera/ui/motion/DampedSpring;

    invoke-virtual {v0, p3}, Lcom/android/camera/ui/motion/DampedSpring;->setValue(F)V

    .line 149
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->ringRadius:Lcom/android/camera/ui/motion/DampedSpring;

    invoke-virtual {v0, p4}, Lcom/android/camera/ui/motion/DampedSpring;->setTarget(F)V

    .line 150
    iput-wide p1, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->enterStartMillis:J

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->exitRequested:Z

    .line 153
    sget v0, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_ENTER$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUPJFCDQN6BQ6DTHNASQID5N6EKJ5DPI6ASJ5E8I4CRR3ELPL6T31EHIJM___:I

    iput v0, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->focusState$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUPJFCDQN6BQ6DTHNASQID5N6EKJ5DPI6ASJ5E8I4CRR3ELPL6T31EHIJM___:I

    .line 154
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->invalidator:Lcom/android/camera/ui/motion/Invalidator;

    invoke-interface {v0}, Lcom/android/camera/ui/motion/Invalidator;->invalidate()V

    .line 155
    return-void
.end method

.method public final stop(J)V
    .locals 3

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->ringRadius:Lcom/android/camera/ui/motion/DampedSpring;

    invoke-virtual {v0}, Lcom/android/camera/ui/motion/DampedSpring;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->ringRadius:Lcom/android/camera/ui/motion/DampedSpring;

    invoke-virtual {v0}, Lcom/android/camera/ui/motion/DampedSpring;->stop()V

    .line 188
    :cond_0
    sget v0, Lcom/android/camera/ui/focus/FocusRingRenderer$FocusState;->STATE_HARD_STOP$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUPJFCDQN6BQ6DTHNASQID5N6EKJ5DPI6ASJ5E8I4CRR3ELPL6T31EHIJM___:I

    iput v0, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->focusState$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUPJFCDQN6BQ6DTHNASQID5N6EKJ5DPI6ASJ5E8I4CRR3ELPL6T31EHIJM___:I

    .line 189
    const/high16 v0, 0x42800000    # 64.0f

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/ui/focus/FocusRingRenderer;->computeExitStartTimeMs(JF)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/focus/FocusRingRenderer;->hardExitStartMillis:J

    .line 190
    return-void
.end method
