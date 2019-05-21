.class public final Lcom/google/android/apps/lightcycle/panorama/MovingSpeedCalibrator;
.super Ljava/lang/Object;
.source "MovingSpeedCalibrator.java"


# instance fields
.field private exposure:D

.field private rateLimit:Z

.field private velocitySquared:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/MovingSpeedCalibrator;->velocitySquared:F

    .line 19
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/google/android/apps/lightcycle/panorama/MovingSpeedCalibrator;->exposure:D

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/MovingSpeedCalibrator;->rateLimit:Z

    return-void
.end method

.method private final update()V
    .locals 6

    .prologue
    .line 63
    const v0, 0x3e23d70b    # 0.16000001f

    .line 67
    iget-wide v2, p0, Lcom/google/android/apps/lightcycle/panorama/MovingSpeedCalibrator;->exposure:D

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_0

    .line 68
    iget-wide v2, p0, Lcom/google/android/apps/lightcycle/panorama/MovingSpeedCalibrator;->exposure:D

    const-wide v4, 0x3f9999999999999aL    # 0.025

    cmpl-double v1, v2, v4

    if-lez v1, :cond_1

    .line 69
    const v0, 0x3b23d70b    # 0.0025000002f

    .line 74
    :cond_0
    :goto_0
    iget v1, p0, Lcom/google/android/apps/lightcycle/panorama/MovingSpeedCalibrator;->velocitySquared:F

    cmpl-float v0, v1, v0

    if-lez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycle;->setSensorMovementTooFast(Z)V

    .line 75
    return-void

    .line 70
    :cond_1
    iget-wide v2, p0, Lcom/google/android/apps/lightcycle/panorama/MovingSpeedCalibrator;->exposure:D

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    .line 71
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/MovingSpeedCalibrator;->rateLimit:Z

    if-eqz v0, :cond_2

    const v0, 0x3c23d70b    # 0.010000001f

    goto :goto_0

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 74
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final onExposureUpdate(D)V
    .locals 1

    .prologue
    .line 39
    iput-wide p1, p0, Lcom/google/android/apps/lightcycle/panorama/MovingSpeedCalibrator;->exposure:D

    .line 40
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/panorama/MovingSpeedCalibrator;->update()V

    .line 41
    return-void
.end method

.method public final onSensorVelocityUpdate(F)V
    .locals 0

    .prologue
    .line 29
    iput p1, p0, Lcom/google/android/apps/lightcycle/panorama/MovingSpeedCalibrator;->velocitySquared:F

    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/panorama/MovingSpeedCalibrator;->update()V

    .line 31
    return-void
.end method

.method public final reset()V
    .locals 2

    .prologue
    .line 47
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/google/android/apps/lightcycle/panorama/MovingSpeedCalibrator;->exposure:D

    .line 48
    return-void
.end method

.method public final setRateLimit(Z)V
    .locals 0

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/google/android/apps/lightcycle/panorama/MovingSpeedCalibrator;->rateLimit:Z

    .line 56
    return-void
.end method
