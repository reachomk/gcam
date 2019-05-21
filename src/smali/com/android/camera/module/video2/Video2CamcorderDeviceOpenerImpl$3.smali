.class final Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$3;
.super Ljava/lang/Object;
.source "Video2CamcorderDeviceOpenerImpl.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->openCamcorderDevice(Lcom/android/camera/module/video2/Video2ModuleUI;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Lcom/android/camera/camcorder/CamcorderDevice;",
        "Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;

.field private synthetic val$aeLock$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;

.field private synthetic val$bottomBarUISpecProvider:Lcom/android/camera/ui/BottomBarUISpecProvider;

.field private synthetic val$camcorderCharacteristicsOptional:Lcom/google/common/base/Optional;

.field private synthetic val$camcorderFacing:Lcom/android/camera/one/OneCamera$Facing;

.field private synthetic val$camcorderVideoResolution:Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

.field private synthetic val$concurrentStateActiveFocusPoint:Lcom/google/android/apps/camera/async/ConcurrentState;

.field private synthetic val$concurrentStateTorchSwitch:Lcom/google/android/apps/camera/async/ConcurrentState;

.field private synthetic val$concurrentStateZoomRatio:Lcom/google/android/apps/camera/async/ConcurrentState;

.field private synthetic val$orientationCalculator:Lcom/android/camera/module/video2/Video2OrientationCalculator;

.field private synthetic val$previewSize:Lcom/android/camera/util/Size;

.field private synthetic val$selectedCaptureRate:Lcom/android/camera/camcorder/CamcorderCaptureRate;

.field private synthetic val$video2ModuleUI:Lcom/android/camera/module/video2/Video2ModuleUI;


