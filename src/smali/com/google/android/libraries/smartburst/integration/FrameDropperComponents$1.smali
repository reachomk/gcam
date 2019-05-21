.class final Lcom/google/android/libraries/smartburst/integration/FrameDropperComponents$1;
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
        "Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic create(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;)Ljava/lang/Object;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const v5, 0x3dcccccd    # 0.1f

    .line 114
    .line 1117
    new-instance v3, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;

    const-class v0, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    const-string v1, "auc_motion_saliency"

    .line 1118
    invoke-virtual {p1, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    const-class v1, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    const-string v2, "auc_quality"

    .line 1119
    invoke-virtual {p1, v1, v2}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    const-class v2, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    const-string v4, "auc_sharpness"

    .line 1120
    invoke-virtual {p1, v2, v4}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;-><init>(Lcom/google/android/libraries/smartburst/scoring/FrameScorer;Lcom/google/android/libraries/smartburst/scoring/FrameScorer;Lcom/google/android/libraries/smartburst/scoring/FrameScorer;)V

    .line 1122
    iput-object v6, v3, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;->motionBlurScorer:Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    .line 1123
    iput-object v6, v3, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;->rejectFilter:Lcom/google/android/libraries/smartburst/selection/FrameFilter;

    .line 1124
    const v0, 0x3f8ccccd    # 1.1f

    iput v0, v3, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;->motionExponent:F

    .line 1125
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, v3, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;->thresholdMotionFraction:F

    .line 1127
    const v0, 0x3c23d70a    # 0.01f

    iput v0, v3, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;->transformedMotionFloorFraction:F

    .line 1128
    const/high16 v0, 0x437a0000    # 250.0f

    iput v0, v3, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;->smoothSigmaMs:F

    .line 1129
    const/high16 v0, 0x43fa0000    # 500.0f

    iput v0, v3, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;->smoothRadiusMs:F

    .line 1130
    iput v5, v3, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;->stackObjectiveSharpnessWeight:F

    .line 1131
    const v0, 0x3e99999a    # 0.3f

    iput v0, v3, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;->stackObjectiveQualityWeight:F

    .line 1132
    iput v5, v3, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;->stackObjectiveMotionWeight:F

    .line 1134
    new-instance v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;

    invoke-direct {v0, v3}, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;-><init>(Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;)V

    .line 114
    return-object v0
.end method
