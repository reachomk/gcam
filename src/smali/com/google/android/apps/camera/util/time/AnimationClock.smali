.class public final Lcom/google/android/apps/camera/util/time/AnimationClock;
.super Ljava/lang/Object;
.source "AnimationClock.java"

# interfaces
.implements Lcom/google/android/apps/camera/util/time/MillisecondClock;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getTimeMs()J
    .locals 2

    .prologue
    .line 21
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
