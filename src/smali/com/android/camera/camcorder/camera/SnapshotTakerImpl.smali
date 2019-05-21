.class public final Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;
.super Ljava/lang/Object;
.source "SnapshotTakerImpl.java"

# interfaces
.implements Lcom/android/camera/camcorder/camera/SnapshotTaker;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/camera/camcorder/camera/SnapshotTaker",
        "<TC;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final cameraCaptureRequestBuilderFactory:Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;

.field private final cameraFileUtil:Lcom/android/camera/storage/CameraFileUtil;

.field private final cameraHandlerExecutor:Lcom/google/android/apps/camera/async/HandlerExecutor;

.field private final fileNamer:Lcom/android/camera/storage/FileNamer;

.field private final imageReaderHandler:Landroid/os/Handler;

.field private final imageReaderProxy:Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy;

.field private final jpegQuality:Ljava/lang/Byte;

.field private final locationProvider:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/location/LocationProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;

.field private final observableOrientation:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final observableTorchSwitch:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final observableZoomRatio:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private state$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDGMQORFE9I6ASHFCDGMQPBIC4NL6RJ1E1PMGRRKAHGMMPBI95MN0R14ADQ62T357C______:I

.field private waitingToClose:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-string v0, "CdrSnapshotTaker"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/Byte;Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;Lcom/android/camera/storage/FileNamer;Lcom/android/camera/storage/CameraFileUtil;Landroid/os/Handler;Lcom/google/android/apps/camera/async/HandlerExecutor;Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy;Lcom/google/common/base/Optional;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Byte;",
            "Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;",
            "Lcom/android/camera/storage/FileNamer;",
            "Lcom/android/camera/storage/CameraFileUtil;",
            "Landroid/os/Handler;",
            "Lcom/google/android/apps/camera/async/HandlerExecutor;",
            "Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy;",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/location/LocationProvider;",
            ">;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    sget v0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$State;->READY$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDGMQORFE9I6ASHFCDGMQPBIC4NL6RJ1E1PMGRRKAHGMMPBI95MN0R14ADQ62T357C______:I

    iput v0, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;->state$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDGMQORFE9I6ASHFCDGMQPBIC4NL6RJ1E1PMGRRKAHGMMPBI95MN0R14ADQ62T357C______:I

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;->waitingToClose:Z

    .line 119
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;->lock:Ljava/lang/Object;

    .line 133
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    iput-object v0, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;->jpegQuality:Ljava/lang/Byte;

    .line 134
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;

    iput-object v0, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;->cameraCaptureRequestBuilderFactory:Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;

    .line 135
    invoke-static {p3}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/storage/FileNamer;

    iput-object v0, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;->fileNamer:Lcom/android/camera/storage/FileNamer;

    .line 136
    invoke-static {p4}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/storage/CameraFileUtil;

    iput-object v0, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;->cameraFileUtil:Lcom/android/camera/storage/CameraFileUtil;

    .line 137
    invoke-static {p5}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iput-object v0, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;->imageReaderHandler:Landroid/os/Handler;

    .line 138
    invoke-static {p6}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/HandlerExecutor;

    iput-object v0, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;->cameraHandlerExecutor:Lcom/google/android/apps/camera/async/HandlerExecutor;

    .line 139
    invoke-static {p7}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy;

    iput-object v0, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;->imageReaderProxy:Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy;

    .line 140
    invoke-static {p8}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Optional;

    iput-object v0, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;->locationProvider:Lcom/google/common/base/Optional;

    .line 141
    invoke-static {p9}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/Observable;

    iput-object v0, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;->observableTorchSwitch:Lcom/google/android/apps/camera/async/Observable;

    .line 142
    invoke-static {p10}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/Observable;

    iput-object v0, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;->observableZoomRatio:Lcom/google/android/apps/camera/async/Observable;

    .line 143
    invoke-static {p11}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/Observable;

    iput-object v0, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;->observableOrientation:Lcom/google/android/apps/camera/async/Observable;

    .line 144
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;)Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;->imageReaderProxy:Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;)Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;->cameraCaptureRequestBuilderFactory:Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;)Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;->waitingToClose:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;)Ljava/lang/Byte;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;->jpegQuality:Ljava/lang/Byte;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;)Lcom/google/android/apps/camera/async/Observable;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;->observableOrientation:Lcom/google/android/apps/camera/async/Observable;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;)Lcom/android/camera/storage/FileNamer;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;->fileNamer:Lcom/android/camera/storage/FileNamer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;)Lcom/android/camera/storage/CameraFileUtil;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;->cameraFileUtil:Lcom/android/camera/storage/CameraFileUtil;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;)Lcom/google/common/base/Optional;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;->locationProvider:Lcom/google/common/base/Optional;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15THM2RB3DTP68PBI5THM2RB5E9GIUKREC5O76Q3FEHA62QR5E94MQS3C7CKKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM6OBDCDNN4P35E8NM6OBDCLP62BQJDPGN0SR8DTQ58OBBCLP4IRBGDGI56T31EHIJM___(Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;)I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;->state$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDGMQORFE9I6ASHFCDGMQPBIC4NL6RJ1E1PMGRRKAHGMMPBI95MN0R14ADQ62T357C______:I

    return v0
