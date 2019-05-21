.class public final Lcom/android/camera/one/v2/onecameraadaptor/GenericOneCamera;
.super Ljava/lang/Object;
.source "GenericOneCamera.java"

# interfaces
.implements Lcom/android/camera/one/OneCamera;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final cameraDeviceProxyFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraStarter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMOQB6CLHNIORCCKNK6OBDCLP62KRKC5P78PBI7C______:Lcom/google/android/libraries/smartburst/utils/SparseArrays;

.field private final closeListener:Lcom/google/android/apps/camera/async/SafeCloseable;

.field private final oneCameraState$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABQFDPIK6OBDCLP62KRKC5Q6AEO_:Lcom/google/android/gms/internal/zzaih;

.field private final pictureTaker:Lcom/android/camera/one/v2/onecameraadaptor/OneCameraPictureTaker;

.field private final touchToFocus:Lcom/android/camera/one/v2/autofocus/TouchToFocus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "GenericOneCamera"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/one/v2/onecameraadaptor/GenericOneCamera;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/camera/async/Lifetime;Lcom/google/android/apps/camera/async/MainThread;Lcom/android/camera/one/v2/photo/PictureTaker;Lcom/android/camera/error/ShotFailureHandler;Lcom/android/camera/one/v2/autofocus/TouchToFocus;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/libraries/smartburst/utils/SparseArrays;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/aaa/AfStateMonitor;Lcom/google/android/apps/camera/async/Observable;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/async/Lifetime;",
            "Lcom/google/android/apps/camera/async/MainThread;",
            "Lcom/android/camera/one/v2/photo/PictureTaker;",
            "Lcom/android/camera/error/ShotFailureHandler;",
            "Lcom/android/camera/one/v2/autofocus/TouchToFocus;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;",
            ">;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;",
            ">;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/photo/ImageCaptureStateTracker$CaptureState;",
            ">;",
            "Lcom/google/android/libraries/smartburst/utils/SparseArrays;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/google/android/libraries/smartburst/utils/handles/Handles;",
            ">;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/google/common/logging/nano/eventprotos$MeteringData;",
            ">;",
            "Lcom/google/android/apps/camera/aaa/AfStateMonitor;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/android/camera/one/v2/onecameraadaptor/GenericOneCamera;->closeListener:Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 65
    iput-object p5, p0, Lcom/android/camera/one/v2/onecameraadaptor/GenericOneCamera;->touchToFocus:Lcom/android/camera/one/v2/autofocus/TouchToFocus;

    .line 66
    iput-object p6, p0, Lcom/android/camera/one/v2/onecameraadaptor/GenericOneCamera;->cameraDeviceProxyFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 67
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/android/camera/one/v2/onecameraadaptor/GenericOneCamera;->cameraStarter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMOQB6CLHNIORCCKNK6OBDCLP62KRKC5P78PBI7C______:Lcom/google/android/libraries/smartburst/utils/SparseArrays;

    .line 68
    new-instance v1, Lcom/android/camera/one/v2/onecameraadaptor/OneCameraPictureTaker;

    invoke-direct {v1, p3, p2, p4}, Lcom/android/camera/one/v2/onecameraadaptor/OneCameraPictureTaker;-><init>(Lcom/android/camera/one/v2/photo/PictureTaker;Lcom/google/android/apps/camera/async/MainThread;Lcom/android/camera/error/ShotFailureHandler;)V

    iput-object v1, p0, Lcom/android/camera/one/v2/onecameraadaptor/GenericOneCamera;->pictureTaker:Lcom/android/camera/one/v2/onecameraadaptor/OneCameraPictureTaker;

    .line 69
    new-instance v1, Lcom/google/android/gms/internal/zzaih;

    .line 73
    invoke-virtual/range {p12 .. p12}, Lcom/google/android/apps/camera/aaa/AfStateMonitor;->getAfStateTransition()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v4

    move-object v2, p3

    move-object/from16 v3, p8

    move-object/from16 v5, p7

    move-object/from16 v6, p10

    move-object/from16 v7, p11

    move-object/from16 v8, p13

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/zzaih;-><init>(Lcom/android/camera/one/v2/photo/PictureTaker;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;)V

    iput-object v1, p0, Lcom/android/camera/one/v2/onecameraadaptor/GenericOneCamera;->oneCameraState$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABQFDPIK6OBDCLP62KRKC5Q6AEO_:Lcom/google/android/gms/internal/zzaih;

    .line 78
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/android/camera/one/v2/onecameraadaptor/GenericOneCamera;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final close()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/camera/one/v2/onecameraadaptor/GenericOneCamera;->closeListener:Lcom/google/android/apps/camera/async/SafeCloseable;

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/SafeCloseable;->close()V

    .line 104
    iget-object v0, p0, Lcom/android/camera/one/v2/onecameraadaptor/GenericOneCamera;->cameraDeviceProxyFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v1, Lcom/android/camera/one/v2/onecameraadaptor/GenericOneCamera$1;

    invoke-direct {v1}, Lcom/android/camera/one/v2/onecameraadaptor/GenericOneCamera$1;-><init>()V

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 117
    return-void
