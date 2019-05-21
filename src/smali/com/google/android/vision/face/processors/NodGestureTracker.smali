.class public Lcom/google/android/vision/face/processors/NodGestureTracker;
.super Lcom/google/android/vision/face/processors/GestureTracker;
.source "NodGestureTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/vision/face/processors/NodGestureTracker$1;,
        Lcom/google/android/vision/face/processors/NodGestureTracker$NodEntry;
    }
.end annotation


# instance fields
.field private mBlocked:Z


# virtual methods
.method public final onFaceUpdate(Lcom/google/android/vision/face/DetectionResults;Lcom/google/android/vision/face/Face;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 85
    monitor-enter v0

    .line 86
    :try_start_0
    new-instance v0, Lcom/google/android/vision/face/processors/NodGestureTracker$NodEntry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/vision/face/processors/NodGestureTracker$NodEntry;-><init>(Lcom/google/android/vision/face/processors/NodGestureTracker;B)V

    .line 87
    invoke-virtual {p2}, Lcom/google/android/vision/face/Face;->getPosition()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v0, Lcom/google/android/vision/face/processors/NodGestureTracker$NodEntry;->y:F

    .line 88
    invoke-virtual {p2}, Lcom/google/android/vision/face/Face;->getHeight()F

    move-result v1

    iput v1, v0, Lcom/google/android/vision/face/processors/NodGestureTracker$NodEntry;->height:F

    .line 89
    const/4 v1, 0x0

    const-wide/16 v2, 0xbb8

    invoke-static {v1, p1, v0, v2, v3}, Lcom/google/android/vision/face/processors/NodGestureTracker;->addHistoryEntry(Ljava/util/Deque;Lcom/google/android/vision/face/DetectionResults;Lcom/google/android/vision/face/processors/GestureTracker$HistoryEntry;J)V

    .line 1103
    const v3, 0x7f7fffff    # Float.MAX_VALUE

    .line 1104
    const/4 v2, 0x1

    .line 1105
    const/4 v0, 0x0

    .line 1106
    const/4 v1, 0x0

    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v4, v0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vision/face/processors/NodGestureTracker$NodEntry;

    .line 1107
    iget v1, v0, Lcom/google/android/vision/face/processors/NodGestureTracker$NodEntry;->y:F

    .line 1108
    cmpl-float v6, v1, v2

    if-lez v6, :cond_0

    move v2, v3

    .line 1113
    :goto_1
    iget v0, v0, Lcom/google/android/vision/face/processors/NodGestureTracker$NodEntry;->height:F

    add-float/2addr v0, v4

    move v4, v0

    move v3, v2

    move v2, v1

    .line 1114
    goto :goto_0

    .line 1110
    :cond_0
    cmpg-float v6, v1, v3

    if-gez v6, :cond_4

    move v7, v2

    move v2, v1

    move v1, v7

    .line 1111
    goto :goto_1

    .line 1115
    :cond_1
    const/4 v0, 0x0

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v4, v0

    .line 1118
    iget-boolean v1, p0, Lcom/google/android/vision/face/processors/NodGestureTracker;->mBlocked:Z

    if-eqz v1, :cond_3

    .line 1119
    const v1, 0x3cf5c28f    # 0.03f

    mul-float/2addr v0, v1

    .line 1120
    sub-float v1, v2, v3

    cmpg-float v0, v1, v0

    if-gez v0, :cond_2

    .line 1122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/vision/face/processors/NodGestureTracker;->mBlocked:Z

    .line 1123
    const/4 v0, 0x0

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 94
    :cond_2
    :goto_2
    const/4 v0, 0x0

    monitor-exit v0

    return-void

    .line 1127
    :cond_3
    const v1, 0x3d4ccccd    # 0.05f

    mul-float/2addr v0, v1

    .line 1128
    sub-float v1, v2, v3

    cmpl-float v0, v1, v0

    if-lez v0, :cond_2

    .line 1130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vision/face/processors/NodGestureTracker;->mBlocked:Z

    goto :goto_2

    .line 94
    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    move v1, v2

    move v2, v3

    goto :goto_1
.end method
