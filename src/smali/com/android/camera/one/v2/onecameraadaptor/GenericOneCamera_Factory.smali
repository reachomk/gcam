.class public final Lcom/android/camera/one/v2/onecameraadaptor/GenericOneCamera_Factory;
.super Ljava/lang/Object;
.source "GenericOneCamera_Factory.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider;"
    }
.end annotation


# instance fields
.field private final afStateMonitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/aaa/AfStateMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private final autoFlashStateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final autoHdrPlusDecisionProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;",
            ">;>;"
        }
    .end annotation
.end field

.field private final cameraDeviceProxyFutureProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;",
            ">;>;"
        }
    .end annotation
.end field

.field private final cameraStarterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/libraries/smartburst/utils/SparseArrays;",
            ">;"
        }
    .end annotation
.end field

.field private final captureStateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/photo/ImageCaptureStateTracker$CaptureState;",
            ">;>;"
        }
    .end annotation
.end field

.field private final facesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/google/android/libraries/smartburst/utils/handles/Handles;",
            ">;>;"
        }
    .end annotation
.end field

.field private final lifetimeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Lifetime;",
            ">;"
        }
    .end annotation
.end field

.field private final mainThreadProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/MainThread;",
            ">;"
        }
    .end annotation
.end field

.field private final meteringDataProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/google/common/logging/nano/eventprotos$MeteringData;",
            ">;>;"
        }
    .end annotation
.end field

.field private final pictureTakerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/photo/PictureTaker;",
            ">;"
        }
    .end annotation
.end field

.field private final shotFailureHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/error/ShotFailureHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final touchToFocusProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/autofocus/TouchToFocus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Lifetime;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/MainThread;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/photo/PictureTaker;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/error/ShotFailureHandler;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/autofocus/TouchToFocus;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/photo/ImageCaptureStateTracker$CaptureState;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/libraries/smartburst/utils/SparseArrays;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/google/android/libraries/smartburst/utils/handles/Handles;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/google/common/logging/nano/eventprotos$MeteringData;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/aaa/AfStateMonitor;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/android/camera/one/v2/onecameraadaptor/GenericOneCamera_Factory;->lifetimeProvider:Ljavax/inject/Provider;

    .line 66
    iput-object p2, p0, Lcom/android/camera/one/v2/onecameraadaptor/GenericOneCamera_Factory;->mainThreadProvider:Ljavax/inject/Provider;

    .line 68
    iput-object p3, p0, Lcom/android/camera/one/v2/onecameraadaptor/GenericOneCamera_Factory;->pictureTakerProvider:Ljavax/inject/Provider;

    .line 70
    iput-object p4, p0, Lcom/android/camera/one/v2/onecameraadaptor/GenericOneCamera_Factory;->shotFailureHandlerProvider:Ljavax/inject/Provider;

    .line 72
    iput-object p5, p0, Lcom/android/camera/one/v2/onecameraadaptor/GenericOneCamera_Factory;->touchToFocusProvider:Ljavax/inject/Provider;

    .line 74
    iput-object p6, p0, Lcom/android/camera/one/v2/onecameraadaptor/GenericOneCamera_Factory;->cameraDeviceProxyFutureProvider:Ljavax/inject/Provider;

    .line 76
    iput-object p7, p0, Lcom/android/camera/one/v2/onecameraadaptor/GenericOneCamera_Factory;->autoHdrPlusDecisionProvider:Ljavax/inject/Provider;

    .line 78
    iput-object p8, p0, Lcom/android/camera/one/v2/onecameraadaptor/GenericOneCamera_Factory;->captureStateProvider:Ljavax/inject/Provider;

    .line 80
    iput-object p9, p0, Lcom/android/camera/one/v2/onecameraadaptor/GenericOneCamera_Factory;->cameraStarterProvider:Ljavax/inject/Provider;

    .line 82
    iput-object p10, p0, Lcom/android/camera/one/v2/onecameraadaptor/GenericOneCamera_Factory;->facesProvider:Ljavax/inject/Provider;

    .line 84
    iput-object p11, p0, Lcom/android/camera/one/v2/onecameraadaptor/GenericOneCamera_Factory;->meteringDataProvider:Ljavax/inject/Provider;

    .line 86
    iput-object p12, p0, Lcom/android/camera/one/v2/onecameraadaptor/GenericOneCamera_Factory;->afStateMonitorProvider:Ljavax/inject/Provider;

    .line 88
    iput-object p13, p0, Lcom/android/camera/one/v2/onecameraadaptor/GenericOneCamera_Factory;->autoFlashStateProvider:Ljavax/inject/Provider;

    .line 89
    return-void
.end method

