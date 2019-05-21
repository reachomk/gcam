.class public final Lcom/android/camera/one/v2/photo/commands/SingleNoFlashCommandFactory;
.super Ljava/lang/Object;
.source "SingleNoFlashCommandFactory.java"


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

.field private final convergenceRequirement:Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;

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
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/commands/SingleNoFlashCommandFactory;->trace:Lcom/android/camera/debug/trace/Trace;

    .line 58
    iput-object p2, p0, Lcom/android/camera/one/v2/photo/commands/SingleNoFlashCommandFactory;->logger:Lcom/android/camera/debug/Logger$Factory;

    .line 59
    iput-object p3, p0, Lcom/android/camera/one/v2/photo/commands/SingleNoFlashCommandFactory;->frameAllocator:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;

    .line 60
    iput-object p4, p0, Lcom/android/camera/one/v2/photo/commands/SingleNoFlashCommandFactory;->frameServer:Lcom/android/camera/one/v2/core/FrameServer;

    .line 61
    iput-object p5, p0, Lcom/android/camera/one/v2/photo/commands/SingleNoFlashCommandFactory;->commonTemplate:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 62
    iput-object p6, p0, Lcom/android/camera/one/v2/photo/commands/SingleNoFlashCommandFactory;->convergence3A:Lcom/android/camera/one/v2/autofocus/Convergence3A;

    .line 63
    iput-object p7, p0, Lcom/android/camera/one/v2/photo/commands/SingleNoFlashCommandFactory;->imageSaver:Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;

    .line 64
    iput-object p8, p0, Lcom/android/camera/one/v2/photo/commands/SingleNoFlashCommandFactory;->threshold$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN0Q3FEHNIUIBDC5JMAGR1E1Q7ASJ5AHK74PBJD1NMOP1R:Lcom/google/common/collect/Serialization;

    .line 65
    sget-object v0, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;->LOCKED:Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;

    .line 66
    invoke-static {v0}, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;->createWithFocus(Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;)Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;

    move-result-object v0

    sget-object v1, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;->ANY:Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;

    .line 67
    invoke-virtual {v0, v1}, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;->withExposure(Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;)Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;

    move-result-object v0

    sget-object v1, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;->ANY:Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;

    .line 68
    invoke-virtual {v0, v1}, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;->withWhiteBalance(Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;)Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/commands/SingleNoFlashCommandFactory;->convergenceRequirement:Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;

    .line 69
    return-void
.end method


# virtual methods
.method public final create(Lcom/android/camera/one/v2/common/RequestTransformer;)Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    .locals 14

    .prologue
    const/4 v11, 0x1

    .line 79
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/commands/SingleNoFlashCommandFactory;->commonTemplate:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v1, Lcom/android/camera/one/v2/photo/commands/SingleNoFlashCommandFactory$1;

    invoke-direct {v1, p1}, Lcom/android/camera/one/v2/photo/commands/SingleNoFlashCommandFactory$1;-><init>(Lcom/android/camera/one/v2/common/RequestTransformer;)V

    .line 80
    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->transform(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v7

    .line 98
    new-instance v13, Lcom/android/camera/one/v2/photo/commands/UsageStatsForwardingImageCaptureCommand;

    new-instance v0, Lcom/android/camera/one/v2/photo/commands/ConvergedImageCaptureCommand;

    iget-object v1, p0, Lcom/android/camera/one/v2/photo/commands/SingleNoFlashCommandFactory;->trace:Lcom/android/camera/debug/trace/Trace;

    iget-object v2, p0, Lcom/android/camera/one/v2/photo/commands/SingleNoFlashCommandFactory;->logger:Lcom/android/camera/debug/Logger$Factory;

    iget-object v3, p0, Lcom/android/camera/one/v2/photo/commands/SingleNoFlashCommandFactory;->threshold$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN0Q3FEHNIUIBDC5JMAGR1E1Q7ASJ5AHK74PBJD1NMOP1R:Lcom/google/common/collect/Serialization;

    iget-object v4, p0, Lcom/android/camera/one/v2/photo/commands/SingleNoFlashCommandFactory;->frameAllocator:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;

    iget-object v5, p0, Lcom/android/camera/one/v2/photo/commands/SingleNoFlashCommandFactory;->frameServer:Lcom/android/camera/one/v2/core/FrameServer;

    iget-object v6, p0, Lcom/android/camera/one/v2/photo/commands/SingleNoFlashCommandFactory;->commonTemplate:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v8, p0, Lcom/android/camera/one/v2/photo/commands/SingleNoFlashCommandFactory;->convergenceRequirement:Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;

    iget-object v9, p0, Lcom/android/camera/one/v2/photo/commands/SingleNoFlashCommandFactory;->convergence3A:Lcom/android/camera/one/v2/autofocus/Convergence3A;

    iget-object v10, p0, Lcom/android/camera/one/v2/photo/commands/SingleNoFlashCommandFactory;->imageSaver:Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;

    move v12, v11

    invoke-direct/range {v0 .. v12}, Lcom/android/camera/one/v2/photo/commands/ConvergedImageCaptureCommand;-><init>(Lcom/android/camera/debug/trace/Trace;Lcom/android/camera/debug/Logger$Factory;Lcom/google/common/collect/Serialization;Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;Lcom/android/camera/one/v2/core/FrameServer;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;Lcom/android/camera/one/v2/autofocus/Convergence3A;Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;II)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v13, v0, v1, v2}, Lcom/android/camera/one/v2/photo/commands/UsageStatsForwardingImageCaptureCommand;-><init>(Lcom/android/camera/one/v2/photo/ImageCaptureCommand;IZ)V

    return-object v13
.end method
