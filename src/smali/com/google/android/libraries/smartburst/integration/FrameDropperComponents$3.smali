.class final Lcom/google/android/libraries/smartburst/integration/FrameDropperComponents$3;
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
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic create(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;)Ljava/lang/Object;
    .locals 5

    .prologue
    const v4, 0x3d4ccccd    # 0.05f

    .line 153
    .line 1156
    const-class v0, Lcom/google/android/libraries/smartburst/buffers/FeatureTable;

    .line 2085
    const-string v1, "default"

    invoke-virtual {p1, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1156
    check-cast v0, Lcom/google/android/libraries/smartburst/buffers/FeatureTable;

    .line 2160
    new-instance v1, Lcom/google/android/libraries/smartburst/scoring/LinearWeightedFrameScorer$Builder;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/scoring/LinearWeightedFrameScorer$Builder;-><init>()V

    .line 1160
    sget-object v2, Lcom/google/android/libraries/smartburst/utils/FeatureType;->MOTION_SALIENCY:Lcom/google/android/libraries/smartburst/utils/FeatureType;

    const/high16 v3, 0x3f400000    # 0.75f

    .line 1161
    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/libraries/smartburst/scoring/LinearWeightedFrameScorer$Builder;->addSingleFeature(Lcom/google/android/libraries/smartburst/buffers/FeatureTable;Lcom/google/android/libraries/smartburst/utils/FeatureType;F)Lcom/google/android/libraries/smartburst/scoring/LinearWeightedFrameScorer$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/libraries/smartburst/utils/FeatureType;->FACE_COUNT:Lcom/google/android/libraries/smartburst/utils/FeatureType;

    .line 1163
    invoke-virtual {v1, v0, v2, v4}, Lcom/google/android/libraries/smartburst/scoring/LinearWeightedFrameScorer$Builder;->addSingleFeature(Lcom/google/android/libraries/smartburst/buffers/FeatureTable;Lcom/google/android/libraries/smartburst/utils/FeatureType;F)Lcom/google/android/libraries/smartburst/scoring/LinearWeightedFrameScorer$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/libraries/smartburst/utils/FeatureType;->FACE_IS_LEFT_EYE_OPEN_AGGREGATE_SCORE:Lcom/google/android/libraries/smartburst/utils/FeatureType;

    .line 1165
    invoke-virtual {v1, v0, v2, v4}, Lcom/google/android/libraries/smartburst/scoring/LinearWeightedFrameScorer$Builder;->addSingleFeature(Lcom/google/android/libraries/smartburst/buffers/FeatureTable;Lcom/google/android/libraries/smartburst/utils/FeatureType;F)Lcom/google/android/libraries/smartburst/scoring/LinearWeightedFrameScorer$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/libraries/smartburst/utils/FeatureType;->FACE_IS_RIGHT_EYE_OPEN_AGGREGATE_SCORE:Lcom/google/android/libraries/smartburst/utils/FeatureType;

    .line 1168
    invoke-virtual {v1, v0, v2, v4}, Lcom/google/android/libraries/smartburst/scoring/LinearWeightedFrameScorer$Builder;->addSingleFeature(Lcom/google/android/libraries/smartburst/buffers/FeatureTable;Lcom/google/android/libraries/smartburst/utils/FeatureType;F)Lcom/google/android/libraries/smartburst/scoring/LinearWeightedFrameScorer$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/libraries/smartburst/utils/FeatureType;->FACE_IS_SMILING_AGGREGATE_SCORE:Lcom/google/android/libraries/smartburst/utils/FeatureType;

    const v3, 0x3dcccccd    # 0.1f

    .line 1171
    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/libraries/smartburst/scoring/LinearWeightedFrameScorer$Builder;->addSingleFeature(Lcom/google/android/libraries/smartburst/buffers/FeatureTable;Lcom/google/android/libraries/smartburst/utils/FeatureType;F)Lcom/google/android/libraries/smartburst/scoring/LinearWeightedFrameScorer$Builder;

    move-result-object v1

    const-class v0, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    const-string v2, "camera_motion_score"

    .line 1174
    invoke-virtual {p1, v0, v2}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/android/libraries/smartburst/scoring/LinearWeightedFrameScorer$Builder;->addScorer(Lcom/google/android/libraries/smartburst/scoring/FrameScorer;F)Lcom/google/android/libraries/smartburst/scoring/LinearWeightedFrameScorer$Builder;

    move-result-object v0

    .line 1177
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/scoring/LinearWeightedFrameScorer$Builder;->build()Lcom/google/android/libraries/smartburst/scoring/LinearWeightedFrameScorer;

    move-result-object v0

    .line 153
    return-object v0
.end method
