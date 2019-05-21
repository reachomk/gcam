.class final Lcom/android/camera/module/capture/CaptureModule$11;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Lcom/android/camera/one/OneCamera$PictureSaverCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/capture/CaptureModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/capture/CaptureModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/capture/CaptureModule;)V
    .locals 0

    .prologue
    .line 674
    iput-object p1, p0, Lcom/android/camera/module/capture/CaptureModule$11;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRemoteThumbnailAvailable([B)V
    .locals 2

    .prologue
    .line 677
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModule$11;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureModule;->access$1500(Lcom/android/camera/module/capture/CaptureModule;)Lcom/google/android/apps/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/capture/CaptureModule$11$1;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/module/capture/CaptureModule$11$1;-><init>(Lcom/android/camera/module/capture/CaptureModule$11;[B)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 684
    return-void
.end method
