.class public Lcom/google/android/apps/camera/util/time/NanosecondClock;
.super Ljava/lang/Object;
.source "NanosecondClock.java"

# interfaces
.implements Lcom/google/android/apps/camera/util/time/MillisecondClock;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/camera/util/time/MillisecondClock;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2013
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTimeMs()J
    .locals 2

    .prologue
    .line 2018
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimeNs()J
    .locals 2

    .prologue
    .line 1024
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    return-wide v0
.end method
