.class public final Lcom/android/camera/one/v2/core/FrameTargets;
.super Ljava/lang/Object;
.source "FrameTargets.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/core/FrameTargets$NullFrameTarget;
    }
.end annotation


# static fields
.field private static final NULL_TARGET:Lcom/android/camera/one/v2/core/FrameTarget;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Lcom/android/camera/one/v2/core/FrameTargets$NullFrameTarget;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/camera/one/v2/core/FrameTargets$NullFrameTarget;-><init>(B)V

    sput-object v0, Lcom/android/camera/one/v2/core/FrameTargets;->NULL_TARGET:Lcom/android/camera/one/v2/core/FrameTarget;

    return-void
.end method

.method public static nullTarget()Lcom/android/camera/one/v2/core/FrameTarget;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/android/camera/one/v2/core/FrameTargets;->NULL_TARGET:Lcom/android/camera/one/v2/core/FrameTarget;

    return-object v0
.end method
