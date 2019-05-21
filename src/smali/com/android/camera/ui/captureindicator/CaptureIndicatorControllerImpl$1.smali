.class final Lcom/android/camera/ui/captureindicator/CaptureIndicatorControllerImpl$1;
.super Ljava/lang/Object;
.source "CaptureIndicatorControllerImpl.java"

# interfaces
.implements Lcom/android/camera/widget/RoundedThumbnailView$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/captureindicator/CaptureIndicatorControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/captureindicator/CaptureIndicatorControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/captureindicator/CaptureIndicatorControllerImpl;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/camera/ui/captureindicator/CaptureIndicatorControllerImpl$1;->this$0:Lcom/android/camera/ui/captureindicator/CaptureIndicatorControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onHitStateFinished()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/camera/ui/captureindicator/CaptureIndicatorControllerImpl$1;->this$0:Lcom/android/camera/ui/captureindicator/CaptureIndicatorControllerImpl;

    invoke-static {v0}, Lcom/android/camera/ui/captureindicator/CaptureIndicatorControllerImpl;->access$000(Lcom/android/camera/ui/captureindicator/CaptureIndicatorControllerImpl;)Ljava/util/List;

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

    .line 43
    invoke-interface {v0}, Lcom/android/camera/ui/captureindicator/CaptureIndicatorController$Listener;->onTap()V

    goto :goto_0

    .line 45
    :cond_0
    return-void
.end method
