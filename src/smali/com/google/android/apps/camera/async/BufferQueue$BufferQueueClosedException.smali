.class public final Lcom/google/android/apps/camera/async/BufferQueue$BufferQueueClosedException;
.super Lcom/google/android/apps/camera/async/ResourceUnavailableException;
.source "BufferQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/camera/async/BufferQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BufferQueueClosedException"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/android/apps/camera/async/ResourceUnavailableException;-><init>()V

    return-void
.end method
