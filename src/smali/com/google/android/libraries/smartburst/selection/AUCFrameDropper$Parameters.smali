.class public final Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;
.super Ljava/lang/Object;
.source "AUCFrameDropper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Parameters"
.end annotation


# instance fields
.field public motionBlurScorer:Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

.field public motionExponent:F

.field public final motionScorer:Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

.field public final qualityScorer:Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

.field public rejectFilter:Lcom/google/android/libraries/smartburst/selection/FrameFilter;

.field public final sharpnessScorer:Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

.field public smoothRadiusMs:F

.field public smoothSigmaMs:F

.field public stackObjectiveMotionWeight:F

.field public stackObjectiveQualityWeight:F

.field public stackObjectiveSharpnessWeight:F

.field public thresholdMotionFraction:F

.field public transformedMotionFloorFraction:F

.field public variationMethod:Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$VariationMethod;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/scoring/FrameScorer;Lcom/google/android/libraries/smartburst/scoring/FrameScorer;Lcom/google/android/libraries/smartburst/scoring/FrameScorer;)V
    .locals 2

    .prologue
    const v1, 0x3dcccccd    # 0.1f

    .line 854
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 816
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;->motionExponent:F

    .line 819
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;->thresholdMotionFraction:F

    .line 825
    const v0, 0x3c23d70a    # 0.01f

    iput v0, p0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;->transformedMotionFloorFraction:F

    .line 828
    const/high16 v0, 0x437a0000    # 250.0f

    iput v0, p0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;->smoothSigmaMs:F

    .line 831
    const/high16 v0, 0x43fa0000    # 500.0f

    iput v0, p0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;->smoothRadiusMs:F

    .line 834
    iput v1, p0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;->stackObjectiveSharpnessWeight:F

    .line 837
    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;->stackObjectiveQualityWeight:F

    .line 840
    iput v1, p0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;->stackObjectiveMotionWeight:F

    .line 843
    sget-object v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$VariationMethod;->VARIANCE:Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$VariationMethod;

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;->variationMethod:Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$VariationMethod;

    .line 855
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 857
    invoke-static {p3}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 859
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;->motionScorer:Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    .line 860
    iput-object p2, p0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;->qualityScorer:Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    .line 861
    iput-object p3, p0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper$Parameters;->sharpnessScorer:Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    .line 862
    return-void
.end method
