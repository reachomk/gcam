.class Lcom/google/android/libraries/smartburst/scoring/FrameDropListeningScorer$1;
.super Ljava/lang/Object;
.source "FrameDropListeningScorer.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/scoring/FrameDropListeningScorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/libraries/smartburst/scoring/ExplicitNonlinearScorer$Builder;

.field final synthetic val$featureName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/smartburst/scoring/ExplicitNonlinearScorer$Builder;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1120
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/scoring/FrameDropListeningScorer$1;->this$0:Lcom/google/android/libraries/smartburst/scoring/ExplicitNonlinearScorer$Builder;

    iput-object p2, p0, Lcom/google/android/libraries/smartburst/scoring/FrameDropListeningScorer$1;->val$featureName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/android/libraries/smartburst/scoring/FrameScorer;
    .locals 4

    .prologue
    .line 1123
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/scoring/FrameDropListeningScorer$1;->this$0:Lcom/google/android/libraries/smartburst/scoring/ExplicitNonlinearScorer$Builder;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/scoring/ExplicitNonlinearScorer$Builder;->access$100(Lcom/google/android/libraries/smartburst/scoring/ExplicitNonlinearScorer$Builder;)Lcom/google/android/libraries/smartburst/scoring/FeatureScorerProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/scoring/FrameDropListeningScorer$1;->val$featureName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/libraries/smartburst/scoring/FeatureScorerProvider;->getScorerForFeature(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    move-result-object v0

    .line 1125
    if-nez v0, :cond_0

    .line 1126
    const-string v0, "ExplicitNonlinearScorer"

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/scoring/FrameDropListeningScorer$1;->val$featureName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x24

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Feature "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found. Defaulting to 0."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    new-instance v0, Lcom/google/android/libraries/smartburst/scoring/ConstantScorer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/libraries/smartburst/scoring/ConstantScorer;-><init>(F)V

    .line 1129
    :cond_0
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2120
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/scoring/FrameDropListeningScorer$1;->get()Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    move-result-object v0

    return-object v0
.end method
