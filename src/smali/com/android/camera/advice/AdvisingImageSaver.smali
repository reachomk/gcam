.class public Lcom/android/camera/advice/AdvisingImageSaver;
.super Ljava/lang/Object;
.source "AdvisingImageSaver.java"

# interfaces
.implements Lcom/android/camera/one/v2/command/CameraCommand;
.implements Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/advice/AdvisingImageSaver$SessionImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/one/v2/command/CameraCommand;",
        "Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;"
    }
.end annotation


# instance fields
.field private final adviceManager:Lcom/android/camera/advice/AdviceManager;

.field private final adviceManger:Lcom/android/camera/advice/AdviceManager;

.field private final delegate:Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;

.field private final frameServer:Lcom/android/camera/one/v2/core/FrameServer;

.field private final imageReader:Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReader;

.field private final imageRotationCalculator:Lcom/android/camera/util/ImageRotationCalculator;

.field private final requestTemplate:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/common/CommonRequestTemplate;",
            ">;"
        }
    .end annotation
.end field

.field private final rotationCalculator:Lcom/android/camera/util/ImageRotationCalculator;


# direct methods
.method public constructor <init>(Lcom/android/camera/advice/AdviceManager;Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReader;Lcom/android/camera/one/v2/core/FrameServer;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/android/camera/util/ImageRotationCalculator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/advice/AdviceManager;",
            "Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReader;",
            "Lcom/android/camera/one/v2/core/FrameServer;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/common/CommonRequestTemplate;",
            ">;",
            "Lcom/android/camera/util/ImageRotationCalculator;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1046
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1048
    iput-object p1, p0, Lcom/android/camera/advice/AdvisingImageSaver;->adviceManger:Lcom/android/camera/advice/AdviceManager;

    .line 1049
    iput-object p2, p0, Lcom/android/camera/advice/AdvisingImageSaver;->imageReader:Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReader;

    .line 1050
    iput-object p3, p0, Lcom/android/camera/advice/AdvisingImageSaver;->frameServer:Lcom/android/camera/one/v2/core/FrameServer;

    .line 1051
    iput-object p4, p0, Lcom/android/camera/advice/AdvisingImageSaver;->requestTemplate:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 1052
    iput-object p5, p0, Lcom/android/camera/advice/AdvisingImageSaver;->rotationCalculator:Lcom/android/camera/util/ImageRotationCalculator;

    .line 1053
    return-void
.end method


# virtual methods
.method public final acquireSession$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQGD5HN8TBICLA62QR5E8I50OBIC5MMAT35E9PJMAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5TKMQOB7CLPM2TJ5E8NL0SJ5A1P6UOR5EDPMAP29DLGMEPAJC5R6ASH495MM2PR5ADGNCPBIADIN6SR9DTN3M___(Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;)Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation

    .prologue
    .line 109
    new-instance v0, Lcom/android/camera/advice/AdvisingImageSaver$SessionImpl;

    iget-object v1, p0, Lcom/android/camera/advice/AdvisingImageSaver;->imageRotationCalculator:Lcom/android/camera/util/ImageRotationCalculator;

    iget-object v2, p0, Lcom/android/camera/advice/AdvisingImageSaver;->adviceManager:Lcom/android/camera/advice/AdviceManager;

    iget-object v3, p0, Lcom/android/camera/advice/AdvisingImageSaver;->delegate:Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;

    .line 110
    invoke-interface {v3, p1}, Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;->acquireSession$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQGD5HN8TBICLA62QR5E8I50OBIC5MMAT35E9PJMAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5TKMQOB7CLPM2TJ5E8NL0SJ5A1P6UOR5EDPMAP29DLGMEPAJC5R6ASH495MM2PR5ADGNCPBIADIN6SR9DTN3M___(Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;)Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/advice/AdvisingImageSaver$SessionImpl;-><init>(Lcom/android/camera/util/ImageRotationCalculator;Lcom/android/camera/advice/AdviceManager;Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;)V

    .line 109
    return-object v0
.end method

.method public final getAvailability()Lcom/google/android/apps/camera/async/Observable;
    .locals 1
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
    .line 125
    iget-object v0, p0, Lcom/android/camera/advice/AdvisingImageSaver;->delegate:Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;->getAvailability()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final getPreProcessingRequirement()Lcom/android/camera/one/v2/imagesaver/util/PreprocessingRequirement;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/camera/advice/AdvisingImageSaver;->delegate:Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;->getPreProcessingRequirement()Lcom/android/camera/one/v2/imagesaver/util/PreprocessingRequirement;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1058
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/advice/AdvisingImageSaver;->imageReader:Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/one/v2/imagemanagement/imagereader/ManagedImageReader;->createPreallocatedStream(I)Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageStream;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/apps/camera/async/ResourceUnavailableException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v3

    .line 1059
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/advice/AdvisingImageSaver;->frameServer:Lcom/android/camera/one/v2/core/FrameServer;

    invoke-interface {v0}, Lcom/android/camera/one/v2/core/FrameServer;->createExclusiveSession()Lcom/android/camera/one/v2/core/FrameServer$FrameServerSession;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v4

    .line 1061
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/advice/AdvisingImageSaver;->requestTemplate:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 1062
    invoke-static {v0}, Lcom/google/android/apps/camera/async/ResourceUnavailableException;->getChecked(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/common/CommonRequestTemplate;

    .line 1064
    new-instance v1, Lcom/android/camera/one/v2/core/RequestBuilder;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/common/CommonRequestTemplate;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/core/Request;

    invoke-direct {v1, v0}, Lcom/android/camera/one/v2/core/RequestBuilder;-><init>(Lcom/android/camera/one/v2/core/Request;)V

    .line 1065
    invoke-virtual {v1, v3}, Lcom/android/camera/one/v2/core/RequestBuilder;->addStream(Lcom/android/camera/one/v2/core/CaptureStream;)Lcom/android/camera/one/v2/core/RequestBuilder;

    .line 1067
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/camera/one/v2/core/Request;

    const/4 v5, 0x0

    invoke-virtual {v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->NON_REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-interface {v4, v0, v1}, Lcom/android/camera/one/v2/core/FrameServer$FrameServerSession;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 1068
    invoke-interface {v4}, Lcom/android/camera/one/v2/core/FrameServer$FrameServerSession;->close()V

    .line 1070
    invoke-interface {v3}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageStream;->getNext()Lcom/android/camera/one/v2/imagemanagement/MetadataImage;

    move-result-object v1

    .line 1073
    iget-object v5, p0, Lcom/android/camera/advice/AdvisingImageSaver;->adviceManger:Lcom/android/camera/advice/AdviceManager;

    new-instance v6, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;

    iget-object v0, p0, Lcom/android/camera/advice/AdvisingImageSaver;->rotationCalculator:Lcom/android/camera/util/ImageRotationCalculator;

    .line 1075
    invoke-virtual {v0}, Lcom/android/camera/util/ImageRotationCalculator;->getObservable()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/apps/camera/util/layout/Orientation;->from(I)Lcom/google/android/apps/camera/util/layout/Orientation;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;->getMetadata()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v7

    invoke-direct {v6, v1, v0, v7}, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;-><init>(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Lcom/google/android/apps/camera/util/layout/Orientation;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 1073
    invoke-interface {v5, v6}, Lcom/android/camera/advice/AdviceManager;->onFramePreview(Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1077
    if-eqz v4, :cond_0

    :try_start_3
    invoke-interface {v4}, Lcom/android/camera/one/v2/core/FrameServer$FrameServerSession;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_0
    :try_start_4
    invoke-interface {v3}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageStream;->close()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/google/android/apps/camera/async/ResourceUnavailableException; {:try_start_4 .. :try_end_4} :catch_5

    .line 1081
    :goto_0
    return-void

    .line 1058
    :catch_0
    move-exception v0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1077
    :catchall_0
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_1
    if-eqz v4, :cond_1

    if-eqz v1, :cond_2

    :try_start_6
    invoke-interface {v4}, Lcom/android/camera/one/v2/core/FrameServer$FrameServerSession;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_1
    :goto_2
    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1058
    :catch_1
    move-exception v0

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1077
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_3
    if-eqz v2, :cond_3

    :try_start_9
    invoke-interface {v3}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Lcom/google/android/apps/camera/async/ResourceUnavailableException; {:try_start_9 .. :try_end_9} :catch_5

    :goto_4
    :try_start_a
    throw v0
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_2
    .catch Lcom/google/android/apps/camera/async/ResourceUnavailableException; {:try_start_a .. :try_end_a} :catch_5

    :catch_2
    move-exception v0

    .line 1078
    :goto_5
    const-string v1, "CAM_AdviceFrmRtrivlCmd"

    const-string v2, "unable to retrieve frame"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1077
    :catch_3
    move-exception v4

    :try_start_b
    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_3

    :cond_2
    invoke-interface {v4}, Lcom/android/camera/one/v2/core/FrameServer$FrameServerSession;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_2

    :catch_4
    move-exception v1

    :try_start_c
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_5
    move-exception v0

    goto :goto_5

    :cond_3
    invoke-interface {v3}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageStream;->close()V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_2
    .catch Lcom/google/android/apps/camera/async/ResourceUnavailableException; {:try_start_c .. :try_end_c} :catch_5

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method public final tryAcquireSession$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQGD5HN8TBICLA62QR5E8I50OBIC5MMAT35E9PJMAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5TKMQOB7CLPM2TJ5E8NL0SJ5A1P6UOR5EDPMAP29DLGMEPAJC5R6ASH495MM2PR5ADGNCPBIADIN6SR9DTN3M___(Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;)Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;
    .locals 4

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/camera/advice/AdvisingImageSaver;->delegate:Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;

    invoke-interface {v0, p1}, Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;->tryAcquireSession$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQGD5HN8TBICLA62QR5E8I50OBIC5MMAT35E9PJMAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5TKMQOB7CLPM2TJ5E8NL0SJ5A1P6UOR5EDPMAP29DLGMEPAJC5R6ASH495MM2PR5ADGNCPBIADIN6SR9DTN3M___(Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;)Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;

    move-result-object v1

    .line 117
    if-nez v1, :cond_0

    .line 118
    const/4 v0, 0x0

    .line 120
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/camera/advice/AdvisingImageSaver$SessionImpl;

    iget-object v2, p0, Lcom/android/camera/advice/AdvisingImageSaver;->imageRotationCalculator:Lcom/android/camera/util/ImageRotationCalculator;

    iget-object v3, p0, Lcom/android/camera/advice/AdvisingImageSaver;->adviceManager:Lcom/android/camera/advice/AdviceManager;

    invoke-direct {v0, v2, v3, v1}, Lcom/android/camera/advice/AdvisingImageSaver$SessionImpl;-><init>(Lcom/android/camera/util/ImageRotationCalculator;Lcom/android/camera/advice/AdviceManager;Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;)V

    goto :goto_0
.end method
