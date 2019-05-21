.class public Lcom/google/android/apps/refocus/capture/TrackerStats;
.super Ljava/lang/Object;
.source "TrackerStats.java"


# instance fields
.field public averageMotionRatio:F

.field public frameAverageMotionRatio:F

.field public frameInactiveTracksBoundaryRatio:F

.field public frameInactiveTracksRatio:F

.field public inactiveTracksBoundaryRatio:F

.field public inactiveTracksRatio:F

.field public numActiveTracks:I

.field public numInactiveTracks:I

.field public numInactiveTracksBoundary:I

.field public numInitialTracks:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 23
    iput v1, p0, Lcom/google/android/apps/refocus/capture/TrackerStats;->numInitialTracks:I

    .line 24
    iput v1, p0, Lcom/google/android/apps/refocus/capture/TrackerStats;->numActiveTracks:I

    .line 25
    iput v1, p0, Lcom/google/android/apps/refocus/capture/TrackerStats;->numInactiveTracks:I

    .line 26
    iput v1, p0, Lcom/google/android/apps/refocus/capture/TrackerStats;->numInactiveTracksBoundary:I

    .line 27
    iput v0, p0, Lcom/google/android/apps/refocus/capture/TrackerStats;->inactiveTracksRatio:F

    .line 28
    iput v0, p0, Lcom/google/android/apps/refocus/capture/TrackerStats;->inactiveTracksBoundaryRatio:F

    .line 29
    iput v0, p0, Lcom/google/android/apps/refocus/capture/TrackerStats;->averageMotionRatio:F

    .line 30
    iput v0, p0, Lcom/google/android/apps/refocus/capture/TrackerStats;->frameAverageMotionRatio:F

    .line 31
    iput v0, p0, Lcom/google/android/apps/refocus/capture/TrackerStats;->frameInactiveTracksRatio:F

    .line 32
    iput v0, p0, Lcom/google/android/apps/refocus/capture/TrackerStats;->frameInactiveTracksBoundaryRatio:F

    .line 33
    return-void
.end method
