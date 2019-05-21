.class final Lcom/android/camera/one/v2/smartmetering/AutoHdrPlusGcamRecommendation;
.super Lcom/google/android/apps/camera/async/TransformedObservable;
.source "AutoHdrPlusGcamRecommendation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/camera/async/TransformedObservable",
        "<",
        "Lcom/google/googlex/gcam/AeResults;",
        "Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;",
        ">;"
    }
.end annotation


# instance fields
.field private final oneCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "GcamAHDRPlusRec"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/one/OneCameraCharacteristics;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/google/googlex/gcam/AeResults;",
            ">;",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/async/TransformedObservable;-><init>(Lcom/google/android/apps/camera/async/Observable;)V

    .line 40
    iput-object p2, p0, Lcom/android/camera/one/v2/smartmetering/AutoHdrPlusGcamRecommendation;->oneCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 41
    return-void
.end method


# virtual methods
.method public final synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 18
    check-cast p1, Lcom/google/googlex/gcam/AeResults;

    .line 1049
    invoke-virtual {p1}, Lcom/google/googlex/gcam/AeResults;->LogSceneBrightness()F

    move-result v0

    .line 1050
    invoke-virtual {p1}, Lcom/google/googlex/gcam/AeResults;->getPredicted_image_brightness()F

    move-result v1

    .line 1051
    invoke-virtual {p1}, Lcom/google/googlex/gcam/AeResults;->MotionValid()Z

    move-result v2

    .line 1052
    invoke-virtual {p1}, Lcom/google/googlex/gcam/AeResults;->getMotion_score()F

    move-result v3

    .line 1067
    iget-object v4, p0, Lcom/android/camera/one/v2/smartmetering/AutoHdrPlusGcamRecommendation;->oneCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v4}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v4

    sget-object v5, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v4, v5, :cond_3

    .line 1069
    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v4, v0, v4

    if-lez v4, :cond_1

    .line 1071
    if-eqz v2, :cond_0

    cmpg-float v0, v3, v6

    if-gez v0, :cond_0

    .line 1072
    sget-object v0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;->HDR_PLUS:Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;

    .line 1091
    :goto_0
    return-object v0

    .line 1074
    :cond_0
    sget-object v0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;->NORMAL:Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;

    goto :goto_0

    .line 1076
    :cond_1
    const/high16 v2, -0x3fa00000    # -3.5f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    const/high16 v0, 0x42880000    # 68.0f

    cmpg-float v0, v1, v0

    if-gez v0, :cond_2

    .line 1079
    sget-object v0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;->HDR_PLUS_WITH_TORCH:Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;

    goto :goto_0

    .line 1082
    :cond_2
    sget-object v0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;->HDR_PLUS:Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;

    goto :goto_0

    .line 1086
    :cond_3
    const v1, -0x41666666    # -0.3f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    .line 1088
    if-eqz v2, :cond_4

    cmpg-float v0, v3, v6

    if-gez v0, :cond_4

    .line 1089
    sget-object v0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;->HDR_PLUS:Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;

    goto :goto_0

    .line 1091
    :cond_4
    sget-object v0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;->NORMAL:Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;

    goto :goto_0

    .line 1096
    :cond_5
    sget-object v0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;->HDR_PLUS:Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;

    goto :goto_0
.end method
