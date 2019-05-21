.class public final Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCommandFactory;
.super Ljava/lang/Object;
.source "HdrPlusZslCommandFactory.java"


# static fields
.field private static final MAX_LOOK_BACK_NANOS:J


# instance fields
.field private final captureThreshold:Lcom/android/camera/one/v2/photo/CaptureThreshold;

.field private final flashMode:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;",
            ">;"
        }
    .end annotation
.end field

.field private final frameAllocator:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;

.field private final gcamUsageStatistics:Lcom/android/camera/stats/GcamUsageStatistics;

.field private final hdrPlusSession:Lcom/android/camera/hdrplus/HdrPlusSession;

.field private final lifetime:Lcom/google/android/apps/camera/async/Lifetime;

.field private final logFactory:Lcom/android/camera/debug/Logger$Factory;

.field private final oneCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

.field private final trace:Lcom/android/camera/debug/trace/Trace;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->secondsToNanosLong(I)J

    move-result-wide v0

    sput-wide v0, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCommandFactory;->MAX_LOOK_BACK_NANOS:J

    return-void
.end method

.method constructor <init>(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/debug/trace/Trace;Lcom/google/android/apps/camera/async/Lifetime;Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;Lcom/google/common/primitives/Ints;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/hdrplus/HdrPlusSession;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/stats/GcamUsageStatistics;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/debug/Logger$Factory;",
            "Lcom/android/camera/debug/trace/Trace;",
            "Lcom/google/android/apps/camera/async/Lifetime;",
            "Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;",
            "Lcom/google/common/primitives/Ints;",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            "Lcom/android/camera/hdrplus/HdrPlusSession;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;",
            ">;",
            "Lcom/android/camera/stats/GcamUsageStatistics;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCommandFactory;->logFactory:Lcom/android/camera/debug/Logger$Factory;

    .line 62
    iput-object p2, p0, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCommandFactory;->trace:Lcom/android/camera/debug/trace/Trace;

    .line 63
    iput-object p3, p0, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCommandFactory;->lifetime:Lcom/google/android/apps/camera/async/Lifetime;

    .line 64
    iput-object p4, p0, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCommandFactory;->frameAllocator:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;

    .line 65
    iput-object p5, p0, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCommandFactory;->captureThreshold:Lcom/android/camera/one/v2/photo/CaptureThreshold;

    .line 66
    iput-object p6, p0, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCommandFactory;->oneCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 67
    iput-object p7, p0, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCommandFactory;->hdrPlusSession:Lcom/android/camera/hdrplus/HdrPlusSession;

    .line 68
    iput-object p8, p0, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCommandFactory;->flashMode:Lcom/google/android/apps/camera/async/Observable;

    .line 69
    iput-object p9, p0, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCommandFactory;->gcamUsageStatistics:Lcom/android/camera/stats/GcamUsageStatistics;

    .line 70
    return-void
.end method


# virtual methods
.method public final create(IILcom/android/camera/one/v2/photo/ImageCaptureCommand;)Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    .locals 21

    .prologue
    .line 81
    new-instance v11, Lcom/android/camera/one/v2/photo/zsl/AcceptableZslImageFilter;

    .line 82
    invoke-static {}, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;->any()Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;

    move-result-object v2

    invoke-direct {v11, v2}, Lcom/android/camera/one/v2/photo/zsl/AcceptableZslImageFilter;-><init>(Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;)V

    .line 85
    sget-object v2, Lcom/google/android/camera/experimental2016/ExperimentalKeys;->EXPERIMENTAL_CONTROL_HYBRID_AE:Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v2, :cond_0

    .line 86
    new-instance v2, Lcom/android/camera/one/v2/core/Request$Parameter;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v4, 0x0

    .line 90
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/camera/one/v2/core/Request$Parameter;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    new-instance v3, Lcom/android/camera/one/v2/core/Request$Parameter;

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v5, 0x1

    .line 93
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/camera/one/v2/core/Request$Parameter;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    new-instance v4, Lcom/android/camera/one/v2/core/Request$Parameter;

    sget-object v5, Lcom/google/android/camera/experimental2016/ExperimentalKeys;->EXPERIMENTAL_CONTROL_HYBRID_AE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v6, 0x1

    .line 96
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/android/camera/one/v2/core/Request$Parameter;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 87
    invoke-static {v2, v3, v4}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v16

    .line 107
    :goto_0
    new-instance v2, Lcom/android/camera/one/v2/photo/commands/UsageStatsForwardingImageCaptureCommand;

    new-instance v3, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCaptureCommand;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCommandFactory;->logFactory:Lcom/android/camera/debug/Logger$Factory;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCommandFactory;->trace:Lcom/android/camera/debug/trace/Trace;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCommandFactory;->lifetime:Lcom/google/android/apps/camera/async/Lifetime;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCommandFactory;->frameAllocator:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCommandFactory;->captureThreshold:Lcom/android/camera/one/v2/photo/CaptureThreshold;

    new-instance v10, Lcom/google/android/libraries/smartburst/segmentation/filters/FrameFilterUtil;

    invoke-direct {v10}, Lcom/google/android/libraries/smartburst/segmentation/filters/FrameFilterUtil;-><init>()V

    sget-wide v14, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCommandFactory;->MAX_LOOK_BACK_NANOS:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCommandFactory;->oneCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCommandFactory;->hdrPlusSession:Lcom/android/camera/hdrplus/HdrPlusSession;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCommandFactory;->flashMode:Lcom/google/android/apps/camera/async/Observable;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCommandFactory;->gcamUsageStatistics:Lcom/android/camera/stats/GcamUsageStatistics;

    move-object/from16 v20, v0

    move-object/from16 v9, p3

    move/from16 v12, p1

    move/from16 v13, p2

    invoke-direct/range {v3 .. v20}, Lcom/android/camera/one/v2/photo/commands/HdrPlusZslCaptureCommand;-><init>(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/debug/trace/Trace;Lcom/google/android/apps/camera/async/Lifetime;Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;Lcom/android/camera/one/v2/photo/CaptureThreshold;Lcom/android/camera/one/v2/photo/ImageCaptureCommand;Lcom/android/camera/one/v2/imagemanagement/frame/RingBufferPolicy;Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand$ZslMetadataFilter;IIJLjava/util/Set;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/hdrplus/HdrPlusSession;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/stats/GcamUsageStatistics;)V

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/android/camera/one/v2/photo/commands/UsageStatsForwardingImageCaptureCommand;-><init>(Lcom/android/camera/one/v2/photo/ImageCaptureCommand;IZ)V

    return-object v2

    .line 98
    :cond_0
    new-instance v2, Lcom/android/camera/one/v2/core/Request$Parameter;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v4, 0x0

    .line 101
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/camera/one/v2/core/Request$Parameter;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    new-instance v3, Lcom/android/camera/one/v2/core/Request$Parameter;

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v5, 0x1

    .line 104
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/camera/one/v2/core/Request$Parameter;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 98
    invoke-static {v2, v3}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v16

    goto :goto_0
.end method
