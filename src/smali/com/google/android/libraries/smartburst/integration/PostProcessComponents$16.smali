.class final Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$16;
.super Ljava/lang/Object;
.source "PostProcessComponents.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/integration/Instantiator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/integration/PostProcessComponents;
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
        "Lcom/google/android/libraries/smartburst/segmentation/Resegmenter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 662
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic create(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;)Ljava/lang/Object;
    .locals 8

    .prologue
    const/4 v7, 0x3

    .line 662
    .line 1674
    const-class v0, Lcom/google/android/libraries/smartburst/storage/MetadataStore;

    .line 2085
    const-string v1, "default"

    invoke-virtual {p1, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1674
    check-cast v0, Lcom/google/android/libraries/smartburst/storage/MetadataStore;

    .line 1675
    const-class v1, Lcom/google/android/libraries/smartburst/similarity/FrameDistanceMetric;

    const-string v2, "chroma_histogram_frame_distance_metric"

    .line 1676
    invoke-virtual {p1, v1, v2}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/smartburst/similarity/FrameDistanceMetric;

    .line 1678
    const-class v2, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    const-string v3, "post_proc_quality_metric"

    invoke-virtual {p1, v2, v3}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    .line 1680
    const/4 v3, 0x6

    new-array v4, v3, [Lcom/google/android/libraries/smartburst/segmentation/Resegmenter;

    const/4 v5, 0x0

    const-class v3, Lcom/google/android/libraries/smartburst/segmentation/Resegmenter;

    const-string v6, "continuous_action"

    .line 1681
    invoke-virtual {p1, v3, v6}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/libraries/smartburst/segmentation/Resegmenter;

    aput-object v3, v4, v5

    const/4 v3, 0x1

    new-instance v5, Lcom/google/android/libraries/smartburst/segmentation/BestSegmentSelector;

    invoke-direct {v5, v2}, Lcom/google/android/libraries/smartburst/segmentation/BestSegmentSelector;-><init>(Lcom/google/android/libraries/smartburst/scoring/FrameScorer;)V

    aput-object v5, v4, v3

    const/4 v5, 0x2

    const-class v3, Lcom/google/android/libraries/smartburst/segmentation/Resegmenter;

    const-string v6, "image_sharpness_filter"

    .line 1683
    invoke-virtual {p1, v3, v6}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/libraries/smartburst/segmentation/Resegmenter;

    aput-object v3, v4, v5

    const-class v3, Lcom/google/android/libraries/smartburst/segmentation/Resegmenter;

    const-string v5, "face_quality_filter"

    .line 1684
    invoke-virtual {p1, v3, v5}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/libraries/smartburst/segmentation/Resegmenter;

    aput-object v3, v4, v7

    const/4 v3, 0x4

    new-instance v5, Lcom/google/android/libraries/smartburst/segmentation/filters/DiverseFrameSegmentFilter;

    invoke-direct {v5, v0, v2, v1, v7}, Lcom/google/android/libraries/smartburst/segmentation/filters/DiverseFrameSegmentFilter;-><init>(Lcom/google/android/libraries/smartburst/storage/MetadataStore;Lcom/google/android/libraries/smartburst/scoring/FrameScorer;Lcom/google/android/libraries/smartburst/similarity/FrameDistanceMetric;I)V

    aput-object v5, v4, v3

    const/4 v0, 0x5

    new-instance v1, Lcom/google/android/libraries/smartburst/segmentation/selectors/MinCountSegmentSelector;

    invoke-direct {v1, v7}, Lcom/google/android/libraries/smartburst/segmentation/selectors/MinCountSegmentSelector;-><init>(I)V

    aput-object v1, v4, v0

    .line 1680
    invoke-static {v4}, Lcom/google/android/libraries/smartburst/segmentation/ChainedSegmenter;->of([Lcom/google/android/libraries/smartburst/segmentation/Resegmenter;)Lcom/google/android/libraries/smartburst/segmentation/ChainedSegmenter;

    move-result-object v0

    .line 662
    return-object v0
.end method
