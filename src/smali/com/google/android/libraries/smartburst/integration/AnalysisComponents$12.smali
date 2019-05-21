.class final Lcom/google/android/libraries/smartburst/integration/AnalysisComponents$12;
.super Ljava/lang/Object;
.source "AnalysisComponents.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/integration/Instantiator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/smartburst/integration/AnalysisComponents;->configure(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;Lcom/google/android/libraries/smartburst/filterfw/MffContext;Lcom/google/android/libraries/smartburst/integration/BurstMode;[Lcom/google/android/libraries/smartburst/filterfw/GraphFactory;Lcom/google/android/libraries/smartburst/filterfw/VideoFrameProvider;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/libraries/smartburst/media/BitmapAllocator;Ljava/util/EnumSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/libraries/smartburst/integration/Instantiator",
        "<",
        "Lcom/google/android/libraries/smartburst/pipeline/BitmapLoaderSummaryPipeline;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic val$context:Lcom/google/android/libraries/smartburst/filterfw/MffContext;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/integration/AnalysisComponents$12;->val$context:Lcom/google/android/libraries/smartburst/filterfw/MffContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic create(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 282
    .line 1285
    new-instance v0, Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/integration/AnalysisComponents$12;->val$context:Lcom/google/android/libraries/smartburst/filterfw/MffContext;

    const-class v2, Lcom/google/android/libraries/smartburst/filterfw/VideoFrameProvider;

    .line 2085
    const-string v3, "default"

    invoke-virtual {p1, v2, v3}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1287
    check-cast v2, Lcom/google/android/libraries/smartburst/filterfw/VideoFrameProvider;

    new-instance v3, Lcom/google/android/libraries/smartburst/buffers/BurstAcquisitionBuffer;

    const-class v4, Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    .line 3085
    const-string v5, "default"

    invoke-virtual {p1, v4, v5}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 1288
    check-cast v4, Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    const-class v5, Lcom/google/android/libraries/smartburst/media/JpegConversionProcessor;

    .line 4085
    const-string v6, "default"

    invoke-virtual {p1, v5, v6}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 1289
    check-cast v5, Lcom/google/android/libraries/smartburst/media/BitmapProcessor;

    const/16 v6, 0x9

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/libraries/smartburst/buffers/BurstAcquisitionBuffer;-><init>(Lcom/google/android/libraries/smartburst/selection/FrameDropper;Lcom/google/android/libraries/smartburst/media/BitmapProcessor;I)V

    const-class v4, Lcom/google/android/libraries/smartburst/media/SummaryBuilder;

    .line 5085
    const-string v5, "default"

    invoke-virtual {p1, v4, v5}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 1291
    check-cast v4, Lcom/google/android/libraries/smartburst/media/SummaryBuilder;

    new-instance v5, Lcom/google/android/libraries/smartburst/graphs/BurstAcquisitionGraphFactory;

    invoke-direct {v5}, Lcom/google/android/libraries/smartburst/graphs/BurstAcquisitionGraphFactory;-><init>()V

    const-string v6, "screen-res-acquisition-pipeline"

    invoke-direct/range {v0 .. v6}, Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Lcom/google/android/libraries/smartburst/filterfw/VideoFrameProvider;Lcom/google/android/libraries/smartburst/buffers/FrameConsumer;Lcom/google/android/libraries/smartburst/media/SummaryBuilder;Lcom/google/android/libraries/smartburst/filterfw/GraphFactory;Ljava/lang/String;)V

    .line 282
    return-object v0
.end method
