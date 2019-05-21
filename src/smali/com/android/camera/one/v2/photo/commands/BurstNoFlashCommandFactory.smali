.class public final Lcom/android/camera/one/v2/photo/commands/BurstNoFlashCommandFactory;
.super Ljava/lang/Object;
.source "BurstNoFlashCommandFactory.java"


# instance fields
.field private final commonTemplate:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/common/CommonRequestTemplate;",
            ">;"
        }
    .end annotation
.end field

.field private final convergence3A:Lcom/android/camera/one/v2/autofocus/Convergence3A;

.field private final frameAllocator:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;

.field private final frameServer:Lcom/android/camera/one/v2/core/FrameServer;

.field private final imageSaver:Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;

.field private final logger:Lcom/android/camera/debug/Logger$Factory;

.field private final threshold$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN0Q3FEHNIUIBDC5JMAGR1E1Q7ASJ5AHK74PBJD1NMOP1R:Lcom/google/common/collect/Serialization;

.field private final trace:Lcom/android/camera/debug/trace/Trace;


# direct methods
.method public constructor <init>(Lcom/android/camera/debug/trace/Trace;Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;Lcom/android/camera/one/v2/core/FrameServer;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/android/camera/one/v2/autofocus/Convergence3A;Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;Lcom/google/common/collect/Serialization;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/debug/trace/Trace;",
            "Lcom/android/camera/debug/Logger$Factory;",
            "Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;",
            "Lcom/android/camera/one/v2/core/FrameServer;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/common/CommonRequestTemplate;",
            ">;",
            "Lcom/android/camera/one/v2/autofocus/Convergence3A;",
            "Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;",
            "Lcom/google/common/collect/Serialization;",
            ")V"
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/commands/BurstNoFlashCommandFactory;->trace:Lcom/android/camera/debug/trace/Trace;

    .line 57
    iput-object p2, p0, Lcom/android/camera/one/v2/photo/commands/BurstNoFlashCommandFactory;->logger:Lcom/android/camera/debug/Logger$Factory;

    .line 58
    iput-object p3, p0, Lcom/android/camera/one/v2/photo/commands/BurstNoFlashCommandFactory;->frameAllocator:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;

    .line 59
    iput-object p4, p0, Lcom/android/camera/one/v2/photo/commands/BurstNoFlashCommandFactory;->frameServer:Lcom/android/camera/one/v2/core/FrameServer;

    .line 60
    iput-object p5, p0, Lcom/android/camera/one/v2/photo/commands/BurstNoFlashCommandFactory;->commonTemplate:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 61
    iput-object p6, p0, Lcom/android/camera/one/v2/photo/commands/BurstNoFlashCommandFactory;->convergence3A:Lcom/android/camera/one/v2/autofocus/Convergence3A;

    .line 62
    iput-object p7, p0, Lcom/android/camera/one/v2/photo/commands/BurstNoFlashCommandFactory;->imageSaver:Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;

    .line 63
    iput-object p8, p0, Lcom/android/camera/one/v2/photo/commands/BurstNoFlashCommandFactory;->threshold$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN0Q3FEHNIUIBDC5JMAGR1E1Q7ASJ5AHK74PBJD1NMOP1R:Lcom/google/common/collect/Serialization;

    .line 64
    sget-object v0, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;->LOCKED:Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;

    .line 65
    invoke-static {v0}, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;->createWithFocus(Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;)Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;

    move-result-object v0

    sget-object v1, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;->ANY:Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;

    .line 66
    invoke-virtual {v0, v1}, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;->withExposure(Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;)Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;

    move-result-object v0

    sget-object v1, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;->ANY:Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;

    .line 67
    invoke-virtual {v0, v1}, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;->withWhiteBalance(Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;)Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;

    .line 68
    return-void
.end method


# virtual methods
.method public final create(IILcom/android/camera/one/v2/autofocus/Convergence3ASpec;Lcom/android/camera/one/v2/common/RequestTransformer;)Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    .locals 15

    .prologue
    .line 88
    iget-object v1, p0, Lcom/android/camera/one/v2/photo/commands/BurstNoFlashCommandFactory;->commonTemplate:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v2, Lcom/android/camera/one/v2/photo/commands/BurstNoFlashCommandFactory$1;

    move-object/from16 v0, p4

    invoke-direct {v2, v0}, Lcom/android/camera/one/v2/photo/commands/BurstNoFlashCommandFactory$1;-><init>(Lcom/android/camera/one/v2/common/RequestTransformer;)V

    .line 89
    invoke-static {v1, v2}, Lcom/google/common/util/concurrent/Futures;->transform(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v8

    .line 106
    new-instance v14, Lcom/android/camera/one/v2/photo/commands/UsageStatsForwardingImageCaptureCommand;

    new-instance v1, Lcom/android/camera/one/v2/photo/commands/ConvergedImageCaptureCommand;

    iget-object v2, p0, Lcom/android/camera/one/v2/photo/commands/BurstNoFlashCommandFactory;->trace:Lcom/android/camera/debug/trace/Trace;

    iget-object v3, p0, Lcom/android/camera/one/v2/photo/commands/BurstNoFlashCommandFactory;->logger:Lcom/android/camera/debug/Logger$Factory;

    iget-object v4, p0, Lcom/android/camera/one/v2/photo/commands/BurstNoFlashCommandFactory;->threshold$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN0Q3FEHNIUIBDC5JMAGR1E1Q7ASJ5AHK74PBJD1NMOP1R:Lcom/google/common/collect/Serialization;

    iget-object v5, p0, Lcom/android/camera/one/v2/photo/commands/BurstNoFlashCommandFactory;->frameAllocator:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;

    iget-object v6, p0, Lcom/android/camera/one/v2/photo/commands/BurstNoFlashCommandFactory;->frameServer:Lcom/android/camera/one/v2/core/FrameServer;

    iget-object v7, p0, Lcom/android/camera/one/v2/photo/commands/BurstNoFlashCommandFactory;->commonTemplate:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v10, p0, Lcom/android/camera/one/v2/photo/commands/BurstNoFlashCommandFactory;->convergence3A:Lcom/android/camera/one/v2/autofocus/Convergence3A;

    iget-object v11, p0, Lcom/android/camera/one/v2/photo/commands/BurstNoFlashCommandFactory;->imageSaver:Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;

    move-object/from16 v9, p3

    move/from16 v12, p1

    move/from16 v13, p2

    invoke-direct/range {v1 .. v13}, Lcom/android/camera/one/v2/photo/commands/ConvergedImageCaptureCommand;-><init>(Lcom/android/camera/debug/trace/Trace;Lcom/android/camera/debug/Logger$Factory;Lcom/google/common/collect/Serialization;Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;Lcom/android/camera/one/v2/core/FrameServer;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;Lcom/android/camera/one/v2/autofocus/Convergence3A;Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;II)V

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v14, v1, v2, v3}, Lcom/android/camera/one/v2/photo/commands/UsageStatsForwardingImageCaptureCommand;-><init>(Lcom/android/camera/one/v2/photo/ImageCaptureCommand;IZ)V

    return-object v14
.end method
