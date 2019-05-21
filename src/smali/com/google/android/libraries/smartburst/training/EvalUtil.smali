.class public Lcom/google/android/libraries/smartburst/training/EvalUtil;
.super Ljava/lang/Object;
.source "EvalUtil.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagemanagement/frame/RingBufferPolicy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/smartburst/training/EvalUtil$FeatureTableFrameScorerLogger;,
        Lcom/google/android/libraries/smartburst/training/EvalUtil$FrameScoreLogger;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/one/v2/imagemanagement/frame/RingBufferPolicy;"
    }
.end annotation


# instance fields
.field private final acceptableValues:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final key:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CaptureResult$Key;Lcom/google/common/collect/ImmutableSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CaptureResult$Key",
            "<TT;>;",
            "Lcom/google/common/collect/ImmutableSet",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1063
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1064
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/training/EvalUtil;->key:Landroid/hardware/camera2/CaptureResult$Key;

    .line 1065
    iput-object p2, p0, Lcom/google/android/libraries/smartburst/training/EvalUtil;->acceptableValues:Lcom/google/common/collect/ImmutableSet;

    .line 1066
    return-void
.end method

.method public static injectCaptureLogging(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;Lcom/google/android/libraries/smartburst/training/LogCollectionWriter;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 82
    const-class v0, Lcom/google/android/libraries/smartburst/filterfw/VideoFrameProvider;

    new-instance v1, Lcom/google/android/libraries/smartburst/training/EvalUtil$1;

    invoke-direct {v1, p1}, Lcom/google/android/libraries/smartburst/training/EvalUtil$1;-><init>(Lcom/google/android/libraries/smartburst/training/LogCollectionWriter;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->wrapInstances(Ljava/lang/Class;Lcom/google/android/libraries/smartburst/integration/ComponentFactory$InstanceWrapper;)V

    .line 95
    const-string v0, "live_framescores.csv"

    invoke-virtual {p1, v0, v3}, Lcom/google/android/libraries/smartburst/training/LogCollectionWriter;->newValueLog(Ljava/lang/String;Z)Lcom/google/android/libraries/smartburst/training/ValueLog;

    move-result-object v0

    .line 96
    const-class v1, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    new-instance v2, Lcom/google/android/libraries/smartburst/training/EvalUtil$2;

    invoke-direct {v2, v0}, Lcom/google/android/libraries/smartburst/training/EvalUtil$2;-><init>(Lcom/google/android/libraries/smartburst/training/ValueLog;)V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->wrapInstances(Ljava/lang/Class;Lcom/google/android/libraries/smartburst/integration/ComponentFactory$InstanceWrapper;)V

    .line 105
    const-string v0, "frame_dropper_events.csv"

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/training/LogCollectionWriter;->newStringWriter(Ljava/lang/String;)Ljava/io/StringWriter;

    move-result-object v0

    .line 106
    const-class v1, Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    new-instance v2, Lcom/google/android/libraries/smartburst/training/EvalUtil$3;

    invoke-direct {v2, v0}, Lcom/google/android/libraries/smartburst/training/EvalUtil$3;-><init>(Ljava/io/StringWriter;)V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->wrapInstances(Ljava/lang/Class;Lcom/google/android/libraries/smartburst/integration/ComponentFactory$InstanceWrapper;)V

    .line 119
    const-string v0, "live_features.csv"

    invoke-virtual {p1, v0, v3}, Lcom/google/android/libraries/smartburst/training/LogCollectionWriter;->newValueLog(Ljava/lang/String;Z)Lcom/google/android/libraries/smartburst/training/ValueLog;

    move-result-object v0

    .line 120
    const-class v1, Lcom/google/android/libraries/smartburst/scoring/FeatureTableFrameScorer;

    new-instance v2, Lcom/google/android/libraries/smartburst/training/EvalUtil$4;

    invoke-direct {v2, v0}, Lcom/google/android/libraries/smartburst/training/EvalUtil$4;-><init>(Lcom/google/android/libraries/smartburst/training/ValueLog;)V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->wrapInstances(Ljava/lang/Class;Lcom/google/android/libraries/smartburst/integration/ComponentFactory$InstanceWrapper;)V

    .line 130
    const-class v0, Lcom/google/android/libraries/smartburst/media/SummaryBuilder;

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/training/EvalUtil$5;

    invoke-direct {v1, p1}, Lcom/google/android/libraries/smartburst/training/EvalUtil$5;-><init>(Lcom/google/android/libraries/smartburst/training/LogCollectionWriter;)V

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 143
    const-class v0, Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;

    const-string v1, "low-res-acquisition-pipeline"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/training/EvalUtil$6;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/training/EvalUtil$6;-><init>()V

    .line 145
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 156
    const-class v0, Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;

    const-string v1, "med-res-acquisition-pipeline"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/training/EvalUtil$7;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/training/EvalUtil$7;-><init>()V

    .line 158
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 169
    const-class v0, Lcom/google/android/libraries/smartburst/pipeline/BitmapLoaderSummaryPipeline;

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/training/EvalUtil$8;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/training/EvalUtil$8;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 178
    const-class v0, Lcom/google/android/libraries/smartburst/buffers/FeatureTable;

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/training/EvalUtil$9;

    invoke-direct {v1, p1}, Lcom/google/android/libraries/smartburst/training/EvalUtil$9;-><init>(Lcom/google/android/libraries/smartburst/training/LogCollectionWriter;)V

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 193
    const-string v0, "feature_additions.csv"

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/training/LogCollectionWriter;->newStringWriter(Ljava/lang/String;)Ljava/io/StringWriter;

    move-result-object v0

    .line 194
    const-class v1, Lcom/google/android/libraries/smartburst/buffers/FeatureTable;

    new-instance v2, Lcom/google/android/libraries/smartburst/training/EvalUtil$10;

    invoke-direct {v2, v0}, Lcom/google/android/libraries/smartburst/training/EvalUtil$10;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->wrapInstances(Ljava/lang/Class;Lcom/google/android/libraries/smartburst/integration/ComponentFactory$InstanceWrapper;)V

    .line 204
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->getConfigWriter()Lcom/google/android/libraries/smartburst/training/LogWriter;

    move-result-object v0

    .line 205
    const-string v1, "capture_config.txt"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/libraries/smartburst/training/LogCollectionWriter;->addLogWriter(Ljava/lang/String;Lcom/google/android/libraries/smartburst/training/LogWriter;)V

    .line 206
    return-void
.end method

.method public static injectPostProcessLogging(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;Lcom/google/android/libraries/smartburst/training/LogCollectionWriter;)V
    .locals 3

    .prologue
    .line 211
    const-string v0, "segmentation.txt"

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/training/LogCollectionWriter;->newStringWriter(Ljava/lang/String;)Ljava/io/StringWriter;

    move-result-object v0

    .line 212
    const-class v1, Lcom/google/android/libraries/smartburst/segmentation/Resegmenter;

    new-instance v2, Lcom/google/android/libraries/smartburst/training/EvalUtil$11;

    invoke-direct {v2, v0}, Lcom/google/android/libraries/smartburst/training/EvalUtil$11;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->wrapInstances(Ljava/lang/Class;Lcom/google/android/libraries/smartburst/integration/ComponentFactory$InstanceWrapper;)V

    .line 226
    const-class v0, Lcom/google/android/libraries/smartburst/similarity/FeatureRowDistanceMetric;

    new-instance v1, Lcom/google/android/libraries/smartburst/training/EvalUtil$12;

    invoke-direct {v1, p1}, Lcom/google/android/libraries/smartburst/training/EvalUtil$12;-><init>(Lcom/google/android/libraries/smartburst/training/LogCollectionWriter;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->wrapInstances(Ljava/lang/Class;Lcom/google/android/libraries/smartburst/integration/ComponentFactory$InstanceWrapper;)V

    .line 241
    const-string v0, "frame_sequence_distances.txt"

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/training/LogCollectionWriter;->newStringWriter(Ljava/lang/String;)Ljava/io/StringWriter;

    move-result-object v0

    .line 243
    const-class v1, Lcom/google/android/libraries/smartburst/postprocessing/FrameSegmentDistanceMetric;

    new-instance v2, Lcom/google/android/libraries/smartburst/training/EvalUtil$13;

    invoke-direct {v2, v0}, Lcom/google/android/libraries/smartburst/training/EvalUtil$13;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->wrapInstances(Ljava/lang/Class;Lcom/google/android/libraries/smartburst/integration/ComponentFactory$InstanceWrapper;)V

    .line 254
    const-string v0, "artifact_renderer.txt"

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/training/LogCollectionWriter;->newStringWriter(Ljava/lang/String;)Ljava/io/StringWriter;

    move-result-object v0

    .line 255
    const-class v1, Lcom/google/android/libraries/smartburst/artifacts/ArtifactRenderer;

    new-instance v2, Lcom/google/android/libraries/smartburst/training/EvalUtil$14;

    invoke-direct {v2, v0}, Lcom/google/android/libraries/smartburst/training/EvalUtil$14;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->wrapInstances(Ljava/lang/Class;Lcom/google/android/libraries/smartburst/integration/ComponentFactory$InstanceWrapper;)V

    .line 264
    const-class v0, Lcom/google/android/libraries/smartburst/storage/MetadataStore;

    new-instance v1, Lcom/google/android/libraries/smartburst/training/EvalUtil$15;

    invoke-direct {v1, p1}, Lcom/google/android/libraries/smartburst/training/EvalUtil$15;-><init>(Lcom/google/android/libraries/smartburst/training/LogCollectionWriter;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->wrapInstances(Ljava/lang/Class;Lcom/google/android/libraries/smartburst/integration/ComponentFactory$InstanceWrapper;)V

    .line 276
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->getConfigWriter()Lcom/google/android/libraries/smartburst/training/LogWriter;

    move-result-object v0

    .line 277
    const-string v1, "post_process_config.txt"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/libraries/smartburst/training/LogCollectionWriter;->addLogWriter(Ljava/lang/String;Lcom/google/android/libraries/smartburst/training/LogWriter;)V

    .line 278
    return-void
.end method


# virtual methods
.method public discardFrame(Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)Z
    .locals 2

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/training/EvalUtil;->acceptableValues:Lcom/google/common/collect/ImmutableSet;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/training/EvalUtil;->key:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v1}, Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
