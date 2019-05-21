.class final Lcom/android/camera/camcorder/CamcorderDeviceImpl;
.super Ljava/lang/Object;
.source "CamcorderDeviceImpl.java"

# interfaces
.implements Lcom/android/camera/camcorder/CamcorderCaptureSessionCallback;
.implements Lcom/android/camera/camcorder/CamcorderDevice;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/camera/camcorder/CamcorderCaptureSessionCallback;",
        "Lcom/android/camera/camcorder/CamcorderDevice;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private activeCamcorderCaptureSession:Lcom/android/camera/camcorder/CamcorderCaptureSession;

.field private final afScanner:Lcom/android/camera/camcorder/camera/AfScanner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/camcorder/camera/AfScanner",
            "<TC;>;"
        }
    .end annotation
.end field

.field private final afStateMonitor:Lcom/google/android/apps/camera/aaa/AfStateMonitor;

.field private final afStateResponseListener$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM2TBKDTJ6UORLECNK2PIJEHGN8PAICLPN0RREEDIKOQBJEHIMSPBI7C______:Lcom/android/camera/one/v2/core/ResponseListener;

.field private final callback:Lcom/android/camera/camcorder/CamcorderDeviceInternalCallback;

.field private final camcorderVideoEncoderProfile:Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;

.field private final cameraCaptureRequestBuilderFactory:Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;

.field private final cameraCaptureSessionCreator:Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreator",
            "<TC;>;"
        }
    .end annotation
.end field

.field private final cameraDevice:Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;

.field private final cameraId:Lcom/google/android/apps/camera/device/CameraId;

.field private cameraRepeatingCaptureCallback:Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;

.field private final captureRequestListCreator:Lcom/android/camera/camcorder/camera/CaptureRequestListCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/camcorder/camera/CaptureRequestListCreator",
            "<TC;>;"
        }
    .end annotation
.end field

.field private final executor:Ljava/util/concurrent/Executor;

.field private final fileNamer:Lcom/android/camera/storage/FileNamer;

.field private futureResetDeviceResult:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final handlerExecutor:Lcom/google/android/apps/camera/async/HandlerExecutor;

.field private final lock:Ljava/lang/Object;

.field private final mediaRecorderPreparer:Lcom/android/camera/camcorder/media/MediaRecorderPreparer;

.field private final observableActiveFocusPoint:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/google/android/apps/camera/aaa/FocusPoint;",
            ">;"
        }
    .end annotation
.end field

.field private final observableAeExposureCompensation:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final observableAwbMode:Lcom/google/android/apps/camera/async/Observable;
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

.field private final observableVideoOrientation:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final observableZoomedCropRegion:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final optionalSnapshotTaker:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/camcorder/camera/SnapshotTaker",
            "<TC;>;>;"
        }
    .end annotation
.end field

.field private preparedMediaRecorder:Lcom/android/camera/camcorder/media/PreparedMediaRecorder;

.field private final previewStarter:Lcom/android/camera/camcorder/camera/PreviewStarter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/camcorder/camera/PreviewStarter",
            "<TC;>;"
        }
    .end annotation
.end field

.field private state:Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;