.end method

.method static synthetic access$902$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15THM2RB3DTP68PBI5THM2RB5E9GIUKREC5O76Q3FEHA62QR5E94MQS3C7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15THM2RB3DTP68PBI5THM2RB5E9GIUKREC5O76Q3FEHA62QR5E94MQS3C4H9N8OBKCKTIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIUOR1DLHMUSJ4CLP2UOR1DLIN4O9FADN62S3JD1NN8L31DDIN4IBDE1M28KRKC5Q6AEO_(Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;I)I
    .locals 0

    .prologue
    .line 57
    iput p1, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;->state$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDGMQORFE9I6ASHFCDGMQPBIC4NL6RJ1E1PMGRRKAHGMMPBI95MN0R14ADQ62T357C______:I

    return p1
.end method


# virtual methods
.method public final close()V
    .locals 3

    .prologue
    .line 148
    iget-object v1, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 149
    :try_start_0
    iget v0, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;->state$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDGMQORFE9I6ASHFCDGMQPBIC4NL6RJ1E1PMGRRKAHGMMPBI95MN0R14ADQ62T357C______:I

    sget v2, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$State;->CLOSED$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDGMQORFE9I6ASHFCDGMQPBIC4NL6RJ1E1PMGRRKAHGMMPBI95MN0R14ADQ62T357C______:I

    if-ne v0, v2, :cond_0

    .line 150
    monitor-exit v1

    .line 163
    :goto_0
    return-void

    .line 152
    :cond_0
    iget v0, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;->state$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDGMQORFE9I6ASHFCDGMQPBIC4NL6RJ1E1PMGRRKAHGMMPBI95MN0R14ADQ62T357C______:I

    sget v2, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$State;->BUSY$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDGMQORFE9I6ASHFCDGMQPBIC4NL6RJ1E1PMGRRKAHGMMPBI95MN0R14ADQ62T357C______:I

    if-ne v0, v2, :cond_1

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;->waitingToClose:Z

    .line 154
    monitor-exit v1

    goto :goto_0

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 158
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;->imageReaderProxy:Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy;

    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy;->close()V

    .line 161
    sget v0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$State;->CLOSED$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDGMQORFE9I6ASHFCDGMQPBIC4NL6RJ1E1PMGRRKAHGMMPBI95MN0R14ADQ62T357C______:I

    iput v0, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;->state$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDGMQORFE9I6ASHFCDGMQPBIC4NL6RJ1E1PMGRRKAHGMMPBI95MN0R14ADQ62T357C______:I

    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;->waitingToClose:Z

    .line 163
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final getImageReaderSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;->imageReaderProxy:Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy;

    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy;->getSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public final sendSnapshotRequest$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUS3IDTS7IBR3C5MMASJ168NK6OBDCLP62GR1E1Q7ASJ5ADIN6SR9DTN50SJFF1SJMAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BR3C5MM6RRICHIN4BQ3C5MM6RRICHIN4KREC5O76Q3FEH37AT3LE9IN6EO_(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;)Lcom/android/camera/one/v2/command/CommandExecutorModule;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lcom/android/camera/one/v2/command/CommandExecutorModule;"
        }
    .end annotation

    .prologue
    .line 173
    iget-object v6, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;->lock:Ljava/lang/Object;

    monitor-enter v6

    .line 174
    :try_start_0
    iget v0, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;->state$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDGMQORFE9I6ASHFCDGMQPBIC4NL6RJ1E1PMGRRKAHGMMPBI95MN0R14ADQ62T357C______:I

    sget v1, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$State;->CLOSED$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDGMQORFE9I6ASHFCDGMQPBIC4NL6RJ1E1PMGRRKAHGMMPBI95MN0R14ADQ62T357C______:I

    if-ne v0, v1, :cond_0

    .line 175
    new-instance v0, Lcom/android/camera/one/v2/command/CommandExecutorModule;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "has been closed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/camera/one/v2/command/CommandExecutorModule;-><init>(Ljava/lang/Throwable;)V

    monitor-exit v6

    .line 375
    :goto_0
    return-object v0

    .line 177
    :cond_0
    iget v0, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;->state$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDGMQORFE9I6ASHFCDGMQPBIC4NL6RJ1E1PMGRRKAHGMMPBI95MN0R14ADQ62T357C______:I

    sget v1, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$State;->BUSY$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDGMQORFE9I6ASHFCDGMQPBIC4NL6RJ1E1PMGRRKAHGMMPBI95MN0R14ADQ62T357C______:I

    if-ne v0, v1, :cond_1

    .line 178
    new-instance v0, Lcom/android/camera/one/v2/command/CommandExecutorModule;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "there is already a snapshot request in flight."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/camera/one/v2/command/CommandExecutorModule;-><init>(Ljava/lang/Throwable;)V

    monitor-exit v6

    goto :goto_0

    .line 376
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 182
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;->state$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDGMQORFE9I6ASHFCDGMQPBIC4NL6RJ1E1PMGRRKAHGMMPBI95MN0R14ADQ62T357C______:I

    sget v1, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$State;->READY$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDGMQORFE9I6ASHFCDGMQPBIC4NL6RJ1E1PMGRRKAHGMMPBI95MN0R14ADQ62T357C______:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 183
    sget v0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$State;->BUSY$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDGMQORFE9I6ASHFCDGMQPBIC4NL6RJ1E1PMGRRKAHGMMPBI95MN0R14ADQ62T357C______:I

    iput v0, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;->state$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDGMQORFE9I6ASHFCDGMQPBIC4NL6RJ1E1PMGRRKAHGMMPBI95MN0R14ADQ62T357C______:I

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 187
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;->observableZoomRatio:Lcom/google/android/apps/camera/async/Observable;

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    .line 188
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;->observableTorchSwitch:Lcom/google/android/apps/camera/async/Observable;

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    .line 191
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v7

    .line 194
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;->imageReaderProxy:Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy;

    new-instance v1, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$1;

    invoke-direct {v1, p0, v7}, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$1;-><init>(Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;Lcom/google/common/util/concurrent/SettableFuture;)V

    iget-object v8, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;->imageReaderHandler:Landroid/os/Handler;

    invoke-interface {v0, v1, v8}, Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy;->setOnImageAvailableListener(Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 209
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v8

    .line 211
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v9

    .line 215
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;->cameraHandlerExecutor:Lcom/google/android/apps/camera/async/HandlerExecutor;

    new-instance v1, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$2;

    invoke-direct {v1, p0, p1, v9, v8}, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$2;-><init>(Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/common/util/concurrent/SettableFuture;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 264
    new-instance v0, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$3;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/camcorder/camera/SnapshotTakerImpl$3;-><init>(Lcom/android/camera/camcorder/camera/SnapshotTakerImpl;JLjava/lang/Boolean;Ljava/lang/Float;)V

    .line 265
    invoke-static {v8, v7, v0}, Lcom/google/android/apps/camera/async/Futures2;->joinAll(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/apps/camera/async/Futures2$AsyncFunction2;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    .line 375
    new-instance v0, Lcom/android/camera/one/v2/command/CommandExecutorModule;

    invoke-direct {v0, v1, v9}, Lcom/android/camera/one/v2/command/CommandExecutorModule;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;)V

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 182
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
