.class final Lcom/google/android/libraries/smartburst/integration/AnalysisComponents$5;
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
        "Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic val$context:Lcom/google/android/libraries/smartburst/filterfw/MffContext;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/integration/AnalysisComponents$5;->val$context:Lcom/google/android/libraries/smartburst/filterfw/MffContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic create(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 203
    .line 1206
    new-instance v0, Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/integration/AnalysisComponents$5;->val$context:Lcom/google/android/libraries/smartburst/filterfw/MffContext;

    const-class v2, Lcom/google/android/libraries/smartburst/filterfw/VideoFrameProvider;

    .line 2085
    const-string v3, "default"

    invoke-virtual {p1, v2, v3}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1207
    check-cast v2, Lcom/google/android/libraries/smartburst/filterfw/VideoFrameProvider;

    const-class v3, Lcom/google/android/libraries/smartburst/buffers/FrameDropListeningFrameBuffer;

    const-string v4, "low-res-acquisition-pipeline"

    .line 1208
    invoke-virtual {p1, v3, v4}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/libraries/smartburst/buffers/FrameConsumer;

    const-class v4, Lcom/google/android/libraries/smartburst/media/SummaryBuilder;

    const-string v5, "low-res-acquisition-pipeline"

    .line 1210
    invoke-virtual {p1, v4, v5}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/libraries/smartburst/media/SummaryBuilder;

    new-instance v5, Lcom/google/android/libraries/smartburst/graphs/LowResAcquisitionGraphFactory;

    invoke-direct {v5}, Lcom/google/android/libraries/smartburst/graphs/LowResAcquisitionGraphFactory;-><init>()V

    const-string v6, "low-res-acquisition-pipeline"

    invoke-direct/range {v0 .. v6}, Lcom/google/android/libraries/smartburst/pipeline/BurstAcquisitionPipeline;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Lcom/google/android/libraries/smartburst/filterfw/VideoFrameProvider;Lcom/google/android/libraries/smartburst/buffers/FrameConsumer;Lcom/google/android/libraries/smartburst/media/SummaryBuilder;Lcom/google/android/libraries/smartburst/filterfw/GraphFactory;Ljava/lang/String;)V

    .line 203
    return-object v0
.end method