.field private final updatableScalerCropRegion:Lcom/google/android/apps/camera/async/Updatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Updatable",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-string v0, "CdrDeviceImpl"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/camcorder/camera/AfScanner;Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreator;Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;Lcom/google/android/apps/camera/device/CameraId;Lcom/android/camera/camcorder/camera/CaptureRequestListCreator;Ljava/util/concurrent/Executor;Lcom/android/camera/storage/FileNamer;Lcom/google/android/apps/camera/async/HandlerExecutor;Lcom/android/camera/camcorder/media/MediaRecorderPreparer;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/common/base/Optional;Lcom/android/camera/camcorder/camera/PreviewStarter;Lcom/google/android/apps/camera/async/Updatable;Lcom/android/camera/camcorder/CamcorderDeviceInternalCallback;Lcom/android/camera/camcorder/media/PreparedMediaRecorder;Lcom/android/camera/one/v2/core/ResponseListener;Lcom/google/android/apps/camera/aaa/AfStateMonitor;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/camcorder/camera/AfScanner",
            "<TC;>;",
            "Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;",
            "Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;",
            "Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreator",
            "<TC;>;",
            "Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;",
            "Lcom/google/android/apps/camera/device/CameraId;",
            "Lcom/android/camera/camcorder/camera/CaptureRequestListCreator",
            "<TC;>;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/camera/storage/FileNamer;",
            "Lcom/google/android/apps/camera/async/HandlerExecutor;",
            "Lcom/android/camera/camcorder/media/MediaRecorderPreparer;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/google/android/apps/camera/aaa/FocusPoint;",
            ">;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Landroid/graphics/Rect;",
            ">;",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/camcorder/camera/SnapshotTaker",
            "<TC;>;>;",
            "Lcom/android/camera/camcorder/camera/PreviewStarter",
            "<TC;>;",
            "Lcom/google/android/apps/camera/async/Updatable",
            "<",
            "Landroid/graphics/Rect;",
            ">;",
            "Lcom/android/camera/camcorder/CamcorderDeviceInternalCallback;",
            "Lcom/android/camera/camcorder/media/PreparedMediaRecorder;",
            "Lcom/android/camera/one/v2/core/ResponseListener;",
            "Lcom/google/android/apps/camera/aaa/AfStateMonitor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->lock:Ljava/lang/Object;

    .line 112
    const/4 v2, 0x0

    .line 113
    invoke-static {v2}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->futureResetDeviceResult:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 139
    sget-object v2, Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;->READY:Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;

    iput-object v2, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->state:Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;

    .line 167
    iput-object p1, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->afScanner:Lcom/android/camera/camcorder/camera/AfScanner;

    .line 168
    iput-object p2, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->camcorderVideoEncoderProfile:Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;

    .line 169
    iput-object p3, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->cameraCaptureRequestBuilderFactory:Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;

    .line 170
    iput-object p4, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->cameraCaptureSessionCreator:Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreator;

    .line 171
    iput-object p5, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->cameraDevice:Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;

    .line 172
    iput-object p6, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->cameraId:Lcom/google/android/apps/camera/device/CameraId;

    .line 173
    iput-object p7, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->captureRequestListCreator:Lcom/android/camera/camcorder/camera/CaptureRequestListCreator;

    .line 174
    iput-object p8, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->executor:Ljava/util/concurrent/Executor;

    .line 175
    iput-object p9, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->fileNamer:Lcom/android/camera/storage/FileNamer;

    .line 176
    iput-object p10, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->handlerExecutor:Lcom/google/android/apps/camera/async/HandlerExecutor;

    .line 177
    iput-object p11, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->mediaRecorderPreparer:Lcom/android/camera/camcorder/media/MediaRecorderPreparer;

    .line 178
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->observableAeExposureCompensation:Lcom/google/android/apps/camera/async/Observable;

    .line 179
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->observableAwbMode:Lcom/google/android/apps/camera/async/Observable;

    .line 180
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->observableTorchSwitch:Lcom/google/android/apps/camera/async/Observable;

    .line 181
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->observableVideoOrientation:Lcom/google/android/apps/camera/async/Observable;

    .line 182
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->observableActiveFocusPoint:Lcom/google/android/apps/camera/async/Observable;

    .line 183
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->observableZoomedCropRegion:Lcom/google/android/apps/camera/async/Observable;

    .line 184
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->optionalSnapshotTaker:Lcom/google/common/base/Optional;

    .line 185
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->previewStarter:Lcom/android/camera/camcorder/camera/PreviewStarter;

    .line 186
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->updatableScalerCropRegion:Lcom/google/android/apps/camera/async/Updatable;

    .line 187
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->callback:Lcom/android/camera/camcorder/CamcorderDeviceInternalCallback;

    .line 188
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->preparedMediaRecorder:Lcom/android/camera/camcorder/media/PreparedMediaRecorder;

    .line 189
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->afStateResponseListener$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM2TBKDTJ6UORLECNK2PIJEHGN8PAICLPN0RREEDIKOQBJEHIMSPBI7C______:Lcom/android/camera/one/v2/core/ResponseListener;

    .line 190
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->afStateMonitor:Lcom/google/android/apps/camera/aaa/AfStateMonitor;

    .line 191
    new-instance v2, Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;

    .line 192
    invoke-virtual/range {p22 .. p22}, Lcom/android/camera/camcorder/media/PreparedMediaRecorder;->getRecordingSurface()Landroid/view/Surface;

    move-result-object v3

    move-object/from16 v0, p20

    move-object/from16 v1, p23

    invoke-direct {v2, v3, v0, v1}, Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;-><init>(Landroid/view/Surface;Lcom/google/android/apps/camera/async/Updatable;Lcom/android/camera/one/v2/core/ResponseListener;)V

    iput-object v2, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->cameraRepeatingCaptureCallback:Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;

    .line 195
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/camcorder/CamcorderDeviceImpl;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/camcorder/CamcorderDeviceImpl;)Lcom/google/android/apps/camera/async/HandlerExecutor;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->handlerExecutor:Lcom/google/android/apps/camera/async/HandlerExecutor;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/camcorder/CamcorderDeviceImpl;)Lcom/android/camera/camcorder/media/MediaRecorderPreparer;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->mediaRecorderPreparer:Lcom/android/camera/camcorder/media/MediaRecorderPreparer;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/camcorder/CamcorderDeviceImpl;)Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/camcorder/CamcorderDeviceImpl;)Lcom/android/camera/camcorder/CamcorderCaptureSession;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->activeCamcorderCaptureSession:Lcom/android/camera/camcorder/CamcorderCaptureSession;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/camera/camcorder/CamcorderDeviceImpl;Lcom/android/camera/camcorder/CamcorderCaptureSession;)Lcom/android/camera/camcorder/CamcorderCaptureSession;
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->activeCamcorderCaptureSession:Lcom/android/camera/camcorder/CamcorderCaptureSession;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/camera/camcorder/CamcorderDeviceImpl;)Lcom/android/camera/camcorder/camera/AfScanner;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->afScanner:Lcom/android/camera/camcorder/camera/AfScanner;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/camcorder/CamcorderDeviceImpl;)Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->camcorderVideoEncoderProfile:Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/camera/camcorder/CamcorderDeviceImpl;)Lcom/android/camera/storage/FileNamer;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->fileNamer:Lcom/android/camera/storage/FileNamer;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/camera/camcorder/CamcorderDeviceImpl;)Lcom/google/android/apps/camera/async/Observable;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->observableAeExposureCompensation:Lcom/google/android/apps/camera/async/Observable;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/camera/camcorder/CamcorderDeviceImpl;)Lcom/google/android/apps/camera/async/Observable;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->observableAwbMode:Lcom/google/android/apps/camera/async/Observable;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/camera/camcorder/CamcorderDeviceImpl;)Lcom/google/android/apps/camera/async/Observable;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->observableTorchSwitch:Lcom/google/android/apps/camera/async/Observable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/camcorder/CamcorderDeviceImpl;)Lcom/android/camera/camcorder/media/PreparedMediaRecorder;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->preparedMediaRecorder:Lcom/android/camera/camcorder/media/PreparedMediaRecorder;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/camcorder/CamcorderDeviceImpl;)Lcom/google/android/apps/camera/async/Observable;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->observableVideoOrientation:Lcom/google/android/apps/camera/async/Observable;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/camera/camcorder/CamcorderDeviceImpl;Lcom/android/camera/camcorder/media/PreparedMediaRecorder;)Lcom/android/camera/camcorder/media/PreparedMediaRecorder;
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->preparedMediaRecorder:Lcom/android/camera/camcorder/media/PreparedMediaRecorder;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/camera/camcorder/CamcorderDeviceImpl;)Lcom/google/android/apps/camera/async/Observable;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->observableActiveFocusPoint:Lcom/google/android/apps/camera/async/Observable;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/camera/camcorder/CamcorderDeviceImpl;)Lcom/google/android/apps/camera/async/Observable;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->observableZoomedCropRegion:Lcom/google/android/apps/camera/async/Observable;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/camera/camcorder/CamcorderDeviceImpl;)Lcom/google/android/apps/camera/async/Updatable;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->updatableScalerCropRegion:Lcom/google/android/apps/camera/async/Updatable;

    return-object v0
