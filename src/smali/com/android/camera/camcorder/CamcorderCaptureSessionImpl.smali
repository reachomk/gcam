.class final Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;
.super Ljava/lang/Object;
.source "CamcorderCaptureSessionImpl.java"

# interfaces
.implements Lcom/android/camera/camcorder/CamcorderCaptureSession;
.implements Lcom/android/camera/camcorder/CamcorderRecordingSessionCallback;
.implements Lcom/android/camera/camcorder/CamcorderRecordingSessionInternalCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/camera/camcorder/CamcorderCaptureSession;",
        "Lcom/android/camera/camcorder/CamcorderRecordingSessionCallback;",
        "Lcom/android/camera/camcorder/CamcorderRecordingSessionInternalCallback;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private activeRecordingSession:Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl",
            "<TC;>;"
        }
    .end annotation
.end field

.field private final afScanner:Lcom/android/camera/camcorder/camera/AfScanner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/camcorder/camera/AfScanner",
            "<TC;>;"
        }
    .end annotation
.end field

.field private final afStateResponseListener$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM2TBKDTJ6UORLECNK2PIJEHGN8PAICLPN0RREEDIKOQBJEHIMSPBI7C______:Lcom/android/camera/one/v2/core/ResponseListener;

.field private final callback:Lcom/android/camera/camcorder/CamcorderCaptureSessionCallback;

.field private final camcorderVideoEncoderProfile:Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;

.field private final cameraCaptureSessionCreator:Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreator",
            "<TC;>;"
        }
    .end annotation
.end field

.field private cameraCaptureSessionProxy:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field private cameraRepeatingCaptureCallback:Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;

.field private final executor:Ljava/util/concurrent/Executor;

.field private final fileNamer:Lcom/android/camera/storage/FileNamer;

.field private futurePreparedMediaRecorder:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/camcorder/media/PreparedMediaRecorder;",
            ">;"
        }
    .end annotation
.end field

.field private futureResetSessionResult:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final lifetime:Lcom/google/android/apps/camera/async/Lifetime;

.field private final lock:Ljava/lang/Object;

.field private final mediaRecorderPauseResumer:Lcom/android/camera/camcorder/media/MediaRecorderPauseResumer;

.field private final mediaRecorderPreparer:Lcom/android/camera/camcorder/media/MediaRecorderPreparer;

.field private final mediaRecorderStarter:Lcom/android/camera/camcorder/media/MediaRecorderStarter;

.field private final mediaRecorderStopper:Lcom/android/camera/camcorder/media/MediaRecorderStopper;

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

.field private final previewStarter:Lcom/android/camera/camcorder/camera/PreviewStarter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/camcorder/camera/PreviewStarter",
            "<TC;>;"
        }
    .end annotation
.end field

.field private final previewSurface:Landroid/view/Surface;

.field private final recordingRequestStarter:Lcom/android/camera/camcorder/camera/RecordingRequestStarter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/camcorder/camera/RecordingRequestStarter",
            "<TC;>;"
        }
    .end annotation
.end field

