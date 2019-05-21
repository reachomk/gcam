.class public final Lcom/google/android/apps/refocus/capture/Summary;
.super Ljava/lang/Object;
.source "Summary.java"


# instance fields
.field private badFrameWarning:Z

.field private hadLowLightWarning:Z

.field private hadMotionTooFastWarning:Z

.field private hadViewportWarning:Z

.field private lowLightWarning:Z

.field private motionTooFastError:Z

.field private motionTooFastWarning:Z

.field private motionTooSlowError:Z

.field private numBadFrames:I

.field private numFrames:I

.field private progressEstimator:Lcom/google/android/apps/refocus/capture/ProgressEstimator;

.field private sceneError:Z

.field private selection:Lcom/google/android/apps/refocus/capture/FrameSelection;

.field private timer:Lcom/google/android/apps/refocus/capture/Timer;

.field private tracker:Lcom/google/android/apps/refocus/capture/Tracker;

.field private trackingFailedError:Z

.field private userCanceled:Z

.field private viewportError:Z

.field private viewportWarning:Z


# direct methods
.method public constructor <init>(Lcom/google/android/apps/refocus/capture/Tracker;Lcom/google/android/apps/refocus/capture/Timer;Lcom/google/android/apps/refocus/capture/FrameSelection;Lcom/google/android/apps/refocus/capture/ProgressEstimator;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/google/android/apps/refocus/capture/Summary;->tracker:Lcom/google/android/apps/refocus/capture/Tracker;

    .line 49
    iput-object p2, p0, Lcom/google/android/apps/refocus/capture/Summary;->timer:Lcom/google/android/apps/refocus/capture/Timer;

    .line 50
    iput-object p3, p0, Lcom/google/android/apps/refocus/capture/Summary;->selection:Lcom/google/android/apps/refocus/capture/FrameSelection;

    .line 51
    iput-object p4, p0, Lcom/google/android/apps/refocus/capture/Summary;->progressEstimator:Lcom/google/android/apps/refocus/capture/ProgressEstimator;

    .line 1056
    iput-boolean v0, p0, Lcom/google/android/apps/refocus/capture/Summary;->motionTooFastWarning:Z

    .line 1057
    iput-boolean v0, p0, Lcom/google/android/apps/refocus/capture/Summary;->motionTooFastError:Z

    .line 1058
    iput-boolean v0, p0, Lcom/google/android/apps/refocus/capture/Summary;->motionTooSlowError:Z

    .line 1059
    iput-boolean v0, p0, Lcom/google/android/apps/refocus/capture/Summary;->trackingFailedError:Z

    .line 1060
    iput-boolean v0, p0, Lcom/google/android/apps/refocus/capture/Summary;->lowLightWarning:Z

    .line 1061
    iput-boolean v0, p0, Lcom/google/android/apps/refocus/capture/Summary;->sceneError:Z

    .line 1062
    iput-boolean v0, p0, Lcom/google/android/apps/refocus/capture/Summary;->badFrameWarning:Z

    .line 1063
    iput-boolean v0, p0, Lcom/google/android/apps/refocus/capture/Summary;->viewportWarning:Z

    .line 1064
    iput-boolean v0, p0, Lcom/google/android/apps/refocus/capture/Summary;->viewportError:Z

    .line 1065
    iput-boolean v0, p0, Lcom/google/android/apps/refocus/capture/Summary;->hadViewportWarning:Z

    .line 1066
    iput-boolean v0, p0, Lcom/google/android/apps/refocus/capture/Summary;->hadMotionTooFastWarning:Z

    .line 1067
    iput-boolean v0, p0, Lcom/google/android/apps/refocus/capture/Summary;->hadLowLightWarning:Z

    .line 1068
    iput v0, p0, Lcom/google/android/apps/refocus/capture/Summary;->numFrames:I

    .line 1069
    iput v0, p0, Lcom/google/android/apps/refocus/capture/Summary;->numBadFrames:I

    .line 1070
    iput-boolean v0, p0, Lcom/google/android/apps/refocus/capture/Summary;->userCanceled:Z

    .line 53
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/refocus/capture/Summary;->userCanceled:Z

    .line 134
    return-void
.end method

.method public final finish()V
    .locals 2

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/google/android/apps/refocus/capture/Summary;->hasErrors()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/apps/refocus/capture/Summary;->numBadFrames:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/apps/refocus/capture/Summary;->numFrames:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const v1, 0x3dcccccd    # 0.1f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/refocus/capture/Summary;->selection:Lcom/google/android/apps/refocus/capture/FrameSelection;

    .line 142
    invoke-virtual {v0}, Lcom/google/android/apps/refocus/capture/FrameSelection;->getFrameSelection()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_1

    .line 143
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/refocus/capture/Summary;->motionTooFastError:Z

    .line 145
    :cond_1
    return-void
.end method

.method public final getFrameValid()Z
    .locals 1

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/google/android/apps/refocus/capture/Summary;->badFrameWarning:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getLowLight()Z
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/google/android/apps/refocus/capture/Summary;->lowLightWarning:Z

    return v0
.end method

.method public final getMotionTooFastWarning()Z
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/google/android/apps/refocus/capture/Summary;->motionTooFastWarning:Z

    return v0
.end method

.method public final getViewportWarning()Z
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/google/android/apps/refocus/capture/Summary;->viewportWarning:Z

    return v0
.end method

.method public final hadLowLightWarning()Z
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/google/android/apps/refocus/capture/Summary;->hadLowLightWarning:Z

    return v0
.end method

.method public final hadMotionTooFastWarning()Z
    .locals 1

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/google/android/apps/refocus/capture/Summary;->hadMotionTooFastWarning:Z

    return v0
.end method

.method public final hadViewportWarning()Z
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/google/android/apps/refocus/capture/Summary;->hadViewportWarning:Z

    return v0
.end method

.method public final hadWarnings()Z
    .locals 1

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/google/android/apps/refocus/capture/Summary;->hadLowLightWarning:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/apps/refocus/capture/Summary;->hadMotionTooFastWarning:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/apps/refocus/capture/Summary;->hadViewportWarning:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasCancelError()Z
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/google/android/apps/refocus/capture/Summary;->userCanceled:Z

    return v0
.end method

.method public final hasErrors()Z
    .locals 1

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/google/android/apps/refocus/capture/Summary;->userCanceled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/apps/refocus/capture/Summary;->motionTooFastError:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/apps/refocus/capture/Summary;->motionTooSlowError:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/apps/refocus/capture/Summary;->trackingFailedError:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/apps/refocus/capture/Summary;->viewportError:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/apps/refocus/capture/Summary;->sceneError:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasMotionTooFastError()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/google/android/apps/refocus/capture/Summary;->motionTooFastError:Z

    return v0
.end method

.method public final hasMotionTooSlowError()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/google/android/apps/refocus/capture/Summary;->motionTooSlowError:Z

    return v0
.end method

.method public final hasSceneError()Z
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/google/android/apps/refocus/capture/Summary;->sceneError:Z

    return v0
.end method

.method public final hasTrackingFailedError()Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/google/android/apps/refocus/capture/Summary;->trackingFailedError:Z

    return v0
.end method

.method public final hasViewportError()Z
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/google/android/apps/refocus/capture/Summary;->viewportError:Z

    return v0
.end method

.method public final hasWarnings()Z
    .locals 1

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/google/android/apps/refocus/capture/Summary;->lowLightWarning:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/apps/refocus/capture/Summary;->motionTooFastWarning:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/apps/refocus/capture/Summary;->viewportWarning:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final update()V
    .locals 7

    .prologue
    const v6, 0x3e4ccccd    # 0.2f

    const v5, 0x3f19999a    # 0.6f

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 77
    iget-object v0, p0, Lcom/google/android/apps/refocus/capture/Summary;->tracker:Lcom/google/android/apps/refocus/capture/Tracker;

    invoke-virtual {v0}, Lcom/google/android/apps/refocus/capture/Tracker;->getStats()Lcom/google/android/apps/refocus/capture/TrackerStats;

    move-result-object v3

    .line 80
    iget v0, v3, Lcom/google/android/apps/refocus/capture/TrackerStats;->numInitialTracks:I

    const/16 v4, 0xf

    if-lt v0, v4, :cond_0

    iget v0, v3, Lcom/google/android/apps/refocus/capture/TrackerStats;->inactiveTracksRatio:F

    const v4, 0x3f4ccccd    # 0.8f

    cmpl-float v0, v0, v4

    if-lez v0, :cond_1

    .line 82
    :cond_0
    iput-boolean v2, p0, Lcom/google/android/apps/refocus/capture/Summary;->trackingFailedError:Z

    .line 86
    :cond_1
    iget v0, v3, Lcom/google/android/apps/refocus/capture/TrackerStats;->averageMotionRatio:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_2

    .line 88
    iput-boolean v2, p0, Lcom/google/android/apps/refocus/capture/Summary;->viewportError:Z

    .line 93
    :cond_2
    iget v0, v3, Lcom/google/android/apps/refocus/capture/TrackerStats;->inactiveTracksRatio:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_3

    iget v0, v3, Lcom/google/android/apps/refocus/capture/TrackerStats;->inactiveTracksBoundaryRatio:F

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_3

    .line 95
    iput-boolean v2, p0, Lcom/google/android/apps/refocus/capture/Summary;->sceneError:Z

    .line 98
    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/refocus/capture/Summary;->timer:Lcom/google/android/apps/refocus/capture/Timer;

    invoke-virtual {v0}, Lcom/google/android/apps/refocus/capture/Timer;->elapsedTime()F

    move-result v0

    const/high16 v4, 0x41000000    # 8.0f

    cmpl-float v0, v0, v4

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/apps/refocus/capture/Summary;->progressEstimator:Lcom/google/android/apps/refocus/capture/ProgressEstimator;

    .line 99
    invoke-virtual {v0}, Lcom/google/android/apps/refocus/capture/ProgressEstimator;->getExpectedCaptureTime()F

    move-result v0

    const/high16 v4, 0x41a00000    # 20.0f

    cmpl-float v0, v0, v4

    if-lez v0, :cond_4

    .line 100
    iput-boolean v2, p0, Lcom/google/android/apps/refocus/capture/Summary;->motionTooSlowError:Z

    .line 105
    :cond_4
    iget v0, v3, Lcom/google/android/apps/refocus/capture/TrackerStats;->averageMotionRatio:F

    const v4, 0x3dcccccd    # 0.1f

    cmpl-float v0, v0, v4

    if-gtz v0, :cond_5

    iget v0, v3, Lcom/google/android/apps/refocus/capture/TrackerStats;->inactiveTracksRatio:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_c

    iget v0, v3, Lcom/google/android/apps/refocus/capture/TrackerStats;->inactiveTracksBoundaryRatio:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_c

    :cond_5
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/apps/refocus/capture/Summary;->viewportWarning:Z

    .line 111
    iget v0, v3, Lcom/google/android/apps/refocus/capture/TrackerStats;->frameAverageMotionRatio:F

    const v4, 0x3c23d70a    # 0.01f

    cmpl-float v0, v0, v4

    if-lez v0, :cond_d

    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/apps/refocus/capture/Summary;->motionTooFastWarning:Z

    .line 114
    iget-boolean v0, p0, Lcom/google/android/apps/refocus/capture/Summary;->motionTooFastWarning:Z

    if-nez v0, :cond_6

    iget v0, v3, Lcom/google/android/apps/refocus/capture/TrackerStats;->frameInactiveTracksRatio:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_e

    :cond_6
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lcom/google/android/apps/refocus/capture/Summary;->badFrameWarning:Z

    .line 120
    iget v0, p0, Lcom/google/android/apps/refocus/capture/Summary;->numFrames:I

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/google/android/apps/refocus/capture/Summary;->timer:Lcom/google/android/apps/refocus/capture/Timer;

    invoke-virtual {v0}, Lcom/google/android/apps/refocus/capture/Timer;->frameRate()F

    move-result v0

    const/high16 v3, 0x41700000    # 15.0f

    cmpg-float v0, v0, v3

    if-gez v0, :cond_f

    move v0, v2

    :goto_3
    iput-boolean v0, p0, Lcom/google/android/apps/refocus/capture/Summary;->lowLightWarning:Z

    .line 122
    iget-boolean v0, p0, Lcom/google/android/apps/refocus/capture/Summary;->hadViewportWarning:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/google/android/apps/refocus/capture/Summary;->viewportWarning:Z

    if-eqz v0, :cond_10

    :cond_7
    move v0, v2

    :goto_4
    iput-boolean v0, p0, Lcom/google/android/apps/refocus/capture/Summary;->hadViewportWarning:Z

    .line 123
    iget-boolean v0, p0, Lcom/google/android/apps/refocus/capture/Summary;->hadMotionTooFastWarning:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/google/android/apps/refocus/capture/Summary;->motionTooFastWarning:Z

    if-eqz v0, :cond_11

    :cond_8
    move v0, v2

    :goto_5
    iput-boolean v0, p0, Lcom/google/android/apps/refocus/capture/Summary;->hadMotionTooFastWarning:Z

    .line 124
    iget-boolean v0, p0, Lcom/google/android/apps/refocus/capture/Summary;->hadLowLightWarning:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/google/android/apps/refocus/capture/Summary;->lowLightWarning:Z

    if-eqz v0, :cond_a

    :cond_9
    move v1, v2

    :cond_a
    iput-boolean v1, p0, Lcom/google/android/apps/refocus/capture/Summary;->hadLowLightWarning:Z

    .line 126
    iget-boolean v0, p0, Lcom/google/android/apps/refocus/capture/Summary;->badFrameWarning:Z

    if-eqz v0, :cond_b

    .line 127
    iget v0, p0, Lcom/google/android/apps/refocus/capture/Summary;->numBadFrames:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/refocus/capture/Summary;->numBadFrames:I

    .line 129
    :cond_b
    iget v0, p0, Lcom/google/android/apps/refocus/capture/Summary;->numFrames:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/refocus/capture/Summary;->numFrames:I

    .line 130
    return-void

    :cond_c
    move v0, v1

    .line 105
    goto :goto_0

    :cond_d
    move v0, v1

    .line 111
    goto :goto_1

    :cond_e
    move v0, v1

    .line 114
    goto :goto_2

    :cond_f
    move v0, v1

    .line 120
    goto :goto_3

    :cond_10
    move v0, v1

    .line 122
    goto :goto_4

    :cond_11
    move v0, v1

    .line 123
    goto :goto_5
.end method
