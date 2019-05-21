.class final Lcom/google/android/libraries/smartburst/integration/AnalysisComponents$15;
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
        "Lcom/google/android/libraries/smartburst/analysis/FeatureExtractor;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic val$context:Lcom/google/android/libraries/smartburst/filterfw/MffContext;

.field private synthetic val$graphFactories:[Lcom/google/android/libraries/smartburst/filterfw/GraphFactory;


# direct methods
.method constructor <init>([Lcom/google/android/libraries/smartburst/filterfw/GraphFactory;Lcom/google/android/libraries/smartburst/filterfw/MffContext;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/integration/AnalysisComponents$15;->val$graphFactories:[Lcom/google/android/libraries/smartburst/filterfw/GraphFactory;

    iput-object p2, p0, Lcom/google/android/libraries/smartburst/integration/AnalysisComponents$15;->val$context:Lcom/google/android/libraries/smartburst/filterfw/MffContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic create(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;)Ljava/lang/Object;
    .locals 10

    .prologue
    .line 322
    .line 1325
    const-class v0, Lcom/google/android/libraries/smartburst/analysis/FeatureExtractionGraphTransformer;

    .line 2085
    const-string v1, "default"

    invoke-virtual {p1, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1325
    check-cast v0, Lcom/google/android/libraries/smartburst/analysis/FeatureExtractionGraphTransformer;

    .line 1327
    const-class v1, Lcom/google/android/libraries/smartburst/buffers/FeatureTable;

    .line 3085
    const-string v2, "default"

    invoke-virtual {p1, v1, v2}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1327
    check-cast v1, Lcom/google/android/libraries/smartburst/buffers/FeatureTable;

    .line 1330
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 1332
    iget-object v5, p0, Lcom/google/android/libraries/smartburst/integration/AnalysisComponents$15;->val$graphFactories:[Lcom/google/android/libraries/smartburst/filterfw/GraphFactory;

    array-length v6, v5

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v6, :cond_0

    aget-object v7, v5, v3

    .line 1333
    iget-object v8, p0, Lcom/google/android/libraries/smartburst/integration/AnalysisComponents$15;->val$context:Lcom/google/android/libraries/smartburst/filterfw/MffContext;

    const-class v2, Lcom/google/android/libraries/smartburst/filterfw/VideoFrameProvider;

    .line 4085
    const-string v9, "default"

    invoke-virtual {p1, v2, v9}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1335
    check-cast v2, Lcom/google/android/libraries/smartburst/filterfw/VideoFrameProvider;

    .line 1334
    invoke-static {v8, v2, v7}, Lcom/google/android/libraries/smartburst/analysis/FeatureExtractionGraph$Builder;->getFeatureExtractionGraphFromFactory(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Lcom/google/android/libraries/smartburst/filterfw/VideoFrameProvider;Lcom/google/android/libraries/smartburst/filterfw/GraphFactory;)Lcom/google/android/libraries/smartburst/analysis/FeatureExtractionGraph;

    move-result-object v2

    .line 1337
    new-instance v7, Lcom/google/android/libraries/smartburst/analysis/FilterFwFeatureExtractor;

    .line 1338
    invoke-interface {v0, v2}, Lcom/google/android/libraries/smartburst/analysis/FeatureExtractionGraphTransformer;->transform(Lcom/google/android/libraries/smartburst/analysis/FeatureExtractionGraph;)Lcom/google/android/libraries/smartburst/analysis/FeatureExtractionGraph;

    move-result-object v2

    invoke-direct {v7, v2, v1}, Lcom/google/android/libraries/smartburst/analysis/FilterFwFeatureExtractor;-><init>(Lcom/google/android/libraries/smartburst/analysis/FeatureExtractionGraph;Lcom/google/android/libraries/smartburst/buffers/FeatureTable;)V

    .line 1337
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1332
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 1341
    :cond_0
    new-instance v2, Lcom/google/android/libraries/smartburst/analysis/TimestampFeatureExtractor;

    const-class v0, Lcom/google/android/libraries/smartburst/filterfw/VideoFrameProvider;

    .line 5085
    const-string v3, "default"

    invoke-virtual {p1, v0, v3}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1342
    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/VideoFrameProvider;

    invoke-direct {v2, v0, v1}, Lcom/google/android/libraries/smartburst/analysis/TimestampFeatureExtractor;-><init>(Lcom/google/android/libraries/smartburst/filterfw/VideoFrameProvider;Lcom/google/android/libraries/smartburst/buffers/FeatureTable;)V

    .line 1341
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1344
    new-instance v0, Lcom/google/android/libraries/smartburst/analysis/MultiFeatureExtractor;

    invoke-direct {v0, v4}, Lcom/google/android/libraries/smartburst/analysis/MultiFeatureExtractor;-><init>(Ljava/util/List;)V

    .line 322
    return-object v0
.end method
