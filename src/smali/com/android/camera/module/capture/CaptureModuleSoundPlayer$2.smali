.class final Lcom/android/camera/module/capture/CaptureModuleSoundPlayer$2;
.super Ljava/lang/Object;
.source "CaptureModuleSoundPlayer.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;


# direct methods
.method constructor <init>(Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer$2;->this$0:Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 165
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 154
    check-cast p1, Ljava/lang/Integer;

    .line 1157
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1158
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer$2;->this$0:Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->access$000(Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;)Lcom/android/camera/audio/SoundPlayer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/audio/SoundPlayer;->stopChannel(I)V

    .line 154
    :cond_0
    return-void
.end method
