.class public final Lcom/android/camera/one/v2/photo/commands/SingleZslCommandFactory;
.super Ljava/lang/Object;
.source "SingleZslCommandFactory.java"


# instance fields
.field private final frameAllocator:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;

.field private final imageSaver:Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;

.field private final lifetime:Lcom/google/android/apps/camera/async/Lifetime;

.field private final logger:Lcom/android/camera/debug/Logger$Factory;

.field private final oneCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

.field private final prefilter:Lcom/android/camera/one/v2/photo/commands/DefaultZslRingBufferPolicy;

.field private final threshold$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN0Q3FEHNIUIBDC5JMAGR1E1Q7ASJ5AHK74PBJD1NMOP1R:Lcom/google/common/collect/Serialization;

.field private final trace:Lcom/android/camera/debug/trace/Trace;


# direct methods
.method public constructor <init>(Lcom/android/camera/debug/trace/Trace;Lcom/android/camera/debug/Logger$Factory;Lcom/google/android/apps/camera/async/Lifetime;Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;Lcom/google/common/collect/Serialization;Lcom/android/camera/one/v2/photo/commands/DefaultZslRingBufferPolicy;Lcom/android/camera/one/OneCameraCharacteristics;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/commands/SingleZslCommandFactory;->trace:Lcom/android/camera/debug/trace/Trace;

    .line 49
    iput-object p2, p0, Lcom/android/camera/one/v2/photo/commands/SingleZslCommandFactory;->logger:Lcom/android/camera/debug/Logger$Factory;

    .line 50
    iput-object p3, p0, Lcom/android/camera/one/v2/photo/commands/SingleZslCommandFactory;->lifetime:Lcom/google/android/apps/camera/async/Lifetime;

    .line 51
    iput-object p4, p0, Lcom/android/camera/one/v2/photo/commands/SingleZslCommandFactory;->frameAllocator:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;

    .line 52
    iput-object p5, p0, Lcom/android/camera/one/v2/photo/commands/SingleZslCommandFactory;->imageSaver:Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;

    .line 53
    iput-object p6, p0, Lcom/android/camera/one/v2/photo/commands/SingleZslCommandFactory;->threshold$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN0Q3FEHNIUIBDC5JMAGR1E1Q7ASJ5AHK74PBJD1NMOP1R:Lcom/google/common/collect/Serialization;

    .line 54
    iput-object p7, p0, Lcom/android/camera/one/v2/photo/commands/SingleZslCommandFactory;->prefilter:Lcom/android/camera/one/v2/photo/commands/DefaultZslRingBufferPolicy;

    .line 55
    iput-object p8, p0, Lcom/android/camera/one/v2/photo/commands/SingleZslCommandFactory;->oneCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 56
    return-void
.end method


# virtual methods
.method public final create(Lcom/android/camera/one/v2/photo/ImageCaptureCommand;J)Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    .locals 18

    .prologue
    .line 65
    invoke-static {}, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;->any()Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;

    move-result-object v2

    .line 66
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/one/v2/photo/commands/SingleZslCommandFactory;->oneCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v3}, Lcom/android/camera/one/OneCameraCharacteristics;->isAutoFocusSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 67
    sget-object v3, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;->LOCKED:Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;

    invoke-virtual {v2, v3}, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;->withFocus(Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;)Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;

    .line 69
    :cond_0
    new-instance v11, Lcom/android/camera/one/v2/photo/zsl/AcceptableZslImageFilter;

    invoke-direct {v11, v2}, Lcom/android/camera/one/v2/photo/zsl/AcceptableZslImageFilter;-><init>(Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;)V

    .line 70
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v16

    .line 71
    new-instance v2, Lcom/android/camera/one/v2/photo/commands/UsageStatsForwardingImageCaptureCommand;

    new-instance v3, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/photo/commands/SingleZslCommandFactory;->logger:Lcom/android/camera/debug/Logger$Factory;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/one/v2/photo/commands/SingleZslCommandFactory;->trace:Lcom/android/camera/debug/trace/Trace;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/one/v2/photo/commands/SingleZslCommandFactory;->lifetime:Lcom/google/android/apps/camera/async/Lifetime;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/one/v2/photo/commands/SingleZslCommandFactory;->frameAllocator:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/one/v2/photo/commands/SingleZslCommandFactory;->threshold$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN0Q3FEHNIUIBDC5JMAGR1E1Q7ASJ5AHK74PBJD1NMOP1R:Lcom/google/common/collect/Serialization;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/one/v2/photo/commands/SingleZslCommandFactory;->prefilter:Lcom/android/camera/one/v2/photo/commands/DefaultZslRingBufferPolicy;

    .line 79
    move-wide/from16 v0, p2

    invoke-virtual {v9, v0, v1}, Lcom/android/camera/one/v2/photo/commands/DefaultZslRingBufferPolicy;->create(J)Lcom/android/camera/one/v2/imagemanagement/frame/RingBufferPolicy;

    move-result-object v10

    const/4 v12, 0x1

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/photo/commands/SingleZslCommandFactory;->imageSaver:Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;

    move-object/from16 v17, v0

    move-object/from16 v9, p1

    move-wide/from16 v14, p2

    invoke-direct/range {v3 .. v17}, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;-><init>(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/debug/trace/Trace;Lcom/google/android/apps/camera/async/Lifetime;Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;Lcom/android/camera/one/v2/photo/CaptureThreshold;Lcom/android/camera/one/v2/photo/ImageCaptureCommand;Lcom/android/camera/one/v2/imagemanagement/frame/RingBufferPolicy;Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand$ZslMetadataFilter;IIJLjava/util/Set;Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/android/camera/one/v2/photo/commands/UsageStatsForwardingImageCaptureCommand;-><init>(Lcom/android/camera/one/v2/photo/ImageCaptureCommand;IZ)V

    .line 71
    return-object v2
.end method
