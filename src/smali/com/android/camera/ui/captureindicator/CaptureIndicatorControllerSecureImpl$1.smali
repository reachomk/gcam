.class final Lcom/android/camera/ui/captureindicator/CaptureIndicatorControllerSecureImpl$1;
.super Ljava/lang/Object;
.source "CaptureIndicatorControllerSecureImpl.java"

# interfaces
.implements Lcom/android/camera/widget/RoundedThumbnailView$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/captureindicator/CaptureIndicatorControllerSecureImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/captureindicator/CaptureIndicatorControllerSecureImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/captureindicator/CaptureIndicatorControllerSecureImpl;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/android/camera/ui/captureindicator/CaptureIndicatorControllerSecureImpl$1;->this$0:Lcom/android/camera/ui/captureindicator/CaptureIndicatorControllerSecureImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onHitStateFinished()V
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/camera/ui/captureindicator/CaptureIndicatorControllerSecureImpl$1;->this$0:Lcom/android/camera/ui/captureindicator/CaptureIndicatorControllerSecureImpl;

    invoke-static {v0}, Lcom/android/camera/ui/captureindicator/CaptureIndicatorControllerSecureImpl;->access$000(Lcom/android/camera/ui/captureindicator/CaptureIndicatorControllerSecureImpl;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    iget-object v0, p0, Lcom/android/camera/ui/captureindicator/CaptureIndicatorControllerSecureImpl$1;->this$0:Lcom/android/camera/ui/captureindicator/CaptureIndicatorControllerSecureImpl;

    invoke-static {v0}, Lcom/android/camera/ui/captureindicator/CaptureIndicatorControllerSecureImpl;->access$100(Lcom/android/camera/ui/captureindicator/CaptureIndicatorControllerSecureImpl;)Lcom/android/camera/util/activity/DeviceUnlocker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/util/activity/DeviceUnlocker;->unlockAndOpenFilmstrip()V

    .line 35
    :cond_0
    return-void

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/captureindicator/CaptureIndicatorControllerSecureImpl$1;->this$0:Lcom/android/camera/ui/captureindicator/CaptureIndicatorControllerSecureImpl;

    invoke-static {v0}, Lcom/android/camera/ui/captureindicator/CaptureIndicatorControllerSecureImpl;->access$200(Lcom/android/camera/ui/captureindicator/CaptureIndicatorControllerSecureImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/captureindicator/CaptureIndicatorController$Listener;

    .line 33
    invoke-interface {v0}, Lcom/android/camera/ui/captureindicator/CaptureIndicatorController$Listener;->onTap()V

    goto :goto_0
.end method