.field private state:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;

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
    .line 56
    const-string v0, "CdrCaptureSesImpl"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/camcorder/CamcorderCaptureSessionCallback;Lcom/android/camera/camcorder/camera/AfScanner;Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreator;Ljava/util/concurrent/Executor;Lcom/android/camera/storage/FileNamer;Lcom/android/camera/camcorder/media/MediaRecorderPreparer;Lcom/android/camera/camcorder/media/MediaRecorderStarter;Lcom/android/camera/camcorder/media/MediaRecorderStopper;Lcom/android/camera/camcorder/media/MediaRecorderPauseResumer;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/common/base/Optional;Lcom/android/camera/camcorder/camera/PreviewStarter;Lcom/android/camera/camcorder/camera/RecordingRequestStarter;Landroid/view/Surface;Lcom/google/android/apps/camera/async/Updatable;Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;Lcom/android/camera/camcorder/media/PreparedMediaRecorder;Lcom/android/camera/one/v2/core/ResponseListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/camcorder/CamcorderCaptureSessionCallback;",
            "Lcom/android/camera/camcorder/camera/AfScanner",
            "<TC;>;",
            "Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;",
            "Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreator",
            "<TC;>;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/camera/storage/FileNamer;",
            "Lcom/android/camera/camcorder/media/MediaRecorderPreparer;",
            "Lcom/android/camera/camcorder/media/MediaRecorderStarter;",
            "Lcom/android/camera/camcorder/media/MediaRecorderStopper;",
            "Lcom/android/camera/camcorder/media/MediaRecorderPauseResumer;",
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
            "Lcom/android/camera/camcorder/camera/RecordingRequestStarter",
            "<TC;>;",
            "Landroid/view/Surface;",
            "Lcom/google/android/apps/camera/async/Updatable",
            "<",
            "Landroid/graphics/Rect;",
            ">;TC;",
            "Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;",
            "Lcom/android/camera/camcorder/media/PreparedMediaRecorder;",
            "Lcom/android/camera/one/v2/core/ResponseListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v1, 0x0

    .line 91
    invoke-static {v1}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->futureResetSessionResult:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 106
    sget-object v1, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;->READY:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;

    iput-object v1, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->state:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;

    .line 109
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->lock:Ljava/lang/Object;

    .line 110
    new-instance v1, Lcom/google/android/apps/camera/async/Lifetime;

    invoke-direct {v1}, Lcom/google/android/apps/camera/async/Lifetime;-><init>()V

    iput-object v1, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->lifetime:Lcom/google/android/apps/camera/async/Lifetime;

    .line 138
    iput-object p1, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->callback:Lcom/android/camera/camcorder/CamcorderCaptureSessionCallback;

    .line 139
    iput-object p2, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->afScanner:Lcom/android/camera/camcorder/camera/AfScanner;

    .line 140
    iput-object p3, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->camcorderVideoEncoderProfile:Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;

    .line 141
    iput-object p4, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->cameraCaptureSessionCreator:Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreator;

    .line 142
    iput-object p5, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->executor:Ljava/util/concurrent/Executor;

    .line 143
    iput-object p6, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->fileNamer:Lcom/android/camera/storage/FileNamer;

    .line 144
    iput-object p7, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->mediaRecorderPreparer:Lcom/android/camera/camcorder/media/MediaRecorderPreparer;

    .line 145
    iput-object p8, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->mediaRecorderStarter:Lcom/android/camera/camcorder/media/MediaRecorderStarter;

    .line 146
    iput-object p9, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->mediaRecorderStopper:Lcom/android/camera/camcorder/media/MediaRecorderStopper;

    .line 147
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->mediaRecorderPauseResumer:Lcom/android/camera/camcorder/media/MediaRecorderPauseResumer;

    .line 148
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->observableAeExposureCompensation:Lcom/google/android/apps/camera/async/Observable;

    .line 149
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->observableTorchSwitch:Lcom/google/android/apps/camera/async/Observable;

    .line 150
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->observableVideoOrientation:Lcom/google/android/apps/camera/async/Observable;

    .line 151
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->observableActiveFocusPoint:Lcom/google/android/apps/camera/async/Observable;

    .line 152
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->observableZoomedCropRegion:Lcom/google/android/apps/camera/async/Observable;

    .line 153
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->optionalSnapshotTaker:Lcom/google/common/base/Optional;

    .line 154
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->previewStarter:Lcom/android/camera/camcorder/camera/PreviewStarter;

    .line 155
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->recordingRequestStarter:Lcom/android/camera/camcorder/camera/RecordingRequestStarter;

    .line 156
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->previewSurface:Landroid/view/Surface;

    .line 157
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->updatableScalerCropRegion:Lcom/google/android/apps/camera/async/Updatable;

    .line 158
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->cameraCaptureSessionProxy:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;

    .line 159
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->cameraRepeatingCaptureCallback:Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;

    .line 160
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->afStateResponseListener$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM2TBKDTJ6UORLECNK2PIJEHGN8PAICLPN0RREEDIKOQBJEHIMSPBI7C______:Lcom/android/camera/one/v2/core/ResponseListener;

    .line 162
    invoke-static/range {p24 .. p24}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->futurePreparedMediaRecorder:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 164
    new-instance v1, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$1;

    invoke-direct {v1, p0}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$1;-><init>(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)V

    .line 183
    iget-object v2, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->lifetime:Lcom/google/android/apps/camera/async/Lifetime;

    new-instance v3, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$2;

    invoke-direct {v3, v1}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$2;-><init>(Ljava/lang/Runnable;)V

    move-object/from16 v0, p11

    invoke-interface {v0, v3, p5}, Lcom/google/android/apps/camera/async/Observable;->addCallback(Lcom/google/android/apps/camera/async/Updatable;Ljava/util/concurrent/Executor;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 197
    iget-object v2, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->lifetime:Lcom/google/android/apps/camera/async/Lifetime;

    new-instance v3, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$3;

    invoke-direct {v3, v1}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$3;-><init>(Ljava/lang/Runnable;)V

    move-object/from16 v0, p12

    invoke-interface {v0, v3, p5}, Lcom/google/android/apps/camera/async/Observable;->addCallback(Lcom/google/android/apps/camera/async/Updatable;Ljava/util/concurrent/Executor;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 211
    iget-object v2, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->lifetime:Lcom/google/android/apps/camera/async/Lifetime;

    iget-object v3, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->observableTorchSwitch:Lcom/google/android/apps/camera/async/Observable;

    new-instance v4, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$4;

    invoke-direct {v4, v1}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$4;-><init>(Ljava/lang/Runnable;)V

    iget-object v5, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v3, v4, v5}, Lcom/google/android/apps/camera/async/Observable;->addCallback(Lcom/google/android/apps/camera/async/Updatable;Ljava/util/concurrent/Executor;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 225
    iget-object v2, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->lifetime:Lcom/google/android/apps/camera/async/Lifetime;

    new-instance v3, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$5;

    invoke-direct {v3, p0}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$5;-><init>(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)V

    iget-object v4, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->executor:Ljava/util/concurrent/Executor;

    move-object/from16 v0, p15

    invoke-interface {v0, v3, v4}, Lcom/google/android/apps/camera/async/Observable;->addCallback(Lcom/google/android/apps/camera/async/Updatable;Ljava/util/concurrent/Executor;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 239
    iget-object v2, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->lifetime:Lcom/google/android/apps/camera/async/Lifetime;

    new-instance v3, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$6;

    invoke-direct {v3, v1}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$6;-><init>(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->executor:Ljava/util/concurrent/Executor;

    move-object/from16 v0, p16

    invoke-interface {v0, v3, v1}, Lcom/google/android/apps/camera/async/Observable;->addCallback(Lcom/google/android/apps/camera/async/Updatable;Ljava/util/concurrent/Executor;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 252
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->state:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Lcom/android/camera/camcorder/camera/RecordingRequestStarter;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->recordingRequestStarter:Lcom/android/camera/camcorder/camera/RecordingRequestStarter;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;)Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->state:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->activeRecordingSession:Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;)Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->activeRecordingSession:Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->camcorderVideoEncoderProfile:Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Lcom/google/android/apps/camera/async/Observable;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->observableAeExposureCompensation:Lcom/google/android/apps/camera/async/Observable;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Lcom/google/android/apps/camera/async/Observable;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->observableTorchSwitch:Lcom/google/android/apps/camera/async/Observable;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Lcom/google/android/apps/camera/async/Observable;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->observableZoomedCropRegion:Lcom/google/android/apps/camera/async/Observable;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Lcom/google/common/base/Optional;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->optionalSnapshotTaker:Lcom/google/common/base/Optional;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Lcom/android/camera/storage/FileNamer;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->fileNamer:Lcom/android/camera/storage/FileNamer;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Lcom/android/camera/camcorder/media/MediaRecorderStopper;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->mediaRecorderStopper:Lcom/android/camera/camcorder/media/MediaRecorderStopper;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Lcom/android/camera/camcorder/media/MediaRecorderPauseResumer;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->mediaRecorderPauseResumer:Lcom/android/camera/camcorder/media/MediaRecorderPauseResumer;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Lcom/google/android/apps/camera/async/Updatable;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->updatableScalerCropRegion:Lcom/google/android/apps/camera/async/Updatable;

    return-object v0
.end method

.method static synthetic access$2200$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15THM2RB3DTP68PBI5T1M2RB3DTP68PBI8DGN0T3LE9IL6PBJEDKMURI9DLO6OEP99HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM2TBKDTJ6UORLECNK2PIJEHGN8PAICLPN0RREEDIKOQBJEHIMSPBI7C______(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Lcom/android/camera/one/v2/core/ResponseListener;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->afStateResponseListener$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM2TBKDTJ6UORLECNK2PIJEHGN8PAICLPN0RREEDIKOQBJEHIMSPBI7C______:Lcom/android/camera/one/v2/core/ResponseListener;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreator;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->cameraCaptureSessionCreator:Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreator;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->cameraCaptureSessionProxy:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;)Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->cameraCaptureSessionProxy:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Landroid/view/Surface;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->previewSurface:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->cameraRepeatingCaptureCallback:Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;)Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->cameraRepeatingCaptureCallback:Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Lcom/android/camera/camcorder/camera/PreviewStarter;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->previewStarter:Lcom/android/camera/camcorder/camera/PreviewStarter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Lcom/android/camera/camcorder/media/MediaRecorderStarter;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->mediaRecorderStarter:Lcom/android/camera/camcorder/media/MediaRecorderStarter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Lcom/google/android/apps/camera/async/Observable;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->observableActiveFocusPoint:Lcom/google/android/apps/camera/async/Observable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)Lcom/android/camera/camcorder/camera/AfScanner;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->afScanner:Lcom/android/camera/camcorder/camera/AfScanner;

    return-object v0
.end method

.method private final getPreparedMediaRecorder()Lcom/android/camera/camcorder/media/PreparedMediaRecorder;
    .locals 6

    .prologue
    .line 306
    iget-object v2, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 307
    const/4 v1, 0x0

    .line 309
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->futurePreparedMediaRecorder:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/camcorder/media/PreparedMediaRecorder;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    :goto_0
    :try_start_1
    monitor-exit v2

    return-object v0

    .line 310
    :catch_0
    move-exception v0

    .line 311
    :goto_1
    sget-object v3, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x29

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "fail to get futurePreparedMediaRecorder: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 314
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 310
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private final resetSession()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 499
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v1

    .line 500
    iget-object v2, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 503
    :try_start_0
    iput-object v1, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->futureResetSessionResult:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 506
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->mediaRecorderPreparer:Lcom/android/camera/camcorder/media/MediaRecorderPreparer;

    invoke-interface {v0}, Lcom/android/camera/camcorder/media/MediaRecorderPreparer;->prepare()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->futurePreparedMediaRecorder:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 507
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 510
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->mediaRecorderPreparer:Lcom/android/camera/camcorder/media/MediaRecorderPreparer;

    invoke-interface {v0}, Lcom/android/camera/camcorder/media/MediaRecorderPreparer;->usePersistentSurface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->cameraCaptureSessionProxy:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 548
    :goto_0
    new-instance v2, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$11;

    invoke-direct {v2, p0}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$11;-><init>(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)V

    .line 549
    invoke-static {v0, v2}, Lcom/google/common/util/concurrent/Futures;->transformAsync(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 560
    new-instance v2, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$12;

    invoke-direct {v2, p0, v1}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$12;-><init>(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;Lcom/google/common/util/concurrent/SettableFuture;)V

    invoke-static {v0, v2}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 575
    return-object v1

    .line 507
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 514
    :cond_0
    iget-object v2, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 516
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->futurePreparedMediaRecorder:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v3, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$10;

    invoke-direct {v3, p0}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$10;-><init>(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)V

    invoke-static {v0, v3}, Lcom/google/common/util/concurrent/Futures;->transformAsync(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 544
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method


# virtual methods
.method public final close()V
    .locals 5

    .prologue
    .line 256
    iget-object v1, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->state:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;

    sget-object v2, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;->CLOSED:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;

    invoke-virtual {v0, v2}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    sget-object v0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->TAG:Ljava/lang/String;

    const-string v2, "Session has been closed"

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    monitor-exit v1

    .line 296
    :goto_0
    return-void

    .line 262
    :cond_0
    sget-object v0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;->CLOSED:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;

    iput-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->state:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;

    .line 264
    sget-object v0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->TAG:Ljava/lang/String;

    const-string v2, "close"

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->activeRecordingSession:Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;

    if-eqz v0, :cond_3

    .line 268
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->activeRecordingSession:Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;

    invoke-virtual {v0}, Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;->shutdown()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 281
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->cameraCaptureSessionProxy:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;

    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;->close()V

    .line 283
    invoke-direct {p0}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->getPreparedMediaRecorder()Lcom/android/camera/camcorder/media/PreparedMediaRecorder;

    move-result-object v0

    .line 284
    if-eqz v0, :cond_2

    .line 285
    invoke-virtual {v0}, Lcom/android/camera/camcorder/media/PreparedMediaRecorder;->close()V

    .line 289
    :cond_2
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->callback:Lcom/android/camera/camcorder/CamcorderCaptureSessionCallback;

    invoke-interface {v0}, Lcom/android/camera/camcorder/CamcorderCaptureSessionCallback;->onCaptureSessionClosed()V

    .line 292
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->mediaRecorderStarter:Lcom/android/camera/camcorder/media/MediaRecorderStarter;

    invoke-virtual {v0}, Lcom/android/camera/camcorder/media/MediaRecorderStarter;->close()V

    .line 295
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->lifetime:Lcom/google/android/apps/camera/async/Lifetime;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/Lifetime;->close()V

    .line 296
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 270
    :cond_3
    :try_start_1
    invoke-direct {p0}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->getPreparedMediaRecorder()Lcom/android/camera/camcorder/media/PreparedMediaRecorder;

    move-result-object v0

    .line 271
    if-eqz v0, :cond_1

    .line 272
    invoke-virtual {v0}, Lcom/android/camera/camcorder/media/PreparedMediaRecorder;->getRecordingFile()Ljava/io/File;

    move-result-object v0

    .line 274
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_1

    .line 275
    sget-object v2, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x21

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Failed to delete recording file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public final onMaxDurationReached()V
    .locals 2

    .prologue
    .line 580
    iget-object v1, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 581
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->activeRecordingSession:Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->activeRecordingSession:Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;

    invoke-virtual {v0}, Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;->onMaxDurationReached()V

    .line 584
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onMaxFileSizeReached()V
    .locals 2

    .prologue
    .line 589
    iget-object v1, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 590
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->activeRecordingSession:Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->activeRecordingSession:Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;

    invoke-virtual {v0}, Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;->onMaxFileSizeReached()V

    .line 593
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onRecordingSessionClosed()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 439
    iget-object v1, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 441
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->state:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;

    sget-object v2, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;->CLOSED:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;

    invoke-virtual {v0, v2}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    monitor-exit v1

    .line 453
    :goto_0
    return-object v0

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->state:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;

    sget-object v2, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;->RECORDING:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;

    invoke-virtual {v0, v2}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 446
    sget-object v0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;->READY:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;

    iput-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->state:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;

    .line 449
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->activeRecordingSession:Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 450
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->activeRecordingSession:Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;

    .line 453
    invoke-direct {p0}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->resetSession()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 454
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 449
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final startRecording(Lcom/android/camera/camcorder/CamcorderRecordingSessionCallback;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/camcorder/CamcorderRecordingSessionCallback;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/camcorder/CamcorderRecordingSession;",
            ">;"
        }
    .end annotation

    .prologue
    .line 320
    iget-object v1, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 321
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->state:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;

    sget-object v2, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;->READY:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;

    invoke-virtual {v0, v2}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 322
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v2, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->state:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x22

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "CamcorderCaptureSessionImpl state="

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

    .line 367
    :goto_0
    return-object v0

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->state:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;

    sget-object v2, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;->READY:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;

    invoke-virtual {v0, v2}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 327
    sget-object v0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;->STARTING_RECORD:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;

    iput-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->state:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;

    .line 330
    invoke-direct {p0}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->getPreparedMediaRecorder()Lcom/android/camera/camcorder/media/PreparedMediaRecorder;

    move-result-object v2

    .line 331
    invoke-static {v2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    invoke-virtual {v2}, Lcom/android/camera/camcorder/media/PreparedMediaRecorder;->getVideoOrientation()I

    move-result v3

    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->observableVideoOrientation:Lcom/google/android/apps/camera/async/Observable;

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v3, v0, :cond_2

    .line 333
    invoke-virtual {v2}, Lcom/android/camera/camcorder/media/PreparedMediaRecorder;->getRecordingFile()Ljava/io/File;

    move-result-object v0

    .line 334
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_1

    .line 335
    sget-object v2, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x21

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Failed to delete recording file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->resetSession()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 340
    :cond_2
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->futureResetSessionResult:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v2, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->futurePreparedMediaRecorder:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v3, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$7;

    invoke-direct {v3, p0}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$7;-><init>(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)V

    invoke-static {v0, v2, v3}, Lcom/google/android/apps/camera/async/Futures2;->joinAll(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/apps/camera/async/Futures2$AsyncFunction2;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 367
    iget-object v2, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->futurePreparedMediaRecorder:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v3, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$8;

    invoke-direct {v3, p0, p1}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$8;-><init>(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;Lcom/android/camera/camcorder/CamcorderRecordingSessionCallback;)V

    invoke-static {v0, v2, v3}, Lcom/google/android/apps/camera/async/Futures2;->joinAll(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/apps/camera/async/Futures2$AsyncFunction2;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 434
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final triggerFocusAndMeterAtPoint(Lcom/google/android/apps/camera/aaa/FocusPoint;)V
    .locals 8

    .prologue
    .line 459
    iget-object v7, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->lock:Ljava/lang/Object;

    monitor-enter v7

    .line 460
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->state:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;

    sget-object v1, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;->READY:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;

    invoke-virtual {v0, v1}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 461
    sget-object v0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->state:Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$State;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x32

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Ignore observableActiveFocusPoint callback: state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    monitor-exit v7

    .line 492
    :goto_0
    return-void

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->afScanner:Lcom/android/camera/camcorder/camera/AfScanner;

    iget-object v1, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->cameraCaptureSessionProxy:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;

    iget-object v2, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->cameraRepeatingCaptureCallback:Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/view/Surface;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;->previewSurface:Landroid/view/Surface;

    aput-object v6, v4, v5

    .line 470
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    new-instance v6, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$9;

    invoke-direct {v6, p0}, Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl$9;-><init>(Lcom/android/camera/camcorder/CamcorderCaptureSessionImpl;)V

    move-object v4, p1

    .line 465
    invoke-interface/range {v0 .. v6}, Lcom/android/camera/camcorder/camera/AfScanner;->triggerAfScan(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;ZLcom/google/android/apps/camera/aaa/FocusPoint;Ljava/util/List;Ljava/lang/Runnable;)V

    .line 492
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
