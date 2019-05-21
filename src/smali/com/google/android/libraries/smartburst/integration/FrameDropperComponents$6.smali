.class final Lcom/google/android/libraries/smartburst/integration/FrameDropperComponents$6;
.super Ljava/lang/Object;
.source "FrameDropperComponents.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/integration/Instantiator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/smartburst/integration/FrameDropperComponents;->configureAUC$51666RRD5TJMURR7DHIIUOBECHP6UQB45TM6IOJIC5P6IPBJ5TPMQOBIEHH7ASJJEGNMIRJKCLJN4OBKD5NMSBQ3DTMN0RRECLN78HJ1CDQ6USJP7D662RJ4E9NMIP1FCDNMST35DPQ2UGRFDPQ6AU3K7CKLC___(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;)V
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
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic create(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 210
    .line 1213
    const-class v0, Lcom/google/android/libraries/smartburst/buffers/FeatureTable;

    .line 2085
    const-string v1, "default"

    invoke-virtual {p1, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1213
    check-cast v0, Lcom/google/android/libraries/smartburst/buffers/FeatureTable;

    .line 2160
    new-instance v1, Lcom/google/android/libraries/smartburst/scoring/LinearWeightedFrameScorer$Builder;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/scoring/LinearWeightedFrameScorer$Builder;-><init>()V

    .line 1214
    sget-object v2, Lcom/google/android/libraries/smartburst/utils/FeatureType;->FACE_IS_LEFT_EYE_OPEN_AGGREGATE_SCORE:Lcom/google/android/libraries/smartburst/utils/FeatureType;

    .line 1215
    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/libraries/smartburst/scoring/LinearWeightedFrameScorer$Builder;->addSingleFeature(Lcom/google/android/libraries/smartburst/buffers/FeatureTable;Lcom/google/android/libraries/smartburst/utils/FeatureType;F)Lcom/google/android/libraries/smartburst/scoring/LinearWeightedFrameScorer$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/libraries/smartburst/utils/FeatureType;->FACE_IS_RIGHT_EYE_OPEN_AGGREGATE_SCORE:Lcom/google/android/libraries/smartburst/utils/FeatureType;

    .line 1217
    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/libraries/smartburst/scoring/LinearWeightedFrameScorer$Builder;->addSingleFeature(Lcom/google/android/libraries/smartburst/buffers/FeatureTable;Lcom/google/android/libraries/smartburst/utils/FeatureType;F)Lcom/google/android/libraries/smartburst/scoring/LinearWeightedFrameScorer$Builder;

    move-result-object v0

    .line 1219
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/scoring/LinearWeightedFrameScorer$Builder;->build()Lcom/google/android/libraries/smartburst/scoring/LinearWeightedFrameScorer;

    move-result-object v0

    .line 210
    return-object v0
.end method
