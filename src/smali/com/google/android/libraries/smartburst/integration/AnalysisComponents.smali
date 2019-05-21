.class public Lcom/google/android/libraries/smartburst/integration/AnalysisComponents;
.super Ljava/lang/Object;
.source "AnalysisComponents.java"


# instance fields
.field private final cameraDeviceFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final characteristics:Lcom/android/camera/one/OneCameraCharacteristics;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/android/camera/one/OneCameraCharacteristics;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;",
            ">;",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            ")V"
        }
    .end annotation

    .prologue
    .line 10020
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10021
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/integration/AnalysisComponents;->cameraDeviceFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 10022
    iput-object p2, p0, Lcom/google/android/libraries/smartburst/integration/AnalysisComponents;->characteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 10023
    return-void
.end method

.method public static configure(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;Lcom/google/android/libraries/smartburst/filterfw/MffContext;Lcom/google/android/libraries/smartburst/integration/BurstMode;[Lcom/google/android/libraries/smartburst/filterfw/GraphFactory;Lcom/google/android/libraries/smartburst/filterfw/VideoFrameProvider;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/libraries/smartburst/media/BitmapAllocator;Ljava/util/EnumSet;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/smartburst/integration/ComponentFactory;",
            "Lcom/google/android/libraries/smartburst/filterfw/MffContext;",
            "Lcom/google/android/libraries/smartburst/integration/BurstMode;",
            "[",
            "Lcom/google/android/libraries/smartburst/filterfw/GraphFactory;",
            "Lcom/google/android/libraries/smartburst/filterfw/VideoFrameProvider;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/io/File;",
            ">;",
            "Lcom/google/android/libraries/smartburst/media/BitmapAllocator;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/google/android/libraries/smartburst/utils/FeatureType;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->disallowOverrides()V

    .line 137
    const-class v0, Lcom/google/android/libraries/smartburst/filterfw/VideoFrameProvider;

    .line 1263
    const-string v1, "default"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    .line 137
    new-instance v1, Lcom/google/android/libraries/smartburst/integration/AnalysisComponents$1;

    invoke-direct {v1, p4}, Lcom/google/android/libraries/smartburst/integration/AnalysisComponents$1;-><init>(Lcom/google/android/libraries/smartburst/filterfw/VideoFrameProvider;)V

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 147
    const-class v0, Lcom/google/android/libraries/smartburst/pipeline/BitmapLoaderSummaryPipeline;

    const-string v1, "low-res-acquisition-pipeline"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/AnalysisComponents$2;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/AnalysisComponents$2;-><init>()V

    .line 148
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 157
    const-class v0, Lcom/google/android/libraries/smartburst/pipeline/BitmapLoaderSummaryPipeline;

    const-string v1, "med-res-acquisition-pipeline"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/AnalysisComponents$3;

    invoke-direct {v1, p2}, Lcom/google/android/libraries/smartburst/integration/AnalysisComponents$3;-><init>(Lcom/google/android/libraries/smartburst/integration/BurstMode;)V

    .line 158
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 172
    const-class v0, Lcom/google/android/libraries/smartburst/pipeline/BitmapLoaderSummaryPipeline;

    const-string v1, "empty-acquisition-pipeline"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/AnalysisComponents$4;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/AnalysisComponents$4;-><init>()V

    .line 173
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 202
    const-class v0, Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;

    const-string v1, "low-res-acquisition-pipeline"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/AnalysisComponents$5;

    invoke-direct {v1, p1}, Lcom/google/android/libraries/smartburst/integration/AnalysisComponents$5;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;)V

    .line 203
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 216
    const-class v0, Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;

    const-string v1, "med-res-acquisition-pipeline"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/AnalysisComponents$6;

    invoke-direct {v1, p1}, Lcom/google/android/libraries/smartburst/integration/AnalysisComponents$6;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;)V

    .line 217
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 229
    const-class v0, Lcom/google/android/libraries/smartburst/buffers/FrameDropListeningFrameBuffer;

    const-string v1, "low-res-acquisition-pipeline"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/AnalysisComponents$7;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/AnalysisComponents$7;-><init>()V

    .line 230
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 240
    const-class v0, Lcom/google/android/libraries/smartburst/buffers/FrameConsumer;

    const-string v1, "med-res-acquisition-pipeline"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/AnalysisComponents$8;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/AnalysisComponents$8;-><init>()V

    .line 241
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 252
    const-class v0, Lcom/google/android/libraries/smartburst/media/BitmapSummaryInserter;

    const-string v1, "low-res-acquisition-pipeline"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/AnalysisComponents$9;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/AnalysisComponents$9;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 262
    const-class v0, Lcom/google/android/libraries/smartburst/media/BitmapSummaryInserter;

    const-string v1, "med-res-acquisition-pipeline"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/AnalysisComponents$10;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/AnalysisComponents$10;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 273
    const-class v0, Lcom/google/android/libraries/smartburst/media/BitmapAllocator;

    .line 2263
    const-string v1, "default"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    .line 273
    new-instance v1, Lcom/google/android/libraries/smartburst/integration/AnalysisComponents$11;

    invoke-direct {v1, p6}, Lcom/google/android/libraries/smartburst/integration/AnalysisComponents$11;-><init>(Lcom/google/android/libraries/smartburst/media/BitmapAllocator;)V

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 281
    const-class v0, Lcom/google/android/libraries/smartburst/pipeline/BitmapLoaderSummaryPipeline;

    .line 3263
    const-string v1, "default"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    .line 281
    new-instance v1, Lcom/google/android/libraries/smartburst/integration/AnalysisComponents$12;

    invoke-direct {v1, p1}, Lcom/google/android/libraries/smartburst/integration/AnalysisComponents$12;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;)V

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 297
    const-class v0, Lcom/google/android/libraries/smartburst/media/JpegConversionProcessor;

    .line 4263
    const-string v1, "default"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    .line 297
    new-instance v1, Lcom/google/android/libraries/smartburst/integration/AnalysisComponents$13;

    invoke-direct {v1, p5}, Lcom/google/android/libraries/smartburst/integration/AnalysisComponents$13;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;)V

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 311
    const-class v0, Lcom/google/android/libraries/smartburst/analysis/FeatureExtractionGraphTransformer;

    .line 5263
    const-string v1, "default"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    .line 311
    new-instance v1, Lcom/google/android/libraries/smartburst/integration/AnalysisComponents$14;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/AnalysisComponents$14;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 321
    const-class v0, Lcom/google/android/libraries/smartburst/analysis/FeatureExtractor;

    .line 6263
    const-string v1, "default"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    .line 321
    new-instance v1, Lcom/google/android/libraries/smartburst/integration/AnalysisComponents$15;

    invoke-direct {v1, p3, p1}, Lcom/google/android/libraries/smartburst/integration/AnalysisComponents$15;-><init>([Lcom/google/android/libraries/smartburst/filterfw/GraphFactory;Lcom/google/android/libraries/smartburst/filterfw/MffContext;)V

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 350
    const-class v0, Lcom/google/android/libraries/smartburst/pipeline/FeatureExtractionPipeline;

    .line 7263
    const-string v1, "default"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    .line 350
    new-instance v1, Lcom/google/android/libraries/smartburst/integration/AnalysisComponents$16;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/AnalysisComponents$16;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 362
    const-class v0, Lcom/google/android/libraries/smartburst/media/SummaryBuilder;

    .line 8263
    const-string v1, "default"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    .line 362
    new-instance v1, Lcom/google/android/libraries/smartburst/integration/AnalysisComponents$17;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/AnalysisComponents$17;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 369
    const-class v0, Lcom/google/android/libraries/smartburst/media/SummaryBuilder;

    const-string v1, "low-res-acquisition-pipeline"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/AnalysisComponents$18;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/AnalysisComponents$18;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 377
    const-class v0, Lcom/google/android/libraries/smartburst/media/SummaryBuilder;

    const-string v1, "med-res-acquisition-pipeline"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/AnalysisComponents$19;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/AnalysisComponents$19;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 386
    const-class v0, Lcom/google/android/libraries/smartburst/buffers/FeatureTable;

    .line 9263
    const-string v1, "default"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    .line 386
    new-instance v1, Lcom/google/android/libraries/smartburst/integration/AnalysisComponents$20;

    const/16 v2, 0xa

    invoke-direct {v1, v2, p7}, Lcom/google/android/libraries/smartburst/integration/AnalysisComponents$20;-><init>(ILjava/util/EnumSet;)V

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 395
    const-class v0, Ljava/io/File;

    const-string v1, "session-directory"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/AnalysisComponents$21;

    invoke-direct {v1, p5}, Lcom/google/android/libraries/smartburst/integration/AnalysisComponents$21;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;)V

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 403
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->allowOverrides()V

    .line 404
    return-void
.end method


# virtual methods
.method public provideCameraCharacteristics()Lcom/android/camera/one/OneCameraCharacteristics;
    .locals 1

    .prologue
    .line 10032
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/integration/AnalysisComponents;->characteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    return-object v0
.end method

.method public provideCameraDeviceFuture()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 10027
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/integration/AnalysisComponents;->cameraDeviceFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    return-object v0
.end method
