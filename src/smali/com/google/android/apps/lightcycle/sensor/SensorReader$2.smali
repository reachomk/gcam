.class final Lcom/google/android/apps/lightcycle/sensor/SensorReader$2;
.super Ljava/lang/Object;
.source "SensorReader.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/lightcycle/sensor/SensorReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/google/android/apps/lightcycle/sensor/SensorReader;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/sensor/SensorReader;)V
    .locals 0

    .prologue
    .line 511
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader$2;->this$0:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .prologue
    .line 513
    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 517
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 518
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader$2;->this$0:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-static {v0, p1}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->access$200(Lcom/google/android/apps/lightcycle/sensor/SensorReader;Landroid/hardware/SensorEvent;)V

    .line 519
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader$2;->this$0:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->access$300(Lcom/google/android/apps/lightcycle/sensor/SensorReader;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader$2;->this$0:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->access$400(Lcom/google/android/apps/lightcycle/sensor/SensorReader;)Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processAcc([FJ)V

    .line 549
    :cond_0
    :goto_0
    return-void

    .line 522
    :cond_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 523
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader$2;->this$0:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->access$500(Lcom/google/android/apps/lightcycle/sensor/SensorReader;)[F

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v5

    aput v1, v0, v5

    .line 524
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader$2;->this$0:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->access$500(Lcom/google/android/apps/lightcycle/sensor/SensorReader;)[F

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    aput v1, v0, v3

    .line 525
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader$2;->this$0:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->access$500(Lcom/google/android/apps/lightcycle/sensor/SensorReader;)[F

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    aput v1, v0, v4

    goto :goto_0

    .line 526
    :cond_2
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 528
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v0, v5

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader$2;->this$0:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-static {v2}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->access$600(Lcom/google/android/apps/lightcycle/sensor/SensorReader;)[F

    move-result-object v2

    aget v2, v2, v5

    sub-float/2addr v1, v2

    aput v1, v0, v5

    .line 529
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v0, v3

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader$2;->this$0:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-static {v2}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->access$600(Lcom/google/android/apps/lightcycle/sensor/SensorReader;)[F

    move-result-object v2

    aget v2, v2, v3

    sub-float/2addr v1, v2

    aput v1, v0, v3

    .line 530
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v0, v4

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader$2;->this$0:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-static {v2}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->access$600(Lcom/google/android/apps/lightcycle/sensor/SensorReader;)[F

    move-result-object v2

    aget v2, v2, v4

    sub-float/2addr v1, v2

    aput v1, v0, v4

    .line 532
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v5

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v5

    mul-float/2addr v0, v1

    .line 533
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    mul-float/2addr v1, v2

    .line 534
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v4

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v4

    mul-float/2addr v2, v3

    .line 535
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader$2;->this$0:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    add-float/2addr v0, v1

    add-float/2addr v0, v2

    invoke-static {v3, v0}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->access$702(Lcom/google/android/apps/lightcycle/sensor/SensorReader;F)F

    .line 536
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader$2;->this$0:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->access$800$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TM6IPR8EHHNIORCCKNN6PBEEDNN4BQJCLN76RRIA9IM2P35E8TIIJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUR39CTK78ORPCDM6ABRLEHKMOBQ3C5M6OOJ1CDLJM___(Lcom/google/android/apps/lightcycle/sensor/SensorReader;)Lcom/google/android/apps/camera/util/Callback;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 537
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader$2;->this$0:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->access$800$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TM6IPR8EHHNIORCCKNN6PBEEDNN4BQJCLN76RRIA9IM2P35E8TIIJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUR39CTK78ORPCDM6ABRLEHKMOBQ3C5M6OOJ1CDLJM___(Lcom/google/android/apps/lightcycle/sensor/SensorReader;)Lcom/google/android/apps/camera/util/Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader$2;->this$0:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    .line 538
    invoke-static {v1}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->access$700(Lcom/google/android/apps/lightcycle/sensor/SensorReader;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 537
    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/util/Callback;->onCallback(Ljava/lang/Object;)V

    .line 542
    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader$2;->this$0:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-static {v0, p1}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->access$900(Lcom/google/android/apps/lightcycle/sensor/SensorReader;Landroid/hardware/SensorEvent;)V

    .line 545
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader$2;->this$0:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->access$300(Lcom/google/android/apps/lightcycle/sensor/SensorReader;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader$2;->this$0:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->access$400(Lcom/google/android/apps/lightcycle/sensor/SensorReader;)Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/lightcycle/sensor/OrientationEKF;->processGyro([FJ)V

    goto/16 :goto_0
.end method
