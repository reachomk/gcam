.class final Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$62;
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
        "Lcom/google/android/libraries/smartburst/scoring/FrameScorer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic create(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;)Ljava/lang/Object;
    .locals 5

    .prologue
    const v4, 0x3f19999a    # 0.6f

    .line 1469
    .line 2473
    const-class v0, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    const-string v1, "auc_quality"

    .line 2474
    invoke-virtual {p1, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    .line 3160
    new-instance v2, Lcom/google/android/libraries/smartburst/scoring/LinearWeightedFrameScorer$Builder;

    invoke-direct {v2}, Lcom/google/android/libraries/smartburst/scoring/LinearWeightedFrameScorer$Builder;-><init>()V

    .line 2476
    const-class v1, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    const-string v3, "color_diversity"

    .line 2477
    invoke-virtual {p1, v1, v3}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    const v3, 0x3983126f    # 2.5E-4f

    invoke-virtual {v2, v1, v3}, Lcom/google/android/libraries/smartburst/scoring/LinearWeightedFrameScorer$Builder;->addScorer(Lcom/google/android/libraries/smartburst/scoring/FrameScorer;F)Lcom/google/android/libraries/smartburst/scoring/LinearWeightedFrameScorer$Builder;

    move-result-object v2

    const-class v1, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    const-string v3, "time_gap_score"

    .line 2479
    invoke-virtual {p1, v1, v3}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    const v3, 0x3dcccccd    # 0.1f

    invoke-virtual {v2, v1, v3}, Lcom/google/android/libraries/smartburst/scoring/LinearWeightedFrameScorer$Builder;->addScorer(Lcom/google/android/libraries/smartburst/scoring/FrameScorer;F)Lcom/google/android/libraries/smartburst/scoring/LinearWeightedFrameScorer$Builder;

    move-result-object v1

    .line 2481
    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/scoring/LinearWeightedFrameScorer$Builder;->build()Lcom/google/android/libraries/smartburst/scoring/LinearWeightedFrameScorer;

    move-result-object v1

    .line 4160
    new-instance v2, Lcom/google/android/libraries/smartburst/scoring/LinearWeightedFrameScorer$Builder;

    invoke-direct {v2}, Lcom/google/android/libraries/smartburst/scoring/LinearWeightedFrameScorer$Builder;-><init>()V

    .line 2483
    invoke-virtual {v2, v0, v4}, Lcom/google/android/libraries/smartburst/scoring/LinearWeightedFrameScorer$Builder;->addScorer(Lcom/google/android/libraries/smartburst/scoring/FrameScorer;F)Lcom/google/android/libraries/smartburst/scoring/LinearWeightedFrameScorer$Builder;

    move-result-object v0

    .line 2485
    invoke-virtual {v0, v1, v4}, Lcom/google/android/libraries/smartburst/scoring/LinearWeightedFrameScorer$Builder;->addScorer(Lcom/google/android/libraries/smartburst/scoring/FrameScorer;F)Lcom/google/android/libraries/smartburst/scoring/LinearWeightedFrameScorer$Builder;

    move-result-object v0

    .line 2487
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/scoring/LinearWeightedFrameScorer$Builder;->build()Lcom/google/android/libraries/smartburst/scoring/LinearWeightedFrameScorer;

    move-result-object v0

    .line 1469
    return-object v0
.end method
