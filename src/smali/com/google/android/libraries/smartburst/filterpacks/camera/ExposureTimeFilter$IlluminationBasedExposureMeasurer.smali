.class Lcom/google/android/libraries/smartburst/filterpacks/camera/ExposureTimeFilter$IlluminationBasedExposureMeasurer;
.super Ljava/lang/Object;
.source "ExposureTimeFilter.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/google/android/libraries/smartburst/filterpacks/camera/ExposureTimeFilter$ExposureMeasurer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/filterpacks/camera/ExposureTimeFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IlluminationBasedExposureMeasurer"
.end annotation


# static fields
.field private static final TYPICAL_APERTURE:F = 2.4f

.field private static final TYPICAL_ILC:F = 250.0f

.field private static final TYPICAL_ISO:F = 800.0f


# instance fields
.field private final mLight:Landroid/hardware/Sensor;

.field private volatile mLightLx:F

.field private final mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/camera/ExposureTimeFilter$IlluminationBasedExposureMeasurer;->mSensorManager:Landroid/hardware/SensorManager;

    .line 154
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/camera/ExposureTimeFilter$IlluminationBasedExposureMeasurer;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/camera/ExposureTimeFilter$IlluminationBasedExposureMeasurer;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 156
    :goto_0
    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/camera/ExposureTimeFilter$IlluminationBasedExposureMeasurer;->mLight:Landroid/hardware/Sensor;

    .line 157
    return-void

    .line 156
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static estimateExposureFromLux(F)F
    .locals 2

    .prologue
    .line 189
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-nez v0, :cond_0

    .line 190
    const/high16 p0, 0x42a00000    # 80.0f

    .line 192
    :cond_0
    const/high16 v0, 0x44b40000    # 1440.0f

    const/high16 v1, 0x44480000    # 800.0f

    mul-float/2addr v1, p0

    div-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public getFrameExposure(Lcom/google/android/libraries/smartburst/filterfw/Frame;)F
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/camera/ExposureTimeFilter$IlluminationBasedExposureMeasurer;->mLightLx:F

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterpacks/camera/ExposureTimeFilter$IlluminationBasedExposureMeasurer;->estimateExposureFromLux(F)F

    move-result v0

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .prologue
    .line 186
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/camera/ExposureTimeFilter$IlluminationBasedExposureMeasurer;->mLightLx:F

    .line 181
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/camera/ExposureTimeFilter$IlluminationBasedExposureMeasurer;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/camera/ExposureTimeFilter$IlluminationBasedExposureMeasurer;->mLight:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/camera/ExposureTimeFilter$IlluminationBasedExposureMeasurer;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/camera/ExposureTimeFilter$IlluminationBasedExposureMeasurer;->mLight:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 164
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/camera/ExposureTimeFilter$IlluminationBasedExposureMeasurer;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/camera/ExposureTimeFilter$IlluminationBasedExposureMeasurer;->mLight:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/camera/ExposureTimeFilter$IlluminationBasedExposureMeasurer;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 176
    :cond_0
    return-void
.end method