.end method

.method static synthetic access$2400$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15THM2RB3DTP68PBI5T1M2RB3DTP68PBI8HINCQB3CL4MQS3C7CKKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BR1ELQ6UPJFCDQN6BQ1CP9N8OBKCL96ASRGDTN76PACD5PN8PBECLP3M___(Lcom/android/camera/camcorder/CamcorderDeviceImpl;)Lcom/android/camera/one/v2/core/ResponseListener;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->afStateResponseListener$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM2TBKDTJ6UORLECNK2PIJEHGN8PAICLPN0RREEDIKOQBJEHIMSPBI7C______:Lcom/android/camera/one/v2/core/ResponseListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/camcorder/CamcorderDeviceImpl;)Lcom/google/common/base/Optional;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->optionalSnapshotTaker:Lcom/google/common/base/Optional;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/camcorder/CamcorderDeviceImpl;)Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreator;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->cameraCaptureSessionCreator:Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreator;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/camcorder/CamcorderDeviceImpl;)Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->cameraRepeatingCaptureCallback:Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/camera/camcorder/CamcorderDeviceImpl;Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;)Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->cameraRepeatingCaptureCallback:Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/camera/camcorder/CamcorderDeviceImpl;)Lcom/android/camera/camcorder/camera/PreviewStarter;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->previewStarter:Lcom/android/camera/camcorder/camera/PreviewStarter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/camcorder/CamcorderDeviceImpl;)Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->state:Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/camera/camcorder/CamcorderDeviceImpl;Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;)Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->state:Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/camera/camcorder/CamcorderDeviceImpl;)Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->cameraCaptureRequestBuilderFactory:Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/camcorder/CamcorderDeviceImpl;)Lcom/android/camera/camcorder/camera/CaptureRequestListCreator;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->captureRequestListCreator:Lcom/android/camera/camcorder/camera/CaptureRequestListCreator;

    return-object v0