# direct methods
.method constructor <init>(Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/ui/BottomBarUISpecProvider;Lcom/android/camera/camcorder/CamcorderCaptureRate;Lcom/google/common/base/Optional;Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;Lcom/google/android/apps/camera/async/ConcurrentState;Lcom/google/android/apps/camera/async/ConcurrentState;Lcom/google/android/apps/camera/async/ConcurrentState;Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/util/Size;Lcom/android/camera/module/video2/Video2ModuleUI;Lcom/android/camera/module/video2/Video2OrientationCalculator;)V
    .locals 0

    .prologue
    .line 467
    iput-object p1, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$3;->this$0:Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;

    iput-object p2, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$3;->val$aeLock$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;

    iput-object p3, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$3;->val$bottomBarUISpecProvider:Lcom/android/camera/ui/BottomBarUISpecProvider;

    iput-object p4, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$3;->val$selectedCaptureRate:Lcom/android/camera/camcorder/CamcorderCaptureRate;

    iput-object p5, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$3;->val$camcorderCharacteristicsOptional:Lcom/google/common/base/Optional;

    iput-object p6, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$3;->val$camcorderVideoResolution:Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    iput-object p7, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$3;->val$concurrentStateTorchSwitch:Lcom/google/android/apps/camera/async/ConcurrentState;

    iput-object p8, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$3;->val$concurrentStateZoomRatio:Lcom/google/android/apps/camera/async/ConcurrentState;

    iput-object p9, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$3;->val$concurrentStateActiveFocusPoint:Lcom/google/android/apps/camera/async/ConcurrentState;

    iput-object p10, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$3;->val$camcorderFacing:Lcom/android/camera/one/OneCamera$Facing;

    iput-object p11, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$3;->val$previewSize:Lcom/android/camera/util/Size;

    iput-object p12, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$3;->val$video2ModuleUI:Lcom/android/camera/module/video2/Video2ModuleUI;

    iput-object p13, p0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$3;->val$orientationCalculator:Lcom/android/camera/module/video2/Video2OrientationCalculator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 36

    .prologue
    .line 467
    move-object/from16 v6, p1

    check-cast v6, Lcom/android/camera/camcorder/CamcorderDevice;

    .line 1471
    invoke-static {v6}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1472
    new-instance v1, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$3;->val$aeLock$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$3;->val$bottomBarUISpecProvider:Lcom/android/camera/ui/BottomBarUISpecProvider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$3;->val$selectedCaptureRate:Lcom/android/camera/camcorder/CamcorderCaptureRate;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$3;->val$camcorderCharacteristicsOptional:Lcom/google/common/base/Optional;

    .line 1476
    invoke-virtual {v5}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/camcorder/CamcorderCharacteristics;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$3;->val$camcorderVideoResolution:Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$3;->val$concurrentStateTorchSwitch:Lcom/google/android/apps/camera/async/ConcurrentState;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$3;->val$concurrentStateZoomRatio:Lcom/google/android/apps/camera/async/ConcurrentState;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$3;->val$concurrentStateActiveFocusPoint:Lcom/google/android/apps/camera/async/ConcurrentState;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$3;->this$0:Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;

    .line 1482
    invoke-static {v11}, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->access$500(Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;)Lcom/android/camera/error/FatalErrorHandler;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$3;->this$0:Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;

    .line 1483
    invoke-static {v12}, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->access$600(Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;)Lcom/android/camera/ui/focus/FocusController;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$3;->this$0:Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;

    .line 1484
    invoke-static {v13}, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->access$700(Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;)Lcom/android/camera/module/FocusPointNormalizer;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$3;->this$0:Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;

    .line 1485
    invoke-static {v14}, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->access$800(Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;)Ljava/util/concurrent/Executor;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$3;->this$0:Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;

    .line 1486
    invoke-static {v15}, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->access$900$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TMMUP3LDHIIUTJ9CHIMUCHFAPKM8PBF691M2RB3DTP68PBI8HINCQB3CL7N0PBECLP4IRBGDGTIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIUP31EHGIUJ3FCDGMOHJ9DHMN6T3ID5O48OBKC50M8OBGEHIN4EO_(Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;)Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$3;->this$0:Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;

    move-object/from16 v16, v0

    .line 1487
    invoke-static/range {v16 .. v16}, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->access$400(Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;)Lcom/google/android/apps/camera/async/MainThread;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$3;->this$0:Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;

    move-object/from16 v17, v0

    .line 1488
    invoke-static/range {v17 .. v17}, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->access$1000(Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$3;->val$camcorderFacing:Lcom/android/camera/one/OneCamera$Facing;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$3;->this$0:Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;

    move-object/from16 v19, v0

    .line 1490
    invoke-static/range {v19 .. v19}, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->access$1100$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TMMUP3LDHIIUTJ9CHIMUCHFAPKM8PBF691M2RB3DTP68PBI8HINCQB3CL7N0PBECLP4IRBGDGTIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIUTBKD5M2UR31F5NNAT1F9TP6IPBEEHGN8QBFDP6M2RJ1CTIN4EO_(Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;)Lcom/android/camera/burst/OrientationLockController;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$3;->this$0:Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;

    move-object/from16 v20, v0

    .line 1491
    invoke-static/range {v20 .. v20}, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->access$1200(Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;)Lcom/android/camera/data/PhotoItemFactory;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$3;->this$0:Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;

    move-object/from16 v21, v0

    .line 1492
    invoke-static/range {v21 .. v21}, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->access$1300(Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;)Lcom/android/camera/ui/PreviewOverlay;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$3;->this$0:Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;

    move-object/from16 v22, v0

    .line 1493
    invoke-static/range {v22 .. v22}, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->access$1400(Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;)Lcom/android/camera/util/activity/ScreenOnController;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$3;->val$previewSize:Lcom/android/camera/util/Size;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$3;->this$0:Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;

    move-object/from16 v24, v0

    .line 1495
    invoke-static/range {v24 .. v24}, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->access$1500(Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;)Lcom/android/camera/data/VideoItemFactory;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$3;->this$0:Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;

    move-object/from16 v25, v0

    .line 1496
    invoke-static/range {v25 .. v25}, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->access$1600(Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;)Lcom/android/camera/module/video2/Video2FileSaver;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$3;->this$0:Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;

    move-object/from16 v26, v0

    .line 1497
    invoke-static/range {v26 .. v26}, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->access$1700$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TMMUP3LDHIIUTJ9CHIMUCHFAPKM8PBF691M2RB3DTP68PBI8HINCQB3CL7N0PBECLP4IRBGDGTIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIURBFCHQMOP9FEPKM8PBF68NLCQB4CLNJ4J3FCTJMASHR(Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;)Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$3;->val$video2ModuleUI:Lcom/android/camera/module/video2/Video2ModuleUI;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$3;->val$orientationCalculator:Lcom/android/camera/module/video2/Video2OrientationCalculator;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$3;->this$0:Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;

    move-object/from16 v29, v0

    .line 1500
    invoke-static/range {v29 .. v29}, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->access$200(Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;)Lcom/android/camera/module/video2/Video2Settings;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$3;->this$0:Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;

    move-object/from16 v30, v0

    .line 1501
    invoke-static/range {v30 .. v30}, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->access$1800(Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;)Lcom/android/camera/module/video2/Video2Sound;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$3;->this$0:Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;

    move-object/from16 v31, v0

    .line 1502
    invoke-static/range {v31 .. v31}, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->access$1900(Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;)Lcom/android/camera/ui/viewfinder/Viewfinder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$3;->this$0:Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;

    move-object/from16 v32, v0

    .line 1503
    invoke-static/range {v32 .. v32}, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->access$2000(Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;)Lcom/android/camera/data/VideoRotationMetadataLoader;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$3;->this$0:Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;

    move-object/from16 v33, v0

    .line 1504
    invoke-static/range {v33 .. v33}, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->access$300(Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;)Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$3;->this$0:Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;

    move-object/from16 v34, v0

    .line 1505
    invoke-static/range {v34 .. v34}, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->access$2100(Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;)Lcom/google/android/apps/camera/evcomp/EvCompViewController;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl$3;->this$0:Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;

    move-object/from16 v35, v0

    .line 1506
    invoke-static/range {v35 .. v35}, Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;->access$2200(Lcom/android/camera/module/video2/Video2CamcorderDeviceOpenerImpl;)Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

    move-result-object v35

    invoke-direct/range {v1 .. v35}, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;-><init>(Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/ui/BottomBarUISpecProvider;Lcom/android/camera/camcorder/CamcorderCaptureRate;Lcom/android/camera/camcorder/CamcorderCharacteristics;Lcom/android/camera/camcorder/CamcorderDevice;Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;Lcom/google/android/apps/camera/async/ConcurrentState;Lcom/google/android/apps/camera/async/ConcurrentState;Lcom/google/android/apps/camera/async/ConcurrentState;Lcom/android/camera/error/FatalErrorHandler;Lcom/android/camera/ui/focus/FocusController;Lcom/android/camera/module/FocusPointNormalizer;Ljava/util/concurrent/Executor;Lcom/android/camera/filmstrip/FilmstripDataAdapter;Lcom/google/android/apps/camera/async/MainThread;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/burst/OrientationLockController;Lcom/android/camera/data/PhotoItemFactory;Lcom/android/camera/ui/PreviewOverlay;Lcom/android/camera/util/activity/ScreenOnController;Lcom/android/camera/util/Size;Lcom/android/camera/data/VideoItemFactory;Lcom/android/camera/module/video2/Video2FileSaver;Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;Lcom/android/camera/module/video2/Video2ModuleUI;Lcom/android/camera/module/video2/Video2OrientationCalculator;Lcom/android/camera/module/video2/Video2Settings;Lcom/android/camera/module/video2/Video2Sound;Lcom/android/camera/ui/viewfinder/Viewfinder;Lcom/android/camera/data/VideoRotationMetadataLoader;Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;Lcom/google/android/apps/camera/evcomp/EvCompViewController;Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;)V

    .line 467
    return-object v1
.end method
