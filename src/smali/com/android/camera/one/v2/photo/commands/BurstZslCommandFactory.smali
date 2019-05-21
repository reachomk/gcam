.class public final Lcom/android/camera/one/v2/photo/commands/BurstZslCommandFactory;
.super Ljava/lang/Object;
.source "BurstZslCommandFactory.java"


# instance fields
.field private final frameAllocator:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;

.field private final imageSaver:Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;

.field private final lifetime:Lcom/google/android/apps/camera/async/Lifetime;

.field private final logger:Lcom/android/camera/debug/Logger$Factory;

.field private final threshold$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN0Q3FEHNIUIBDC5JMAGR1E1Q7ASJ5AHK74PBJD1NMOP1R:Lcom/google/common/collect/Serialization;

.field private final trace:Lcom/android/camera/debug/trace/Trace;


# direct methods
.method constructor <init>(Lcom/android/camera/debug/trace/Trace;Lcom/android/camera/debug/Logger$Factory;Lcom/google/android/apps/camera/async/Lifetime;Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;Lcom/google/common/collect/Serialization;Lcom/android/camera/one/v2/photo/commands/DefaultZslRingBufferPolicy;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/commands/BurstZslCommandFactory;->trace:Lcom/android/camera/debug/trace/Trace;

    .line 47
    iput-object p2, p0, Lcom/android/camera/one/v2/photo/commands/BurstZslCommandFactory;->logger:Lcom/android/camera/debug/Logger$Factory;

    .line 48
    iput-object p3, p0, Lcom/android/camera/one/v2/photo/commands/BurstZslCommandFactory;->lifetime:Lcom/google/android/apps/camera/async/Lifetime;

    .line 49
    iput-object p4, p0, Lcom/android/camera/one/v2/photo/commands/BurstZslCommandFactory;->frameAllocator:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;

    .line 50
    iput-object p5, p0, Lcom/android/camera/one/v2/photo/commands/BurstZslCommandFactory;->imageSaver:Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;

    .line 51
    iput-object p6, p0, Lcom/android/camera/one/v2/photo/commands/BurstZslCommandFactory;->threshold$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN0Q3FEHNIUIBDC5JMAGR1E1Q7ASJ5AHK74PBJD1NMOP1R:Lcom/google/common/collect/Serialization;

    .line 53
    return-void
.end method


# virtual methods
.method public final create(Lcom/android/camera/one/v2/photo/ImageCaptureCommand;Lcom/android/camera/one/v2/imagemanagement/frame/RingBufferPolicy;Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand$ZslMetadataFilter;Ljava/util/Set;IIJ)Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/photo/ImageCaptureCommand;",
            "Lcom/android/camera/one/v2/imagemanagement/frame/RingBufferPolicy;",
            "Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand$ZslMetadataFilter;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/one/v2/core/Request$Parameter",
            "<*>;>;IIJ)",
            "Lcom/android/camera/one/v2/photo/ImageCaptureCommand;"
        }
    .end annotation

    .prologue
    .line 91
    new-instance v2, Lcom/android/camera/one/v2/photo/commands/UsageStatsForwardingImageCaptureCommand;

    new-instance v3, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/photo/commands/BurstZslCommandFactory;->logger:Lcom/android/camera/debug/Logger$Factory;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/one/v2/photo/commands/BurstZslCommandFactory;->trace:Lcom/android/camera/debug/trace/Trace;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/one/v2/photo/commands/BurstZslCommandFactory;->lifetime:Lcom/google/android/apps/camera/async/Lifetime;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/one/v2/photo/commands/BurstZslCommandFactory;->frameAllocator:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/one/v2/photo/commands/BurstZslCommandFactory;->threshold$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN0Q3FEHNIUIBDC5JMAGR1E1Q7ASJ5AHK74PBJD1NMOP1R:Lcom/google/common/collect/Serialization;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/photo/commands/BurstZslCommandFactory;->imageSaver:Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;

    move-object/from16 v17, v0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move/from16 v12, p5

    move/from16 v13, p6

    move-wide/from16 v14, p7

    move-object/from16 v16, p4

    invoke-direct/range {v3 .. v17}, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;-><init>(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/debug/trace/Trace;Lcom/google/android/apps/camera/async/Lifetime;Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;Lcom/android/camera/one/v2/photo/CaptureThreshold;Lcom/android/camera/one/v2/photo/ImageCaptureCommand;Lcom/android/camera/one/v2/imagemanagement/frame/RingBufferPolicy;Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand$ZslMetadataFilter;IIJLjava/util/Set;Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/android/camera/one/v2/photo/commands/UsageStatsForwardingImageCaptureCommand;-><init>(Lcom/android/camera/one/v2/photo/ImageCaptureCommand;IZ)V

    return-object v2
.end method
