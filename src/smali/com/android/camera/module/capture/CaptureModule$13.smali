.class final Lcom/android/camera/module/capture/CaptureModule$13;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/capture/CaptureModule;->initializeAutoHdrPlusIndicator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/capture/CaptureModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/capture/CaptureModule;)V
    .locals 0

    .prologue
    .line 704
    iput-object p1, p0, Lcom/android/camera/module/capture/CaptureModule$13;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 707
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModule$13;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/module/capture/CaptureModule;->access$1702(Lcom/android/camera/module/capture/CaptureModule;Z)Z

    .line 708
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModule$13;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureModule;->access$1800(Lcom/android/camera/module/capture/CaptureModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModule$13;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    .line 710
    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureModule;->access$1800(Lcom/android/camera/module/capture/CaptureModule;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/one/OneCamera;->getOneCameraState$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55T7MSPA3C5MMASJ1ADQ62T357C______()Lcom/google/android/gms/internal/zzaih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaih;->getAutoFlashHdrPlusDecision()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    .line 711
    iget-object v1, p0, Lcom/android/camera/module/capture/CaptureModule$13;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;

    invoke-static {v1, v0}, Lcom/android/camera/module/capture/CaptureModule;->access$1900(Lcom/android/camera/module/capture/CaptureModule;Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecision;)V

    .line 713
    :cond_0
    return-void
.end method
