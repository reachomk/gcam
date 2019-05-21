.class public final Lcom/google/android/apps/camera/util/time/UtcClock;
.super Ljava/lang/Object;
.source "UtcClock.java"

# interfaces
.implements Lcom/google/android/apps/camera/util/time/MillisecondClock;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public final getTimeMs()J
    .locals 2

    .prologue
    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
