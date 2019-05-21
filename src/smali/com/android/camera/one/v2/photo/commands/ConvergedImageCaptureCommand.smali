.class public final Lcom/android/camera/one/v2/photo/commands/ConvergedImageCaptureCommand;
.super Ljava/lang/Object;
.source "ConvergedImageCaptureCommand.java"

# interfaces
.implements Lcom/android/camera/one/v2/photo/ImageCaptureCommand;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


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

.field private final log:Lcom/android/camera/debug/Logger;

.field private final maxBurstSize:I

.field private final minBurstSize:I

.field private final request:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/core/Request;",
            ">;>;"
        }
    .end annotation
.end field

.field private final threshold$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN0Q3FEHNIUIBDC5JMAGR1E1Q7ASJ5AHK74PBJD1NMOP1R:Lcom/google/common/collect/Serialization;

.field private final trace:Lcom/android/camera/debug/trace/Trace;


# direct methods
.method public constructor <init>(Lcom/android/camera/debug/trace/Trace;Lcom/android/camera/debug/Logger$Factory;Lcom/google/common/collect/Serialization;Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;Lcom/android/camera/one/v2/core/FrameServer;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;Lcom/android/camera/one/v2/autofocus/Convergence3A;Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/debug/trace/Trace;",
            "Lcom/android/camera/debug/Logger$Factory;",
            "Lcom/google/common/collect/Serialization;",
            "Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;",
            "Lcom/android/camera/one/v2/core/FrameServer;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/common/CommonRequestTemplate;",
            ">;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/core/Request;",
            ">;>;",
            "Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;",
            "Lcom/android/camera/one/v2/autofocus/Convergence3A;",
            "Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/commands/ConvergedImageCaptureCommand;->trace:Lcom/android/camera/debug/trace/Trace;

    .line 91
    iput-object p3, p0, Lcom/android/camera/one/v2/photo/commands/ConvergedImageCaptureCommand;->threshold$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN0Q3FEHNIUIBDC5JMAGR1E1Q7ASJ5AHK74PBJD1NMOP1R:Lcom/google/common/collect/Serialization;

    .line 92
    iput-object p4, p0, Lcom/android/camera/one/v2/photo/commands/ConvergedImageCaptureCommand;->frameAllocator:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;

    .line 93
    iput-object p5, p0, Lcom/android/camera/one/v2/photo/commands/ConvergedImageCaptureCommand;->frameServer:Lcom/android/camera/one/v2/core/FrameServer;

    .line 94
    iput-object p6, p0, Lcom/android/camera/one/v2/photo/commands/ConvergedImageCaptureCommand;->commonTemplate:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 95
    iput-object p9, p0, Lcom/android/camera/one/v2/photo/commands/ConvergedImageCaptureCommand;->convergence3A:Lcom/android/camera/one/v2/autofocus/Convergence3A;

    .line 96
    iput-object p8, p0, Lcom/android/camera/one/v2/photo/commands/ConvergedImageCaptureCommand;->convergenceRequirement:Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;

    .line 97
    iput-object p10, p0, Lcom/android/camera/one/v2/photo/commands/ConvergedImageCaptureCommand;->imageSaver:Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;

    .line 98
    iput p11, p0, Lcom/android/camera/one/v2/photo/commands/ConvergedImageCaptureCommand;->minBurstSize:I

    .line 99
    iput p12, p0, Lcom/android/camera/one/v2/photo/commands/ConvergedImageCaptureCommand;->maxBurstSize:I

    .line 100
    iput-object p7, p0, Lcom/android/camera/one/v2/photo/commands/ConvergedImageCaptureCommand;->request:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 101
    const-string v0, "CnvrgdCaptureCmd"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/camera/debug/Logger$Factory;->create(Ljava/lang/String;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/commands/ConvergedImageCaptureCommand;->log:Lcom/android/camera/debug/Logger;

    .line 102
    return-void
.end method

.method static synthetic access$000$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBR3DTMMQOBECHPIUGRFDPR6ASJ7CLI4IRB1CTIK6OBGEHQN4PA3DTMMQOBECGTIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIURRECKNNCCHFE1K6UT3F5T4MQOB7CL1M2S3KELP6AL38E9IN6Q3FDHI3M___(Lcom/android/camera/one/v2/photo/commands/ConvergedImageCaptureCommand;)Lcom/google/common/collect/Serialization;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/commands/ConvergedImageCaptureCommand;->threshold$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN0Q3FEHNIUIBDC5JMAGR1E1Q7ASJ5AHK74PBJD1NMOP1R:Lcom/google/common/collect/Serialization;

    return-object v0
.end method

.method private final createRequestForBurst(Lcom/android/camera/one/v2/core/Request;)Lcom/android/camera/one/v2/core/Request;
    .locals 2

    .prologue
    .line 183
    new-instance v0, Lcom/android/camera/one/v2/core/RequestBuilder;

    invoke-direct {v0, p1}, Lcom/android/camera/one/v2/core/RequestBuilder;-><init>(Lcom/android/camera/one/v2/core/Request;)V

    new-instance v1, Lcom/android/camera/one/v2/photo/commands/ConvergedImageCaptureCommand$1;

    invoke-direct {v1, p0}, Lcom/android/camera/one/v2/photo/commands/ConvergedImageCaptureCommand$1;-><init>(Lcom/android/camera/one/v2/photo/commands/ConvergedImageCaptureCommand;)V

    .line 184
    invoke-virtual {v0, v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v0

    .line 191
    invoke-virtual {v0}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v0

    .line 183
    return-object v0
.end method

.method private final submitBurst(Lcom/android/camera/one/v2/core/FrameServer$FrameServerSession;Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;Lcom/google/android/apps/camera/async/Updatable;Lcom/android/camera/one/v2/autofocus/Convergence3A$Lock3A;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/core/FrameServer$FrameServerSession;",
            "Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;",
            "Lcom/google/android/apps/camera/async/Updatable",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/android/camera/one/v2/autofocus/Convergence3A$Lock3A;",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/one/v2/core/Request;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 214
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 216
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/commands/ConvergedImageCaptureCommand;->imageSaver:Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;->getPreProcessingRequirement()Lcom/android/camera/one/v2/imagesaver/util/PreprocessingRequirement;

    move-result-object v2

    .line 218
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/core/Request;

    .line 219
    invoke-interface {p4, v0}, Lcom/android/camera/one/v2/autofocus/Convergence3A$Lock3A;->transform3A(Lcom/android/camera/one/v2/core/Request;)Lcom/android/camera/one/v2/core/Request;

    move-result-object v0

    .line 220
    new-instance v4, Lcom/android/camera/one/v2/core/RequestBuilder;

    invoke-direct {v4, v0}, Lcom/android/camera/one/v2/core/RequestBuilder;-><init>(Lcom/android/camera/one/v2/core/Request;)V

    .line 221
    invoke-virtual {v2}, Lcom/android/camera/one/v2/imagesaver/util/PreprocessingRequirement;->transformSingleRequest()Lcom/android/camera/one/v2/common/RequestTransformer;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera/one/v2/common/RequestTransformer;->transform(Lcom/android/camera/one/v2/core/RequestBuilder;)V

    .line 222
    invoke-virtual {v4, p2}, Lcom/android/camera/one/v2/core/RequestBuilder;->addStream(Lcom/android/camera/one/v2/core/CaptureStream;)Lcom/android/camera/one/v2/core/RequestBuilder;

    .line 223
    invoke-virtual {v4}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 229
    :cond_0
    new-instance v2, Lcom/android/camera/one/v2/core/RequestBuilder;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/core/Request;

    invoke-direct {v2, v0}, Lcom/android/camera/one/v2/core/RequestBuilder;-><init>(Lcom/android/camera/one/v2/core/Request;)V

    .line 230
    invoke-static {p3}, Lcom/android/camera/one/v2/core/FrameServerModule;->forFrameExposure(Lcom/google/android/apps/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/camera/one/v2/core/RequestBuilder;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)Lcom/android/camera/one/v2/core/RequestBuilder;

    .line 231
    invoke-virtual {v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v0

    invoke-interface {v1, v5, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v0, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->NON_REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-interface {p1, v1, v0}, Lcom/android/camera/one/v2/core/FrameServer$FrameServerSession;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 234
    return-void
.end method


# virtual methods
.method public final getAvailability()Lcom/google/android/apps/camera/async/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/apps/camera/async/Observable;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/camera/one/v2/photo/commands/ConvergedImageCaptureCommand;->frameServer:Lcom/android/camera/one/v2/core/FrameServer;

    .line 197
    invoke-interface {v2}, Lcom/android/camera/one/v2/core/FrameServer;->getAvailability()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/camera/one/v2/photo/commands/ConvergedImageCaptureCommand;->imageSaver:Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;

    .line 198
    invoke-interface {v2}, Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;->getAvailability()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/camera/one/v2/photo/commands/ConvergedImageCaptureCommand;->frameAllocator:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;

    .line 199
    invoke-interface {v2}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;->getAvailableCapacity()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/one/v2/photo/commands/ConvergedImageCaptureCommand;->minBurstSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/apps/camera/async/Observables;->greaterOrEqual(Lcom/google/android/apps/camera/async/Observable;Ljava/lang/Comparable;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 196
    invoke-static {v0}, Lcom/google/android/apps/camera/async/Observables;->and([Lcom/google/android/apps/camera/async/Observable;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final getRequestTransformer()Lcom/google/android/apps/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/common/RequestTransformer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 204
    invoke-static {}, Lcom/android/camera/one/v2/common/JpegThumbnailParametersNull;->noOp()Lcom/android/camera/one/v2/common/RequestTransformer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/camera/async/Observables;->of(Ljava/lang/Object;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final run$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQ9DLGMEPA3C5O78TBICL1MURBDC5N68929DLGMEPA3C5O78TBICL66UORB7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQGD5HN8TBICLA62QR5E8I50OBIC5MMAT35E9PJMAAM(Lcom/android/camera/audio/SingleUseSoundPlayer;Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation

    .prologue
    .line 112
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/one/v2/photo/commands/ConvergedImageCaptureCommand;->log:Lcom/android/camera/debug/Logger;

    const-string v2, "Executing converged capture command."

    invoke-virtual {v1, v2}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 113
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/one/v2/photo/commands/ConvergedImageCaptureCommand;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v2, "ConvergedImageCaptureCommand"

    invoke-interface {v1, v2}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 114
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/one/v2/photo/commands/ConvergedImageCaptureCommand;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v2, "AcquireFrameServerSession"

    invoke-interface {v1, v2}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 115
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/one/v2/photo/commands/ConvergedImageCaptureCommand;->frameServer:Lcom/android/camera/one/v2/core/FrameServer;

    invoke-interface {v1}, Lcom/android/camera/one/v2/core/FrameServer;->createExclusiveSession()Lcom/android/camera/one/v2/core/FrameServer$FrameServerSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-result-object v2

    const/4 v11, 0x0

    .line 118
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/one/v2/photo/commands/ConvergedImageCaptureCommand;->request:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v1}, Lcom/google/android/apps/camera/async/ResourceUnavailableException;->getChecked(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/async/Observable;

    invoke-interface {v1}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/v2/core/Request;

    .line 119
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/one/v2/photo/commands/ConvergedImageCaptureCommand;->commonTemplate:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v3}, Lcom/google/android/apps/camera/async/ResourceUnavailableException;->getChecked(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/one/v2/common/CommonRequestTemplate;

    invoke-virtual {v3}, Lcom/android/camera/one/v2/common/CommonRequestTemplate;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/camera/one/v2/core/Request;

    move-object v4, v0

    .line 121
    const/4 v7, 0x0

    .line 122
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 123
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/one/v2/photo/commands/ConvergedImageCaptureCommand;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v5, "3AConvergence"

    invoke-interface {v3, v5}, Lcom/android/camera/debug/trace/Trace;->stopAndStart(Ljava/lang/String;)V

    .line 124
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/one/v2/photo/commands/ConvergedImageCaptureCommand;->imageSaver:Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;->acquireSession$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQGD5HN8TBICLA62QR5E8I50OBIC5MMAT35E9PJMAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5TKMQOB7CLPM2TJ5E8NL0SJ5A1P6UOR5EDPMAP29DLGMEPAJC5R6ASH495MM2PR5ADGNCPBIADIN6SR9DTN3M___(Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;)Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    move-result-object v13

    const/4 v10, 0x0

    .line 125
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/one/v2/photo/commands/ConvergedImageCaptureCommand;->frameAllocator:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/one/v2/photo/commands/ConvergedImageCaptureCommand;->minBurstSize:I

    .line 126
    invoke-static {v3, v5}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->createPreallocatedStream(Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;I)Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    move-result-object v3

    .line 124
    const/4 v9, 0x0

    .line 127
    :try_start_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/one/v2/photo/commands/ConvergedImageCaptureCommand;->convergence3A:Lcom/android/camera/one/v2/autofocus/Convergence3A;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/one/v2/photo/commands/ConvergedImageCaptureCommand;->convergenceRequirement:Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;

    invoke-interface {v5, v2, v8, v4}, Lcom/android/camera/one/v2/autofocus/Convergence3A;->acquire(Lcom/android/camera/one/v2/core/FrameRequestProcessor;Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;Lcom/android/camera/one/v2/core/Request;)Lcom/android/camera/one/v2/autofocus/Convergence3A$Lock3A;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    move-result-object v5

    .line 124
    const/4 v8, 0x0

    .line 129
    const/4 v4, 0x0

    :goto_0
    :try_start_4
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/camera/one/v2/photo/commands/ConvergedImageCaptureCommand;->maxBurstSize:I

    if-ge v4, v12, :cond_6

    .line 130
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/camera/one/v2/photo/commands/ConvergedImageCaptureCommand;->minBurstSize:I

    if-ge v4, v12, :cond_1

    .line 132
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/camera/one/v2/photo/commands/ConvergedImageCaptureCommand;->createRequestForBurst(Lcom/android/camera/one/v2/core/Request;)Lcom/android/camera/one/v2/core/Request;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 135
    :cond_1
    const/4 v12, 0x1

    invoke-interface {v3, v12}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;->tryIncreaseCapacity(I)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 136
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/camera/one/v2/photo/commands/ConvergedImageCaptureCommand;->createRequestForBurst(Lcom/android/camera/one/v2/core/Request;)Lcom/android/camera/one/v2/core/Request;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    goto :goto_1

    .line 124
    :catch_0
    move-exception v1

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 175
    :catchall_0
    move-exception v4

    move-object/from16 v18, v4

    move-object v4, v1

    move-object/from16 v1, v18

    :goto_2
    if-eqz v5, :cond_2

    if-eqz v4, :cond_11

    :try_start_6
    invoke-interface {v5}, Lcom/android/camera/one/v2/autofocus/Convergence3A$Lock3A;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_9
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    :cond_2
    :goto_3
    :try_start_7
    throw v1
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 124
    :catch_1
    move-exception v1

    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 175
    :catchall_1
    move-exception v4

    move-object/from16 v18, v4

    move-object v4, v1

    move-object/from16 v1, v18

    :goto_4
    if-eqz v3, :cond_3

    if-eqz v4, :cond_12

    :try_start_9
    invoke-interface {v3}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_a
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    :cond_3
    :goto_5
    :try_start_a
    throw v1
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    .line 124
    :catch_2
    move-exception v1

    :try_start_b
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 175
    :catchall_2
    move-exception v3

    move-object/from16 v18, v3

    move-object v3, v1

    move-object/from16 v1, v18

    :goto_6
    if-eqz v13, :cond_4

    if-eqz v3, :cond_13

    :try_start_c
    invoke-interface {v13}, Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_b
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    :cond_4
    :goto_7
    :try_start_d
    throw v1
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    .line 115
    :catch_3
    move-exception v1

    :try_start_e
    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 176
    :catchall_3
    move-exception v3

    move-object/from16 v18, v3

    move-object v3, v1

    move-object/from16 v1, v18

    :goto_8
    if-eqz v2, :cond_5

    if-eqz v3, :cond_14

    :try_start_f
    invoke-interface {v2}, Lcom/android/camera/one/v2/core/FrameServer$FrameServerSession;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_c
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :cond_5
    :goto_9
    :try_start_10
    throw v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 177
    :catchall_4
    move-exception v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/photo/commands/ConvergedImageCaptureCommand;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v2}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 178
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/photo/commands/ConvergedImageCaptureCommand;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v2}, Lcom/android/camera/debug/trace/Trace;->stop()V

    throw v1

    .line 140
    :cond_6
    :try_start_11
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v14

    .line 143
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/one/v2/photo/commands/ConvergedImageCaptureCommand;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v4, "ShowExposure"

    invoke-interface {v1, v4}, Lcom/android/camera/debug/trace/Trace;->stopAndStart(Ljava/lang/String;)V

    .line 144
    invoke-virtual/range {p2 .. p2}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->getCaptureProgress()Lcom/android/camera/one/v2/photo/PictureTaker$CaptureProgress;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/one/v2/photo/PictureTaker$CaptureProgress;->createExposureIndicator()Lcom/google/android/apps/camera/async/Updatable;

    move-result-object v4

    .line 145
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/one/v2/photo/commands/ConvergedImageCaptureCommand;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v12, "SubmitBurst"

    invoke-interface {v1, v12}, Lcom/android/camera/debug/trace/Trace;->stopAndStart(Ljava/lang/String;)V

    .line 146
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/one/v2/photo/commands/ConvergedImageCaptureCommand;->log:Lcom/android/camera/debug/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    const/16 v15, 0x29

    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v15, "Submitting a payload burst of "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/android/camera/debug/Logger;->d(Ljava/lang/String;)V

    move-object/from16 v1, p0

    .line 147
    invoke-direct/range {v1 .. v6}, Lcom/android/camera/one/v2/photo/commands/ConvergedImageCaptureCommand;->submitBurst(Lcom/android/camera/one/v2/core/FrameServer$FrameServerSession;Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;Lcom/google/android/apps/camera/async/Updatable;Lcom/android/camera/one/v2/autofocus/Convergence3A$Lock3A;Ljava/util/List;)V

    .line 150
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/one/v2/photo/commands/ConvergedImageCaptureCommand;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v4, "ReleaseResources"

    invoke-interface {v1, v4}, Lcom/android/camera/debug/trace/Trace;->stopAndStart(Ljava/lang/String;)V

    .line 151
    invoke-interface/range {p1 .. p1}, Lcom/android/camera/audio/SingleUseSoundPlayer;->close()V

    .line 152
    invoke-interface {v5}, Lcom/android/camera/one/v2/autofocus/Convergence3A$Lock3A;->close()V

    .line 153
    invoke-interface {v2}, Lcom/android/camera/one/v2/core/FrameServer$FrameServerSession;->close()V

    .line 155
    const/4 v1, 0x0

    move v12, v1

    move v6, v7

    :goto_a
    if-ge v12, v14, :cond_b

    .line 156
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/one/v2/photo/commands/ConvergedImageCaptureCommand;->trace:Lcom/android/camera/debug/trace/Trace;

    add-int/lit8 v4, v12, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v15, 0x1d

    invoke-direct {v7, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v15, "Frame"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "of"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/android/camera/debug/trace/Trace;->stopAndStart(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    .line 157
    :try_start_12
    invoke-interface {v3}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;->getNext()Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_12} :catch_d
    .catch Lcom/google/android/apps/camera/async/ResourceUnavailableException; {:try_start_12 .. :try_end_12} :catch_f
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    move-result-object v1

    :try_start_13
    check-cast v1, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_13} :catch_d
    .catch Lcom/google/android/apps/camera/async/ResourceUnavailableException; {:try_start_13 .. :try_end_13} :catch_10
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    const/4 v7, 0x0

    .line 158
    :try_start_14
    invoke-interface {v1}, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;->getImageCount()I

    move-result v4

    if-lez v4, :cond_7

    .line 159
    add-int/lit8 v6, v6, 0x1

    .line 160
    invoke-static {v13, v1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->addAndCloseFrame(Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;Lcom/android/camera/one/v2/imagemanagement/frame/Frame;)V

    .line 161
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/photo/commands/ConvergedImageCaptureCommand;->log:Lcom/android/camera/debug/Logger;

    add-int/lit8 v15, v12, 0x1

    new-instance v16, Ljava/lang/StringBuilder;

    const/16 v17, 0x46

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v17, "Acquired frame "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " of "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " for converged image capture."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_4
    .catchall {:try_start_14 .. :try_end_14} :catchall_a

    move v4, v6

    .line 167
    :goto_b
    if-eqz v1, :cond_a

    :try_start_15
    invoke-interface {v1}, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;->close()V
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_15} :catch_e
    .catch Lcom/google/android/apps/camera/async/ResourceUnavailableException; {:try_start_15 .. :try_end_15} :catch_11
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_0
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    move v1, v4

    .line 155
    :goto_c
    add-int/lit8 v4, v12, 0x1

    move v12, v4

    move v6, v1

    goto :goto_a

    .line 164
    :cond_7
    :try_start_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/photo/commands/ConvergedImageCaptureCommand;->log:Lcom/android/camera/debug/Logger;

    add-int/lit8 v15, v12, 0x1

    new-instance v16, Ljava/lang/StringBuilder;

    const/16 v17, 0x50

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v17, "Ignoring frame "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " of "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " because it did not contain any images."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Lcom/android/camera/debug/Logger;->w(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_4
    .catchall {:try_start_16 .. :try_end_16} :catchall_a

    move v4, v6

    goto :goto_b

    .line 157
    :catch_4
    move-exception v4

    :try_start_17
    throw v4
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    .line 167
    :catchall_5
    move-exception v7

    move-object/from16 v18, v7

    move v7, v6

    move-object v6, v4

    move-object/from16 v4, v18

    :goto_d
    if-eqz v1, :cond_8

    if-eqz v6, :cond_9

    :try_start_18
    invoke-interface {v1}, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;->close()V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_18} :catch_5
    .catch Lcom/google/android/apps/camera/async/ResourceUnavailableException; {:try_start_18 .. :try_end_18} :catch_12
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    :cond_8
    :goto_e
    :try_start_19
    throw v4
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_19} :catch_5
    .catch Lcom/google/android/apps/camera/async/ResourceUnavailableException; {:try_start_19 .. :try_end_19} :catch_13
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_0
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    .line 168
    :catch_5
    move-exception v1

    :goto_f
    move v1, v7

    :try_start_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/photo/commands/ConvergedImageCaptureCommand;->log:Lcom/android/camera/debug/Logger;

    add-int/lit8 v6, v12, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v15, 0x71

    invoke-direct {v7, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v15, "Could not acquire frame "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " because the command was interrupted or is no longer available."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/camera/debug/Logger;->w(Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_0
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    goto :goto_c

    .line 175
    :catchall_6
    move-exception v1

    move-object v4, v8

    goto/16 :goto_2

    .line 167
    :catch_6
    move-exception v1

    :try_start_1b
    invoke-virtual {v6, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_1b} :catch_5
    .catch Lcom/google/android/apps/camera/async/ResourceUnavailableException; {:try_start_1b .. :try_end_1b} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_0
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    goto :goto_e

    .line 168
    :catch_7
    move-exception v1

    goto :goto_f

    .line 167
    :cond_9
    :try_start_1c
    invoke-interface {v1}, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;->close()V
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_1c} :catch_5
    .catch Lcom/google/android/apps/camera/async/ResourceUnavailableException; {:try_start_1c .. :try_end_1c} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_0
    .catchall {:try_start_1c .. :try_end_1c} :catchall_6

    goto :goto_e

    .line 168
    :catch_8
    move-exception v1

    goto :goto_f

    :cond_a
    move v1, v4

    .line 170
    goto/16 :goto_c

    .line 172
    :cond_b
    if-lez v6, :cond_c

    .line 173
    :try_start_1d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/one/v2/photo/commands/ConvergedImageCaptureCommand;->log:Lcom/android/camera/debug/Logger;

    const-string v4, "Payload burst succeeded. Shot is not yet saved."

    invoke-virtual {v1, v4}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_0
    .catchall {:try_start_1d .. :try_end_1d} :catchall_6

    .line 175
    :cond_c
    if-eqz v5, :cond_d

    :try_start_1e
    invoke-interface {v5}, Lcom/android/camera/one/v2/autofocus/Convergence3A$Lock3A;->close()V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_1
    .catchall {:try_start_1e .. :try_end_1e} :catchall_7

    :cond_d
    if-eqz v3, :cond_e

    :try_start_1f
    invoke-interface {v3}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;->close()V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_2
    .catchall {:try_start_1f .. :try_end_1f} :catchall_8

    :cond_e
    if-eqz v13, :cond_f

    :try_start_20
    invoke-interface {v13}, Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;->close()V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_3
    .catchall {:try_start_20 .. :try_end_20} :catchall_9

    .line 176
    :cond_f
    if-eqz v2, :cond_10

    :try_start_21
    invoke-interface {v2}, Lcom/android/camera/one/v2/core/FrameServer$FrameServerSession;->close()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_4

    .line 177
    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/one/v2/photo/commands/ConvergedImageCaptureCommand;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v1}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 178
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/one/v2/photo/commands/ConvergedImageCaptureCommand;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v1}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 179
    return-void

    .line 175
    :catch_9
    move-exception v5

    :try_start_22
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :catchall_7
    move-exception v1

    move-object v4, v9

    goto/16 :goto_4

    :cond_11
    invoke-interface {v5}, Lcom/android/camera/one/v2/autofocus/Convergence3A$Lock3A;->close()V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_1
    .catchall {:try_start_22 .. :try_end_22} :catchall_7

    goto/16 :goto_3

    :catch_a
    move-exception v3

    :try_start_23
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    :catchall_8
    move-exception v1

    move-object v3, v10

    goto/16 :goto_6

    :cond_12
    invoke-interface {v3}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;->close()V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_2
    .catchall {:try_start_23 .. :try_end_23} :catchall_8

    goto/16 :goto_5

    :catch_b
    move-exception v4

    :try_start_24
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 176
    :catchall_9
    move-exception v1

    move-object v3, v11

    goto/16 :goto_8

    .line 175
    :cond_13
    invoke-interface {v13}, Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;->close()V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_3
    .catchall {:try_start_24 .. :try_end_24} :catchall_9

    goto/16 :goto_7

    .line 176
    :catch_c
    move-exception v2

    :try_start_25
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_9

    :cond_14
    invoke-interface {v2}, Lcom/android/camera/one/v2/core/FrameServer$FrameServerSession;->close()V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_4

    goto/16 :goto_9

    .line 168
    :catch_d
    move-exception v1

    move v7, v6

    goto/16 :goto_f

    :catch_e
    move-exception v1

    move v7, v4

    goto/16 :goto_f

    :catch_f
    move-exception v1

    move v7, v6

    goto/16 :goto_f

    :catch_10
    move-exception v1

    move v7, v6

    goto/16 :goto_f

    :catch_11
    move-exception v1

    move v7, v4

    goto/16 :goto_f

    :catch_12
    move-exception v1

    goto/16 :goto_f

    :catch_13
    move-exception v1

    goto/16 :goto_f

    .line 167
    :catchall_a
    move-exception v4

    move-object/from16 v18, v7

    move v7, v6

    move-object/from16 v6, v18

    goto/16 :goto_d
.end method
