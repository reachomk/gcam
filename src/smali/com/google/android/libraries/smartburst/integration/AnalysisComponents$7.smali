.class final Lcom/google/android/libraries/smartburst/integration/AnalysisComponents$7;
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
        "Lcom/google/android/libraries/smartburst/buffers/FrameDropListeningFrameBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic create(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 230
    .line 1233
    new-instance v2, Lcom/google/android/libraries/smartburst/buffers/FrameDropListeningFrameBuffer;

    const-class v0, Lcom/google/android/libraries/smartburst/selection/EventForwardingFrameDropper;

    .line 2085
    const-string v1, "default"

    invoke-virtual {p1, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1234
    check-cast v0, Lcom/google/android/libraries/smartburst/selection/EventForwardingFrameDropper;

    const-class v1, Lcom/google/android/libraries/smartburst/media/BitmapSummaryInserter;

    const-string v3, "low-res-acquisition-pipeline"

    .line 1235
    invoke-virtual {p1, v1, v3}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/smartburst/media/BitmapProcessor;

    invoke-direct {v2, v0, v1}, Lcom/google/android/libraries/smartburst/buffers/FrameDropListeningFrameBuffer;-><init>(Lcom/google/android/libraries/smartburst/selection/EventForwardingFrameDropper;Lcom/google/android/libraries/smartburst/media/BitmapProcessor;)V

    .line 230
    return-object v2
.end method
