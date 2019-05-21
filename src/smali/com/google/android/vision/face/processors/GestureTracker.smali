.class public abstract Lcom/google/android/vision/face/processors/GestureTracker;
.super Lcom/google/android/vision/face/processors/FaceTracker;
.source "GestureTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/vision/face/processors/GestureTracker$HistoryEntry;,
        Lcom/google/android/vision/face/processors/GestureTracker$Callback;
    }
.end annotation


# direct methods
.method protected static addHistoryEntry(Ljava/util/Deque;Lcom/google/android/vision/face/DetectionResults;Lcom/google/android/vision/face/processors/GestureTracker$HistoryEntry;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lcom/google/android/vision/face/processors/GestureTracker$HistoryEntry;",
            ">(",
            "Ljava/util/Deque",
            "<TE;>;",
            "Lcom/google/android/vision/face/DetectionResults;",
            "TE;J)V"
        }
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p1}, Lcom/google/android/vision/face/DetectionResults;->getTimestampMillis()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/google/android/vision/face/processors/GestureTracker$HistoryEntry;->mTimestampMillis:J

    .line 65
    invoke-interface {p0, p2}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 67
    iget-wide v0, p2, Lcom/google/android/vision/face/processors/GestureTracker$HistoryEntry;->mTimestampMillis:J

    sub-long v2, v0, p3

    .line 68
    :goto_0
    invoke-interface {p0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    invoke-interface {p0}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vision/face/processors/GestureTracker$HistoryEntry;

    .line 70
    iget-wide v0, v0, Lcom/google/android/vision/face/processors/GestureTracker$HistoryEntry;->mTimestampMillis:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 71
    invoke-interface {p0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    .line 76
    :cond_0
    return-void
.end method