.end method


# virtual methods
.method public final close()V
    .locals 3

    .prologue
    .line 199
    iget-object v1, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->state:Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;

    sget-object v2, Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;->CLOSED:Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;

    invoke-virtual {v0, v2}, Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    sget-object v0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->TAG:Ljava/lang/String;

    const-string v2, "Device has been closed."

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    monitor-exit v1

    .line 234
    :goto_0
    return-void

    .line 204
    :cond_0
    sget-object v0, Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;->CLOSED:Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;

    iput-object v0, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->state:Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;

    .line 206
    sget-object v0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->TAG:Ljava/lang/String;

    const-string v2, "close"

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->activeCamcorderCaptureSession:Lcom/android/camera/camcorder/CamcorderCaptureSession;

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->activeCamcorderCaptureSession:Lcom/android/camera/camcorder/CamcorderCaptureSession;

    invoke-interface {v0}, Lcom/android/camera/camcorder/CamcorderCaptureSession;->close()V

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->preparedMediaRecorder:Lcom/android/camera/camcorder/media/PreparedMediaRecorder;

    if-eqz v0, :cond_2

    .line 215
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->preparedMediaRecorder:Lcom/android/camera/camcorder/media/PreparedMediaRecorder;

    invoke-virtual {v0}, Lcom/android/camera/camcorder/media/PreparedMediaRecorder;->close()V

    .line 219
    :cond_2
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->optionalSnapshotTaker:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 220
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->optionalSnapshotTaker:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/camcorder/camera/SnapshotTaker;

    invoke-interface {v0}, Lcom/android/camera/camcorder/camera/SnapshotTaker;->close()V

    .line 224
    :cond_3
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->cameraCaptureSessionCreator:Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreator;

    invoke-interface {v0}, Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreator;->close()V

    .line 227
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->previewStarter:Lcom/android/camera/camcorder/camera/PreviewStarter;

    invoke-virtual {v0}, Lcom/android/camera/camcorder/camera/PreviewStarter;->close()V

    .line 230
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->cameraDevice:Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;

    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;->close()V

    .line 233
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->callback:Lcom/android/camera/camcorder/CamcorderDeviceInternalCallback;

    iget-object v2, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->cameraId:Lcom/google/android/apps/camera/device/CameraId;

    invoke-interface {v0, v2}, Lcom/android/camera/camcorder/CamcorderDeviceInternalCallback;->onDeviceClosed(Lcom/google/android/apps/camera/device/CameraId;)V

    .line 234
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final createCaptureSession(Landroid/view/Surface;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Surface;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/camcorder/CamcorderCaptureSession;",
            ">;"
        }
    .end annotation

    .prologue
    .line 245
    iget-object v1, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->state:Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;

    sget-object v2, Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;->READY:Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;

    invoke-virtual {v0, v2}, Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v2, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->state:Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1b

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "CamcorderDeviceImpl mState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    monitor-exit v1

    .line 392
    :goto_0
    return-object v0

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->state:Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;

    sget-object v2, Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;->READY:Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;

    invoke-virtual {v0, v2}, Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 252
    sget-object v0, Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;->CREATING_SESSION:Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;

    iput-object v0, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->state:Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;

    .line 254
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 257
    iget-object v2, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->futureResetDeviceResult:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v3, Lcom/android/camera/camcorder/CamcorderDeviceImpl$1;

    invoke-direct {v3, p0, p1}, Lcom/android/camera/camcorder/CamcorderDeviceImpl$1;-><init>(Lcom/android/camera/camcorder/CamcorderDeviceImpl;Landroid/view/Surface;)V

    .line 258
    invoke-static {v2, v3}, Lcom/google/common/util/concurrent/Futures;->transformAsync(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    .line 281
    new-instance v3, Lcom/android/camera/camcorder/CamcorderDeviceImpl$2;

    invoke-direct {v3, p0, p1}, Lcom/android/camera/camcorder/CamcorderDeviceImpl$2;-><init>(Lcom/android/camera/camcorder/CamcorderDeviceImpl;Landroid/view/Surface;)V

    .line 282
    invoke-static {v2, v3}, Lcom/google/common/util/concurrent/Futures;->transformAsync(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    .line 301
    new-instance v3, Lcom/android/camera/camcorder/CamcorderDeviceImpl$3;

    invoke-direct {v3, p0, v0, p1}, Lcom/android/camera/camcorder/CamcorderDeviceImpl$3;-><init>(Lcom/android/camera/camcorder/CamcorderDeviceImpl;Lcom/google/common/util/concurrent/SettableFuture;Landroid/view/Surface;)V

    invoke-static {v2, v3}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 392
    monitor-exit v1

    goto :goto_0

    .line 393
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getAutoFocusStateTransition()Lcom/google/android/apps/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/google/android/apps/camera/aaa/AfStateTransition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->afStateMonitor:Lcom/google/android/apps/camera/aaa/AfStateMonitor;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/aaa/AfStateMonitor;->getAfStateTransition()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final onCaptureSessionClosed()V
    .locals 4

    .prologue
    .line 398
    iget-object v1, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 400
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->state:Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;

    sget-object v2, Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;->CLOSED:Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;

    invoke-virtual {v0, v2}, Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    monitor-exit v1

    .line 454
    :goto_0
    return-void

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->state:Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;

    sget-object v2, Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;->SESSION_OPENED:Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;

    invoke-virtual {v0, v2}, Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 405
    sget-object v0, Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;->READY:Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;

    iput-object v0, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->state:Lcom/android/camera/camcorder/CamcorderDeviceImpl$State;

    .line 408
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->activeCamcorderCaptureSession:Lcom/android/camera/camcorder/CamcorderCaptureSession;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 409
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->activeCamcorderCaptureSession:Lcom/android/camera/camcorder/CamcorderCaptureSession;

    .line 412
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 413
    iput-object v0, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->futureResetDeviceResult:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 414
    iget-object v2, p0, Lcom/android/camera/camcorder/CamcorderDeviceImpl;->executor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/camera/camcorder/CamcorderDeviceImpl$4;

    invoke-direct {v3, p0, v0}, Lcom/android/camera/camcorder/CamcorderDeviceImpl$4;-><init>(Lcom/android/camera/camcorder/CamcorderDeviceImpl;Lcom/google/common/util/concurrent/SettableFuture;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 454
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 408
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
