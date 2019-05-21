.class public abstract Lcom/google/android/libraries/smartburst/scoring/FrameDropListeningScorer;
.super Ljava/lang/Object;
.source "FrameDropListeningScorer.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/scoring/FrameScorer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/smartburst/scoring/FrameDropListeningScorer$Listener;
    }
.end annotation


# instance fields
.field protected final mAcceptedTimestamps:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mFrameDropper:Lcom/google/android/libraries/smartburst/selection/EventForwardingFrameDropper;

.field private final mListener:Lcom/google/android/libraries/smartburst/scoring/FrameDropListeningScorer$Listener;

.field protected final mRecentlyDroppedTimestamps:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected final mTimestampsLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/selection/EventForwardingFrameDropper;)V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/scoring/FrameDropListeningScorer;->mAcceptedTimestamps:Ljava/util/TreeSet;

    .line 32
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/scoring/FrameDropListeningScorer;->mRecentlyDroppedTimestamps:Ljava/util/TreeSet;

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/scoring/FrameDropListeningScorer;->mTimestampsLock:Ljava/lang/Object;

    .line 38
    new-instance v0, Lcom/google/android/libraries/smartburst/scoring/FrameDropListeningScorer$Listener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/libraries/smartburst/scoring/FrameDropListeningScorer$Listener;-><init>(Lcom/google/android/libraries/smartburst/scoring/FrameDropListeningScorer;B)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/scoring/FrameDropListeningScorer;->mListener:Lcom/google/android/libraries/smartburst/scoring/FrameDropListeningScorer$Listener;

    .line 46
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/scoring/FrameDropListeningScorer;->mFrameDropper:Lcom/google/android/libraries/smartburst/selection/EventForwardingFrameDropper;

    .line 48
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/scoring/FrameDropListeningScorer;->mFrameDropper:Lcom/google/android/libraries/smartburst/selection/EventForwardingFrameDropper;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/scoring/FrameDropListeningScorer;->mListener:Lcom/google/android/libraries/smartburst/scoring/FrameDropListeningScorer$Listener;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/selection/EventForwardingFrameDropper;->addFrameStoreEventListener(Lcom/google/android/libraries/smartburst/selection/FrameStoreListener;)V

    .line 49
    return-void
.end method


# virtual methods
.method public final onFrameDropped(J)V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public final onFrameInserted(J)V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public final reset()V
    .locals 2

    .prologue
    .line 66
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/scoring/FrameDropListeningScorer;->mTimestampsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/scoring/FrameDropListeningScorer;->mAcceptedTimestamps:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    .line 68
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/scoring/FrameDropListeningScorer;->mRecentlyDroppedTimestamps:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    .line 69
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
