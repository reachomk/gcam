.class final Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$53;
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
        "Lcom/google/android/libraries/smartburst/segmentation/SegmentFilter;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic val$stackSize:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 1258
    iput p1, p0, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$53;->val$stackSize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic create(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 1258
    .line 2262
    new-instance v1, Lcom/google/android/libraries/smartburst/segmentation/filters/FrameDropperSegmentFilter;

    const-class v0, Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    .line 3085
    const-string v2, "default"

    invoke-virtual {p1, v0, v2}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2264
    check-cast v0, Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    iget v2, p0, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$53;->val$stackSize:I

    invoke-direct {v1, v0, v2}, Lcom/google/android/libraries/smartburst/segmentation/filters/FrameDropperSegmentFilter;-><init>(Lcom/google/android/libraries/smartburst/selection/FrameDropper;I)V

    .line 2268
    const-class v0, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    const-string v2, "panning_content_value"

    invoke-virtual {p1, v0, v2}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    .line 2272
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/android/libraries/smartburst/segmentation/SegmentFilter;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    new-instance v3, Lcom/google/android/libraries/smartburst/postprocessing/ContentValueSegmentFilter;

    const v4, 0x3f4ccccd    # 0.8f

    const/4 v5, 0x5

    invoke-direct {v3, v0, v4, v5}, Lcom/google/android/libraries/smartburst/postprocessing/ContentValueSegmentFilter;-><init>(Lcom/google/android/libraries/smartburst/scoring/FrameScorer;FI)V

    aput-object v3, v2, v1

    invoke-static {v2}, Lcom/google/android/libraries/smartburst/segmentation/filters/ChainedSegmentFilter;->forFilters([Lcom/google/android/libraries/smartburst/segmentation/SegmentFilter;)Lcom/google/android/libraries/smartburst/segmentation/filters/ChainedSegmentFilter;

    move-result-object v0

    .line 1258
    return-object v0
.end method