.end method

.method public final getOneCameraState$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55T7MSPA3C5MMASJ1ADQ62T357C______()Lcom/google/android/gms/internal/zzaih;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/one/v2/onecameraadaptor/GenericOneCamera;->oneCameraState$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABQFDPIK6OBDCLP62KRKC5Q6AEO_:Lcom/google/android/gms/internal/zzaih;

    return-object v0
.end method

.method public final start()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/camera/one/v2/onecameraadaptor/GenericOneCamera;->cameraStarter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMOQB6CLHNIORCCKNK6OBDCLP62KRKC5P78PBI7C______:Lcom/google/android/libraries/smartburst/utils/SparseArrays;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/utils/SparseArrays;->start()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->nonCancellationPropagating(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final takePicture$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9F9TN6AGR1DLIN4O94A1K6UT3F8DGN0T3LE9IL0OBIC5MMAT35E9PJMJ33DTMIUOBECHP6UQB45THM2RB5E9GIUSR5EDPMIRRE5T1M2S3KELP6AKR5EDPMIRRE7CKKOORFDKNMERRFCTM6ABR3DTMMQRRE5TQN8QBC5THMURJ3ELP74PBEEGNKOQBJEHIMSOB2DHIKCTBKELP6AEO_(Lcom/google/android/gms/googlehelp/internal/common/zzd;Lcom/android/camera/session/StackableSession;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/googlehelp/internal/common/zzd;",
            "Lcom/android/camera/session/StackableSession;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/camera/one/v2/onecameraadaptor/GenericOneCamera;->pictureTaker:Lcom/android/camera/one/v2/onecameraadaptor/OneCameraPictureTaker;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/one/v2/onecameraadaptor/OneCameraPictureTaker;->takePicture$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9F9TN6AGR1DLIN4O94A1K6UT3F8DGN0T3LE9IL0OBIC5MMAT35E9PJMJ33DTMIUOBECHP6UQB45THM2RB5E9GIUSR5EDPMIRRE5T1M2S3KELP6AKR5EDPMIRRE7CKKOORFDKNMERRFCTM6ABR3DTMMQRRE5TQN8QBC5THMURJ3ELP74PBEEGNKOQBJEHIMSOB2DHIKCTBKELP6AEO_(Lcom/google/android/gms/googlehelp/internal/common/zzd;Lcom/android/camera/session/StackableSession;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final triggerFocusAndMeterAtPoint(Lcom/google/android/apps/camera/aaa/FocusPoint;)V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/camera/one/v2/onecameraadaptor/GenericOneCamera;->touchToFocus:Lcom/android/camera/one/v2/autofocus/TouchToFocus;

    invoke-interface {v0, p1}, Lcom/android/camera/one/v2/autofocus/TouchToFocus;->triggerFocusAndMeterAtPoint(Lcom/google/android/apps/camera/aaa/FocusPoint;)V

    .line 83
    return-void
.end method
