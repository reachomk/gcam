.class final Lcom/android/camera/one/v2/smartmetering/BrightnessMeteringMetric;
.super Ljava/lang/Object;
.source "BrightnessMeteringMetric.java"

# interfaces
.implements Lcom/android/camera/one/v2/smartmetering/MeteringMetric;


# instance fields
.field private final sensorInfoWhiteLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "BrightnessMtrMetric"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/android/camera/one/v2/smartmetering/BrightnessMeteringMetric;->sensorInfoWhiteLevel:I

    .line 33
    return-void
.end method


# virtual methods
.method public final score(Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)F
    .locals 5

    .prologue
    .line 45
    :try_start_0
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v0}, Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-float v1, v0

    .line 46
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v0}, Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v2, v0

    .line 47
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->LENS_APERTURE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v0}, Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 48
    const v3, 0x4ed693a5    # 1.80000013E9f

    iget v4, p0, Lcom/android/camera/one/v2/smartmetering/BrightnessMeteringMetric;->sensorInfoWhiteLevel:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float v4, v4

    mul-float/2addr v3, v4

    mul-float/2addr v3, v0

    mul-float/2addr v0, v3

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    .line 56
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0
.end method
