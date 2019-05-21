.class final Lcom/google/android/apps/lightcycle/sensor/SensorReader$1;
.super Landroid/os/HandlerThread;
.source "SensorReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/sensor/SensorReader;->start$51662RJ4E9NMIP1FCDNMST35DPQ2UGRFDPQ6AU3K7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15THMURJ6D5JIUHRJCLP7CQB3CLPKGPBCE1IN4EP99HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355TPMARJJDTP2UKR5DPPMUSIICLGM8PBI7C______(Landroid/content/Context;Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;)Lcom/google/android/apps/lightcycle/sensor/SensorReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private handler:Landroid/os/Handler;

.field private synthetic this$0:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

.field private synthetic val$selectedGyroDelay:I


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/sensor/SensorReader;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 126
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader$1;->this$0:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    iput p3, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader$1;->val$selectedGyroDelay:I

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader$1;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected final onLooperPrepared()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 131
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/sensor/SensorReader$1;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader$1;->handler:Landroid/os/Handler;

    .line 135
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader$1;->this$0:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->access$100(Lcom/google/android/apps/lightcycle/sensor/SensorReader;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader$1;->this$0:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    .line 136
    invoke-static {v1}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->access$000(Lcom/google/android/apps/lightcycle/sensor/SensorReader;)Landroid/hardware/SensorEventListener;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader$1;->this$0:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    .line 137
    invoke-static {v2}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->access$100(Lcom/google/android/apps/lightcycle/sensor/SensorReader;)Landroid/hardware/SensorManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader$1;->handler:Landroid/os/Handler;

    .line 135
    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 140
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader$1;->this$0:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->access$100(Lcom/google/android/apps/lightcycle/sensor/SensorReader;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader$1;->this$0:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    .line 141
    invoke-static {v1}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->access$000(Lcom/google/android/apps/lightcycle/sensor/SensorReader;)Landroid/hardware/SensorEventListener;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader$1;->this$0:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    .line 142
    invoke-static {v2}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->access$100(Lcom/google/android/apps/lightcycle/sensor/SensorReader;)Landroid/hardware/SensorManager;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iget v3, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader$1;->val$selectedGyroDelay:I

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader$1;->handler:Landroid/os/Handler;

    .line 140
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 145
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader$1;->this$0:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->access$100(Lcom/google/android/apps/lightcycle/sensor/SensorReader;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader$1;->this$0:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    .line 146
    invoke-static {v1}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->access$000(Lcom/google/android/apps/lightcycle/sensor/SensorReader;)Landroid/hardware/SensorEventListener;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader$1;->this$0:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    .line 147
    invoke-static {v2}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->access$100(Lcom/google/android/apps/lightcycle/sensor/SensorReader;)Landroid/hardware/SensorManager;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/sensor/SensorReader$1;->handler:Landroid/os/Handler;

    .line 145
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 150
    return-void
.end method