.method public static create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR55668OB7CTIN4BR9DPQ6ASJEC5M2UHJ1CDQ6USJP7C______(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Lifetime;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/MainThread;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/photo/PictureTaker;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/error/ShotFailureHandler;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/autofocus/TouchToFocus;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/photo/ImageCaptureStateTracker$CaptureState;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/libraries/smartburst/utils/SparseArrays;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/google/android/libraries/smartburst/utils/handles/Handles;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/google/common/logging/nano/eventprotos$MeteringData;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/aaa/AfStateMonitor;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;)",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 123
    new-instance v0, Lcom/android/camera/one/v2/onecameraadaptor/GenericOneCamera_Factory;

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Lcom/android/camera/one/v2/onecameraadaptor/GenericOneCamera_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 14

    .prologue
    .line 21
    .line 1093
    new-instance v0, Lcom/android/camera/one/v2/onecameraadaptor/GenericOneCamera;

    iget-object v1, p0, Lcom/android/camera/one/v2/onecameraadaptor/GenericOneCamera_Factory;->lifetimeProvider:Ljavax/inject/Provider;

    .line 1094
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/async/Lifetime;

    iget-object v2, p0, Lcom/android/camera/one/v2/onecameraadaptor/GenericOneCamera_Factory;->mainThreadProvider:Ljavax/inject/Provider;

    .line 1095
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/camera/async/MainThread;

    iget-object v3, p0, Lcom/android/camera/one/v2/onecameraadaptor/GenericOneCamera_Factory;->pictureTakerProvider:Ljavax/inject/Provider;

    .line 1096
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/one/v2/photo/PictureTaker;

    iget-object v4, p0, Lcom/android/camera/one/v2/onecameraadaptor/GenericOneCamera_Factory;->shotFailureHandlerProvider:Ljavax/inject/Provider;

    .line 1097
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/error/ShotFailureHandler;

    iget-object v5, p0, Lcom/android/camera/one/v2/onecameraadaptor/GenericOneCamera_Factory;->touchToFocusProvider:Ljavax/inject/Provider;

    .line 1098
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/one/v2/autofocus/TouchToFocus;

    iget-object v6, p0, Lcom/android/camera/one/v2/onecameraadaptor/GenericOneCamera_Factory;->cameraDeviceProxyFutureProvider:Ljavax/inject/Provider;

    .line 1099
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v7, p0, Lcom/android/camera/one/v2/onecameraadaptor/GenericOneCamera_Factory;->autoHdrPlusDecisionProvider:Ljavax/inject/Provider;

    .line 1100
    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/apps/camera/async/Observable;

    iget-object v8, p0, Lcom/android/camera/one/v2/onecameraadaptor/GenericOneCamera_Factory;->captureStateProvider:Ljavax/inject/Provider;

    .line 1101
    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/apps/camera/async/Observable;

    iget-object v9, p0, Lcom/android/camera/one/v2/onecameraadaptor/GenericOneCamera_Factory;->cameraStarterProvider:Ljavax/inject/Provider;

    .line 1102
    invoke-interface {v9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/libraries/smartburst/utils/SparseArrays;

    iget-object v10, p0, Lcom/android/camera/one/v2/onecameraadaptor/GenericOneCamera_Factory;->facesProvider:Ljavax/inject/Provider;

    .line 1103
    invoke-interface {v10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/apps/camera/async/Observable;

    iget-object v11, p0, Lcom/android/camera/one/v2/onecameraadaptor/GenericOneCamera_Factory;->meteringDataProvider:Ljavax/inject/Provider;

    .line 1104
    invoke-interface {v11}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/apps/camera/async/Observable;

    iget-object v12, p0, Lcom/android/camera/one/v2/onecameraadaptor/GenericOneCamera_Factory;->afStateMonitorProvider:Ljavax/inject/Provider;

    .line 1105
    invoke-interface {v12}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/apps/camera/aaa/AfStateMonitor;

    iget-object v13, p0, Lcom/android/camera/one/v2/onecameraadaptor/GenericOneCamera_Factory;->autoFlashStateProvider:Ljavax/inject/Provider;

    .line 1106
    invoke-interface {v13}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/apps/camera/async/Observable;

    invoke-direct/range {v0 .. v13}, Lcom/android/camera/one/v2/onecameraadaptor/GenericOneCamera;-><init>(Lcom/google/android/apps/camera/async/Lifetime;Lcom/google/android/apps/camera/async/MainThread;Lcom/android/camera/one/v2/photo/PictureTaker;Lcom/android/camera/error/ShotFailureHandler;Lcom/android/camera/one/v2/autofocus/TouchToFocus;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/libraries/smartburst/utils/SparseArrays;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/aaa/AfStateMonitor;Lcom/google/android/apps/camera/async/Observable;)V

    .line 21
    return-object v0
.end method
