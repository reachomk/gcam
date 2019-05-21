.class public Lcom/android/camera/module/videointent/event/Events$EventVideoFileReady;
.super Ljava/lang/Object;
.source "Events.java"


# instance fields
.field private camcorderVideoFileOptional:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/base/Optional;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/camera/module/videointent/event/Events$EventVideoFileReady;->camcorderVideoFileOptional:Lcom/google/common/base/Optional;

    .line 63
    return-void
.end method


# virtual methods
.method public final getCamcorderVideoFileOptional()Lcom/google/common/base/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/camera/module/videointent/event/Events$EventVideoFileReady;->camcorderVideoFileOptional:Lcom/google/common/base/Optional;

    return-object v0
.end method
